<?php
	require_once('core/Connection.class.php');
	error_reporting(E_ALL & ~E_DEPRECATED);
//	require_once('core/Base.class.php');
?>
<html>
<head>
<title>Sign Up</title>
</head>
<body>
<?php	
	if (
	   (isset($_POST['slot'])) && 
	   (isset($_POST['study'])) && 
	   (isset($_POST['firstName'])) && 
	   (isset($_POST['lastName'])) && 
	   (isset($_POST['email'])) &&  
   	   (isset($_POST['english'])) && 
   	   (isset($_POST['sex'])) 
	   )
	{  	
		$slotID = $_POST['slot'];
				
		$connection = Connection::getInstance();			
		$cQuery = "SELECT count(*) as num FROM slots WHERE slotID='$slotID' AND available=1";
		$cResults = $connection->commit($cQuery);
		$cLine = mysql_fetch_array($cResults, MYSQL_ASSOC);
		$available = $cLine['num'];
		
		if ($available) 
		{
					
			//Blocking slot so that anyone else can take it
			$query = "UPDATE slots SET available=0 WHERE slotID='$slotID'";
			$results = $connection->commit($query);
		
		
			//required to retrieve time, date, and timestamp
//			$base = new Base();
			
			$comments = addslashes($_POST['comments']);
			$query = "SELECT day, date, time FROM slots WHERE slotID='$slotID'";
			$results = $connection->commit($query);
			$line = mysql_fetch_array($results, MYSQL_ASSOC);
			$slotDay = $line['day'];
			$slotDate = $line['date'];
			$slotTime = $line['time'];

			//
			$study = $_POST['study'];
						
			//ADDING PARTICIPANTS
			$firstName1 = $_POST['firstName'];
			$lastName1 = $_POST['lastName'];
			$email1 = $_POST['email'];
			$english1 = $_POST['english'];
			$sex1 = $_POST['sex'];
			$comments = addslashes($_POST['comments']);

            $base = new DateTime('now');
			$time = $base->format('H:i:s');
			$date = $base->format('Y-m-d');
			$timestamp = $base->getTimestamp();
		
			$query = "INSERT INTO recruits (study, firstName1, lastName1, email1, english1, sex1, comments, approved, slotID, date, time, timestamp) VALUES('$study','$firstName1','$lastName1','$email1','$english1','$sex1','$comments','1','$slotID','$date','$time','$timestamp')";

            $results = $connection->commit($query);
			$recruitsID = $connection->getLastID();
			
			//ADDING USERS		
			$username1 = strtolower($firstName1).$recruitsID;
			$passwd1 = sha1(strtolower($lastName1));
				
			$query = "INSERT INTO users (projectID, username, password, study) VALUES('$recruitsID','$username1','$passwd1', '2')";
			$results = $connection->commit($query);
			
			//SEND NOTIFICATION EMAIL TO RESEARCHER			
			$comments = stripslashes($comments);
								
			// Creating an email
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			$headers .= 'From: Jose Luis Varela <jose.varela@usach.cl>' . "\r\n";
	
			$subject = "Experimento de experiencia de usuario - Confirmación de tu participación";
			$message = "Hola!,<br/><br/>Muchas gracias por tu interés en participar en nuestro estudio. Los detalles de tu participación se encuentran a continuación.<br/><br/>";
			$message .= "<strong>Nombre:</strong> $firstName1 $lastName1<br/>";
			$message .= "<strong>Fecha:</strong> $slotDay, $slotDate, $slotTime<br/>";
			$message .= "<strong>Lugar:</strong> <a href=\"http://maps.rutgers.edu/display/building.cgi?NUM=3134\">CI</a>-222 on College Ave Campus<br/><br/>";			
			$message .= "Te contactaremos si es que existe algún problema en la inscripción. De lo contrario, te recordaremos previamente para que asistas al estudio.<br/><br/>";
			$message .= "Para cualquier consulta, no dudes en contactarnos a alguno de los siguientes correos. <a href=\"mailto:jose.varela@usach.cl?subject=USACH Estudio experiencia de usuario\">jose.varela@usach.cl</a>, <a href=\"mailto:gary.fuenzalida@usach.cl?subject=USACH Estudio experiencia de usuario\">gary.fuenzalida@usach.cl</a>, <a href=\"mailto:carlos.barrerap@usach.cl?subject=USACH Estudio experiencia de usuario\">carlos.barrerap@usach.cl</a>";
			$message .= "<br/><br/>Saludos,";
				
			mail ('jose.varela@usach.cl', $subject, $message, $headers);
			mail ($email1, $subject, $message, $headers);

			// Web Notification	
			echo "<table>\n";
			echo "<tr><td><br/><br/></td></tr>\n";
			echo "<tr><td align=left>Muchas gracias por tu interés en participar en nuestro estudio. Los detalles de tu participación se encuentran a continuación. Por favor, anota el día y hora de tu participación. Un correo será enviado con la confirmación. Si pasado una hora no has recibido  feel free to <a href=\"mailto:rgonzal@rutgers.edu?subject=Study inquiry\">contact us</a>.<hr/></td></tr>\n";
			echo "<tr><th>Información del participante</th></tr>\n";
			echo "<tr><td>Nombre: $firstName1</td></tr>\n";
			echo "<tr><td>Apellido: $lastName1</td></tr>\n";
			echo "<tr><td>Email: $email1</td></tr>\n";
			echo "<tr><td>Sexo: $sex1</td></tr>\n";
			echo "<tr><td><br/><strong>Fecha seleccionada:</strong> $slotDay, $slotDate, $slotTime</td></tr>\n";
			echo "<tr><td><br/><strong>Comentarios:</strong> $comments</td></tr>\n";						
			echo "<tr><td><hr/>Ya puedes cerrar esta ventana o seguir navegando. Te contactaremos pronto. Saludos!</td></tr>\n";
			echo "</table>\n";
		} // if ($available)
		else 
		{
			//echo "<tr><td>Looks like the slot that you selected just got taken! Please <a href=\"signup.php\">try again</a>.<br/>If you continue seeing this message, please <a href=\"mailto:rgonzal@rci.rutgers.edu?subject=Study inquiry\">contact us</a>.</td></tr>\n";
			echo "<p>Al parecer la fecha que has escogido ya ha sido tomada! Por favor, presiona el botón de abajo para regresar a la página de inscripción! <br/>Si continuas viendo este mensaje, por favor <a href=\"mailto:jose.varela@usach.cl?subject=USACH Estudio experiencia de usuario\">contáctanos</a>.</p>\n";
			echo "<input type=\"button\" value=\"Go Back\" onClick=\"javascript:history.go(-1)\" />";
		}
	} // if empty fields
	else
	{
		echo "<p>You forgot to complete one or more required values. Please click the button below to return to the sign up form</p>\n";
		echo "<input type=\"button\" value=\"Go Back\" onClick=\"javascript:history.go(-1)\" />";
	}
?>
<br/>
</body>
</html>

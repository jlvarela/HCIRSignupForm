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
			$headers .= 'From: Roberto Gonzalez-Ibanez <rgonzal@gmail.com>' . "\r\n";
	
			$subject = "Coagmento - Lab study participation confirmation";
			$message = "Hello,<br/><br/>Thank you for your interest in taking part in our lab study. The details of your participation are given below.<br/><br/>";
			$message .= "<strong>Your name:</strong> $firstName1 $lastName1<br/>";
			$message .= "<strong>Time:</strong> $slotDay, $slotDate, $slotTime<br/>";
			$message .= "<strong>Place:</strong> <a href=\"http://maps.rutgers.edu/display/building.cgi?NUM=3134\">CI</a>-222 on College Ave Campus<br/><br/>";			
			$message .= "We will contact you if there is any issue with your requested participation. Otherwise, we will see you soon at the time and place stated above. You will each receive class credit for your participation in this study. The three best performing teams or participant (depending upon the study) will win $25 gift cards per participant.<br/><br/>";
			$message .= "Feel free to contact us if you have any questions.<br/><br/>Sincerely,<br/>Roberto González-Ibáñez<br/>PhD Student<br/>SC&I, Rutgers University<br/>(949) 394-1448<br/>";
				
			mail ('rgonzal@rutgers.edu', $subject, $message, $headers);
			mail ($email1, $subject, $message, $headers);

			// Web Notification	
			echo "<table>\n";
			echo "<tr><td><br/><br/></td></tr>\n";
			echo "<tr><td align=left>Thank you for submitting your request for participating in this study. Please note down the day and the time for your participation as indicated below. An email is sent to you with this confirmation. If you do not receive this email in an hour or have any further question about this study, feel free to <a href=\"mailto:rgonzal@rutgers.edu?subject=Study inquiry\">contact us</a>.<hr/></td></tr>\n";
			echo "<tr><th>Participant information</th></tr>\n";
			echo "<tr><td>First name: $firstName1</td></tr>\n";
			echo "<tr><td>Last name: $lastName1</td></tr>\n";
			echo "<tr><td>Email: $email1</td></tr>\n";
			echo "<tr><td>Sex: $sex1</td></tr>\n";
			echo "<tr><td>Is English your native language: $english1</td></tr>\n";
			echo "<tr><td><br/><strong>Selected time slot:</strong> $slotDay, $slotDate, $slotTime</td></tr>\n";
			echo "<tr><td><br/><strong>Comments:</strong> $comments</td></tr>\n";						
			echo "<tr><td><hr/>You can close this window now or navigate away. We will concatct you soon!</td></tr>\n";
			echo "</table>\n";
		} // if ($available)
		else 
		{
			//echo "<tr><td>Looks like the slot that you selected just got taken! Please <a href=\"signup.php\">try again</a>.<br/>If you continue seeing this message, please <a href=\"mailto:rgonzal@rci.rutgers.edu?subject=Study inquiry\">contact us</a>.</td></tr>\n";
			echo "<p>Looks like the slot that you selected just got taken! Please click the button below to return to the sign up form<br/>If you continue seeing this message, please <a href=\"mailto:rgonzal@rutgers.edu?subject=Study inquiry\">contact us</a>.</p>\n";
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

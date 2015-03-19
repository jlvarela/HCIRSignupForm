<?php
    require_once('core/Connection.class.php');
    error_reporting(E_ALL & ~E_DEPRECATED);
    
    $STUDIES_ARRAY = array(1,2,3);
?>
<html>
<head>
	<title>
    	Lab Search Study Signup
    </title>
    <meta charset="UTF-8">
<script type="text/javascript">
	
	var selectedStudy = 0;
	var alertColor = "Red";
	var okColor = "White";
		
	function switchMenu(obj) 
	{
		var el = document.getElementById(obj);
		if ( el.style.display != "none" ) 
		{
			el.style.display = 'none';
		}
		else 
		{
			el.style.display = '';
		}
	}
	
	function selectStudy(num) 
	{
		if (num==1) 
		{
			selectedStudy = 2;
			document.getElementById("joseSlots").style.display = "block";
			document.getElementById("carlosSlots").style.display = "none";
			document.getElementById("garySlots").style.display = "none";
			document.getElementById("alertStudy").style.display = "none";
		}
		else if (num==2)
		{
			selectedStudy = 2;
			document.getElementById("joseSlots").style.display = "none";
			document.getElementById("carlosSlots").style.display = "block";
			document.getElementById("garySlots").style.display = "none";
			document.getElementById("alertStudy").style.display = "none";
		}
		else
		{
			selectedStudy = 2;
			document.getElementById("joseSlots").style.display = "none";
			document.getElementById("carlosSlots").style.display = "none";
			document.getElementById("garySlots").style.display = "block";
			document.getElementById("alertStudy").style.display = "none";
		}
	}
	
	function validateForm(form)
	{
		var isValid = 1;
		
		if (selectedStudy == 0)
		{
			document.getElementById("alertStudy").style.display = "block";
			isValid = 0;
		}
		else
		{
			document.getElementById("alertStudy").style.display = "none";
			if (selectedStudy == 2)
			{
				form.action = "signupSingle.php";
				isValid &= validateField(form.firstName);
				isValid &= validateField(form.lastName);
				isValid &= validateEmail(form.email,form.reEmail);
				isValid &= isRadioSelected(form.english, "english");
				isValid &= isRadioSelected(form.sex, "sex");
			}
				
			isValid &= isTimeSlotSelected(form.slot);			
		}

		if (isValid==1)
		{
			document.getElementById("alertForm").style.display = "none";
			return true;
		}
		else
		{
			document.getElementById("alertForm").style.display = "block";
			return false;
		}
	}
	
	function validateField(field)
	{	
		if (field.value == "") 
		{
			changeColor(field,alertColor);
			return false;
		}
		else
		{
			changeColor(field,okColor);
			return true;
		}
	}
	
	function isRadioSelected(radioButtons, obj) 
	{
		for (i=radioButtons.length-1; i > -1; i--) 
			if (radioButtons[i].checked) 
			{
				document.getElementById(obj).style.backgroundColor = okColor;
				return true;
			}

		document.getElementById(obj).style.backgroundColor = alertColor;

		return false;
	}
	
	function validateEmail(field1, field2)
	{
		if (field1.value != field2.value) 
		{
			changeColor(field1,alertColor);
			changeColor(field2,alertColor);
			return false;
		}
		else
			if (!isValidadEmail(field1.value))
			{
				changeColor(field1,alertColor);
				changeColor(field2,alertColor);
				return false;
			}
			else
			{
				changeColor(field1,okColor);
				changeColor(field2,okColor);
				return true;
			}
	}
	
	function changeColor(field,color) 
	{
		field.style.background = color; 
	}

	function isValidadEmail(email) 
	{ 
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(email);
	}
	
	function isTimeSlotSelected(radioButtons) 
	{
		console.log(radioButtons);
		if (radioButtons.type == "radio"){
			console.log("1");
			if (radioButtons.checked) 
			{
				document.getElementById("alertSlot").style.display = "none";
				return true;
			}
		}
		else{
			console.log("2");
			for (i=radioButtons.length-1; i > -1; i--) 
			{
				if (radioButtons[i].checked) 
				{
					document.getElementById("alertSlot").style.display = "none";
					return true;
				}

			}
		}

		document.getElementById("alertSlot").style.display = "block";
		
		return false;
	}

</script>
</head>
<body>
<div id="signupForm" align="center">
	<h3>Experimento de experiencia de usuario</h3>
	<form method="post" onsubmit="return validateForm(this)">
		<table class="body" width=90%>
			<tr>
			  <td colspan=2>
				<ul>
				<li>Este es un formulario para participar en alguno de los experimentos. <strong>Todos los campos son obligatorios</strong>.</li>
                     <li>El estudio tendrá lugar en: PONER PÁGINA EN GOOGLE <a href="http://maps.rutgers.edu/display/building.cgi?NUM=3134">CI</a>-222.</li>
				<li>Durante el estudio se te pedirá llenar un formulario y posiblemente una breve entrevista.</li>
				<li>Ninguna información personal tuya será revelada a terceros.</li>
				<li>Al participar estarás participando por el sorteo de una <strong> Gift Card con $15.000</strong>.</li>
				<li>El estudio tiene una duración aproximada de <strong>90 minutos</strong>.</li>
				<li>De la lista de estudios disponibles, <strong>solamente puedes participar en uno</strong></li>
				<li>Se requiere de un uso <strong>básico</strong> de computación.</li>
				<li>Debes tener sobre <strong>18 años</strong> para participar.</li>
				<li>Para participar debes escoger un experimento y seleccionar un horario.</li>
				<li>Una vez hayas completado el formulario, se te conactará en caso de haber algún problema con la información registrada. De lo contrario, se te recordará tu participación para el día que hayas seleccionado/li>
				<li>Este estudio está aprobado por el <strong>Comité de Ética de la Universidad de Santiago de Chile</strong></li>
				<li>Contáctanos a alguno de estos correos para mayor información <a href="mailto:jose.varela@usach.cl?subject=USACH Estudio experiencia de usuario">jose.varela@usach.cl</a>, <a href="mailto:gary.fuenzalida@usach.cl?subject=USACH Estudio experiencia de usuario">gary.fuenzalida@usach.cl</a>, <a href="mailto:carlos.barrerap@usach.cl?subject=USACH Estudio experiencia de usuario">carlos.barrerap@usach.cl</a></li>
				</ul>
				</td>
			</tr>
			<tr bgcolor="CDEB8B">				
				<td colspan=2><strong>Step-1: Selecciona el estudio</strong></td>
			</tr>
			<tr>
				<td colspan=2><div style="display: none; background: Red; text-align:center;" id="alertStudy"><strong>Debes seleccionar un estudio</strong></div></td>
			</tr>
			<tr>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="1" onClick="selectStudy(1);"/> Manipulación de objetos de información utilizando Gestos Corporales (Kinect) </strong>
					<ul>
						<li>Idealmente se requiere tener un bajo conocimiento utilizando dispositivos Kinect.</li>
					</ul>
				</td>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="2" onClick="selectStudy(2);"/> Carlos </strong>
					<ul>						
						<li>This study requires a <em>single participant</em>.</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="3" onClick="selectStudy(3);"/> Interacción con representaciones visuales para la exploración de resultados de búsqueda de información</strong>
					<ul>
						<li>Solamente requiere el uso de un computador con mouse y teclado.</li>
					</ul>
				</td>
			</tr>
			<tr align=center>
				<td align=center>
                     <table>
                         <tr><th colspan=2>Información de contacto</th></tr>
                         <tr><td>Nombres</td><td> <input type="text" id="s18" size=25 name="firstName" value="" /></td></tr>
                         <tr><td>Apellido</td><td> <input type="text" id="s19" size=25 name="lastName" value="" /></td></tr>
                         <tr><td>Email</td><td> <input type="text" id="s20" size=25 name="email" value="" /></td></tr>
                         <tr><td>Repetir Email:</td><td> <input type="text" size=25 id="s21" name="reEmail" value="" /></td></tr>
                         <tr style="display: none"><td>Is English your native language?</td><td><div id="english"><input type="radio" id="s22" name="english" value="0" />No - <input type="radio" id="s23" name="english" value="1" checked />Yes</div></td></tr>
                         <tr><td>Sexo</td><td><div id="sex"><input type="radio" id="s24" name="sex" value="F" />Mujer - <input type="radio" id="s25" name="sex" value="M" />Hombre</div></td></tr>
                         </table>
                </td>
			</tr>
			<tr bgcolor="CDEB8B">
				<td colspan=2><strong>Step-2: Selecciona la fecha en la que participarás</strong></td>
			</tr>
			<tr bgcolor="CDEB8B">
				<td colspan=2><div style="display: none; background: Red; text-align:center;" id="alertSlot"><strong>Debes escoger un horario. Haz click en las semanas para ver los horarios disponibles</strong></div></td>
			</tr>
			<tr>
				<td>
			<div id="joseSlots" style="display: none">
			<?php
			$query = "SELECT slotID, date, day, time, start, week FROM slots where available = 1 and study = 1";
			$connection = Connection::getInstance();
			$results = $connection->commit($query);
			$previousWeek = "";
			$open = 0;
			while ($line = mysql_fetch_array($results, MYSQL_ASSOC))
			{
				$slotID = $line['slotID'];
				$date = strtotime($line['date']);
				$day = $line['day'];
				$time = $line['time'];
				$week = $line['week'];
				$weekID = str_replace(" ","",$week);
				$open = 1;
				if ($previousWeek!=$weekID)
				{
					if ($previousWeek!="")
					{
			?>					
						</div>
				<?php
					}			
				?>
					<br />
					<div onclick="switchMenu('<?php echo "jose".$weekID; ?>');"><strong>- Semana <?php echo $week;?></strong> - Haz click aquí para ver los horarios disponibles</div>
					<div style="display: none" id="<?php echo "jose".$weekID; ?>" style="text-align:left;">												
				<?php
				}
				
				//echo "<input type=\"radio\" name=\"slot\" value=$slotID onclick=\"getSlots($slotID);\" />$day ".date('j', $date).": $time<br/>\n";	
				echo "<input type=\"radio\" name=\"slot\" value=\"$slotID\" />$day ".date('j', $date).": $time<br/>\n";
				$previousWeek=$weekID;	
			}
			
			if ($open==1)
			{
					echo "</div>";
					echo "<br />";
			}
			?>
			</div>
			<div id="carlosSlots" style="display: none">
			<?php
			$query = "SELECT slotID, date, day, time, start, week FROM slots where available = 1 and study=2";
			$connection = Connection::getInstance();
			$results = $connection->commit($query);
			$previousWeek = "";
			$open = 0;
			while ($line = mysql_fetch_array($results, MYSQL_ASSOC))
			{
				$slotID = $line['slotID'];
				$date = strtotime($line['date']);
				$day = $line['day'];
				$time = $line['time'];
				$week = $line['week'];
				$weekID = str_replace(" ","",$week);
				$open = 1;
				if ($previousWeek!=$weekID)
				{
					if ($previousWeek!="")
					{
			?>					
						</div>
				<?php
					}			
				?>
					<br />
					<div onclick="switchMenu('<?php echo "carlos".$weekID; ?>');"><strong>- Semana <?php echo $week;?></strong> - Haz click aquí para ver los horarios disponibles</div>
					<div style="display: none" id="<?php echo "carlos".$weekID; ?>" style="text-align:left;">												
				<?php
				}
				
				//echo "<input type=\"radio\" name=\"slot\" value=$slotID onclick=\"getSlots($slotID);\" />$day ".date('j', $date).": $time<br/>\n";	
				echo "<input type=\"radio\" name=\"slot\" value=\"$slotID\" />$day ".date('j', $date).": $time<br/>\n";
				$previousWeek=$weekID;	
			}
			
			if ($open==1)
			{
					echo "</div>";
					echo "<br />";
			}
			?>
			</div>
			<div id="garySlots" style="display: none">
			<?php
			$query = "SELECT slotID, date, day, time, start, week FROM slots where available = 1 and study=3";
			$connection = Connection::getInstance();
			$results = $connection->commit($query);
			$previousWeek = "";
			$open = 0;
			while ($line = mysql_fetch_array($results, MYSQL_ASSOC))
			{
				$slotID = $line['slotID'];
				$date = strtotime($line['date']);
				$day = $line['day'];
				$time = $line['time'];
				$week = $line['week'];
				$weekID = str_replace(" ","",$week);
				$open = 1;
				if ($previousWeek!=$weekID)
				{
					if ($previousWeek!="")
					{
			?>					
						</div>
				<?php
					}			
				?>
					<br />
					<div onclick="switchMenu('<?php echo "gary".$weekID; ?>');"><strong>- Semana <?php echo $week;?></strong> - Haz click aquí para ver los horarios disponibles</div>
					<div style="display: none" id="<?php echo "gary".$weekID; ?>" style="text-align:left;">												
				<?php
				}
				
				//echo "<input type=\"radio\" name=\"slot\" value=$slotID onclick=\"getSlots($slotID);\" />$day ".date('j', $date).": $time<br/>\n";	
				echo "<input type=\"radio\" name=\"slot\" value=\"$slotID\" />$day ".date('j', $date).": $time<br/>\n";
				$previousWeek=$weekID;	
			}
			
			if ($open==1)
			{
					echo "</div>";
					echo "<br />";
			}
			?>
			</div>
				</td>
			</tr>
			<tr>
				<td colspan=2 bgcolor="CDEB8B"><strong>Step-3: Leave any comments you have (optional)</strong></td>
			</tr>
			<tr>
				<td colspan=2 align=center>
					<br/>
					Comentarios (opcional): (ej., Si vas a llegar atrasado un par de minutos o si deseas comunicar otras consideraciones a los investigadores)
					<br/>
					<textarea name="comments" cols=80 rows=3></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" colspan=2>
					<div style="display: none; background: Red; text-align:center;" id="alertForm"><strong>Por favor completa todos los campos en rojos e inténtalo de nuevo.</strong></div
				</td>
			</tr>
			<tr>
				<td align="center" colspan=2>
					<input type="submit" value="Submit" />
				</td>
			</tr>
		</table>
    </form>
</div>
</body>
</html>
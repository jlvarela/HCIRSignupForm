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
		if (radioButtons instanceof Array){
			for (i=radioButtons.length-1; i > -1; i--) 
			{
				if (radioButtons[i].checked) 
				{
					document.getElementById("alertSlot").style.display = "none";
					return true;
				}

			}
		}
		else{
			if (radioButtons.checked) 
			{
				document.getElementById("alertSlot").style.display = "none";
				return true;
			}
		}

		document.getElementById("alertSlot").style.display = "block";
		
		return false;
	}

</script>
</head>
<body>
<div id="signupForm" align="center">
	<h3>Coagmento - Lab Search Study Signup</h3>
	<form method="post" onsubmit="return validateForm(this)">
		<table class="body" width=90%>
			<tr>
			  <td colspan=2>
				<ul>
				<li>This is a study signup form. <strong>All the fields are required (other than comments)</strong>.</li>
				<li>The study will take place in <a href="http://maps.rutgers.edu/display/building.cgi?NUM=3134">CI</a>-222 (Access trhoug Student Lounge), a computer lab in the School of Communication & Information on CAC.</li>
				<li>You will be asked to fill in some questionnaires and interviewed briefly during this study.</li>
				<li>No identifying information about you will be shared.</li>
				<li>You will get <strong>$10 in cash</strong> for participating.</li>
				<li>The study session will last <strong>60 minutes</strong>.</li>
				<li>You can participate only once in this study either you choose to sign up for the collaborative or the individual study</li>
				<li><strong>English</strong> must be your native languae.</li>
				<li><strong>Intermediate</strong> typing and online search skills are required.</li>
				<li>You must be between <strong>18 and 24 years old</strong>.</li>
				<li>To sign up, select one of the studies, and one time-slot.</li>
				<li>In addition to <strong>$10 in cash</strong>, the three best performing teams or participant (depending upon the study) will win the following prices <strong>per participant ($50 first place, $25 second place, $15 third place)</strong>.</li>
				<li>Once you complete this form, we will contact you if there is any issue with your requested participation. Otherwise, we will see you soon at the time and place you indicate above. <strong></strong></li>
				<li>This study has <strong>IRB approval</strong> with date 03/27/2012</li>
				<li><a href="mailto:rgonzal@rutgers.edu?subject=Study inquiry">Contact us</a> if you have any questions.</li>
				</ul>
				</td>
			</tr>
			<tr bgcolor="CDEB8B">				
				<td colspan=2><strong>Step-1: Select the study</strong></td>
			</tr>
			<tr>
				<td colspan=2><div style="display: none; background: Red; text-align:center;" id="alertStudy"><strong>You Must Select One Study</strong></div></td>
			</tr>
			<tr>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="1" onClick="selectStudy(1);"/> Jose </strong>
					<ul>
						<li>This study requires a <em>team of two</em>.</li>
						<li>Both of you should have worked on some project before (e.g., a class assignment).</li>
					</ul>
				</td>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="2" onClick="selectStudy(2);"/> Carlos </strong>
					<ul>						
						<li>This study requires a <em>single participant</em>.</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td width=50% valign="top"><strong><input type="radio" name="study" value="3" onClick="selectStudy(3);"/> Gary </strong>
					<ul>
						<li>This study requires a <em>team of two</em>.</li>
						<li>Both of you should have worked on some project before (e.g., a class assignment).</li>
					</ul>
				</td>
			</tr>
			<tr align=center>
				<td align=center>
                     <table>
                         <tr><th colspan=2>Participant details</th></tr>
                         <tr><td>First name</td><td> <input type="text" id="s18" size=25 name="firstName" value="" /></td></tr>
                         <tr><td>Last name</td><td> <input type="text" id="s19" size=25 name="lastName" value="" /></td></tr>
                         <tr><td>Email</td><td> <input type="text" id="s20" size=25 name="email" value="" /></td></tr>
                         <tr><td>Confirm Email:</td><td> <input type="text" size=25 id="s21" name="reEmail" value="" /></td></tr>
                         <tr><td>Is English your native language?</td><td><div id="english"><input type="radio" id="s22" name="english" value="0" />No - <input type="radio" id="s23" name="english" value="1" />Yes</div></td></tr>
                         <tr><td>Sex?</td><td><div id="sex"><input type="radio" id="s24" name="sex" value="F" />Female - <input type="radio" id="s25" name="sex" value="M" />Male</div></td></tr>
                         </table>
                </td>
			</tr>
			<tr bgcolor="CDEB8B">
				<td colspan=2><strong>Step-2: Select the time</strong></td>
			</tr>
			<tr bgcolor="CDEB8B">
				<td colspan=2><div style="display: none; background: Red; text-align:center;" id="alertSlot"><strong>You Must Select One Slot. Click in the Weeks Below to Find Available Slots</strong></div></td>
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
					<div onclick="switchMenu('<?php echo "jose".$weekID; ?>');"><strong>- Week of <?php echo $week;?></strong> - Click here to expand or collapse the time slots</div>
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
					<div onclick="switchMenu('<?php echo "carlos".$weekID; ?>');"><strong>- Week of <?php echo $week;?></strong> - Click here to expand or collapse the time slots</div>
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
					<div onclick="switchMenu('<?php echo "gary".$weekID; ?>');"><strong>- Week of <?php echo $week;?></strong> - Click here to expand or collapse the time slots</div>
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
					Comments (optional): (e.g., if you're going to be a few minutes late or if you have any other requests you want us to consider)
					<br/>
					<textarea name="comments" cols=80 rows=3></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" colspan=2>
					<div style="display: none; background: Red; text-align:center;" id="alertForm"><strong>Please Complete the Fields in Red and Try Again</strong></div
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
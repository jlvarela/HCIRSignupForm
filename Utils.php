<?php
	
	function printTable($name="", $week=1)
	{
		$DAYS = array('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado');
		$TIME_SLOTS = array('08:00-09:30', '09:40-11:10', '11:20-12:50', '13:50-15:20', '15:30-17:00', '17:10-18:40', '19:00-20:30', '20:30-22:00');
		echo "<table id=\"".$name."TimeTable\" >";
		printHeader();
		for($i=0; $i<count($TIME_SLOTS); $i++){
			echo "<tr>";
			echo "<td>".$TIME_SLOTS[$i]."</td>";
			for($j=0; $j<count($DAYS); $j++){
				echo "<td id=\"".$name."TimeCell".$week."-".($i+1)."-".($j+1)."\" />";
			}
			echo "</tr>";
		}
		echo "</table>";


	}

	function printHeader()
	{
		$DAYS = array('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado');
		echo "<tr>";
		echo "<th></th>";
		foreach($DAYS as $day)
		{
			echo "<th>".$day."</th>";
		}
		echo "</tr>";
	}

?>
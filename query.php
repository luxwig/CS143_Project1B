<!DOCTYPE html>
<html>
<body>

<h1> Movie Query </h1> 

<p>Type an SQL query in the following box:<br>
	<br>
	Example: SELECT * FROM Actor WHERE id=10;
</p>
 
<p>
<form action="query.php" method="GET">
	<textarea name="query" cols="60" rows="8"></textarea>
	<input type="submit" value="Submit">
</form> 
</p>


<?php
$query = $_GET["query"];
$db_connection = mysql_connect("localhost", "cs143", "");
if(!$db_connection) {
    $errmsg = mysql_error($db_connection);
    print "Connection failed: $errmsg <br>";
    exit(1);
}
mysql_select_db("CS143", $db_connection);

if (!empty($query))
{ 
	echo "<h3> Results from MySQL:</h3>";
	$result = mysql_query($query, $db_connection);
	$numField = mysql_num_fields($result);
	
	echo "<table border='1'>";	
	echo "<tr>";
	for($i = 0; $i < $nfield; $i++)
		{
			echo "<th>";
			echo mysql_field_name($result, $i);
			echo "</th>";			
		}
	echo "</tr>";

	while ($row = mysql_fetch_row($result))
	{
		echo "<tr>";
		for($i = 0; $i < $numField; $i++)
		{
		  	echo "<td>" . $row[$i] . "</td>";
		}
		echo "</tr>";

	}
	echo"</table>";

}

mysql_close($db_connection);
?>

</html>
</body>
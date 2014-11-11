<?PHP
$db = new mysqli('10.0.0.230', 'becbl', '0seHFUvGQnkS', 'becbl');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = <<<SQL
SELECT
	bans.ID,
	bans.GUID,
	bans.Time,
	bans.Message,
	bans.GroupID,
	bans.Reason,
	reasons.Reason,
	groups.GroupName
FROM
bans
INNER JOIN groups ON bans.GroupID = groups.ID
INNER JOIN reasons ON bans.Reason = reasons.ID

SQL;
if(!$result = $db->query($sql)){
	die('There was an error running the query [' . $db->error . ']');
}

while($row = $result->fetch_assoc()){
	$output = $row['GUID'] . " " . $row['Time'] . " " . $row['GroupName'] . " #" . $row['ID'] . " " . $row['Reason'] . " " . $row['Message'] . "\r\n";
	echo $output . "<BR />";
}

echo 
$result->free();




$newfile="bans.txt"; 
$file = fopen ($newfile, "w"); 
fwrite($file, $output); 
fclose ($file); 
?>
<br/>
<a href="bans.txt">Right click to view the list - left click to save the list</a>

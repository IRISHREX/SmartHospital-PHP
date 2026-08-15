<?php
$conn = new mysqli('localhost', 'root', '', 'shnodb');
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
$res = $conn->query("SHOW COLUMNS FROM income");
if ($res) {
    while ($row = $res->fetch_assoc()) echo $row["Field"] . "\n";
}
$conn->close();
?>

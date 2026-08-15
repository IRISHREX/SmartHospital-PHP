<?php
$conn = new mysqli('localhost', 'root', '', 'u832627210_max1');
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
$sql = "SHOW COLUMNS FROM referral_payment";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo $row["Field"] . "\n";
  }
}
$conn->close();
?>

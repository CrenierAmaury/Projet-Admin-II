<?php

$hostname="135.125.101.233:3306";
$user = "b2b";
$password = "user1234";
$database = "b2b_db";
$table = "todo_list";
?>

<html>
<head>
<title>Test PHP</title>
</head>
<body>
<p>Bonjour, bienvue dans B2B</p>

<form method="post" action="index.php">
  Name: <input type="text" name="name" required>
  <input type="submit" name="submit">
</form>


<?php
 try {
    $db = new PDO("mysql:host=$hostname;dbname=$database", $user, $password);
    echo "<h2>TODO</h2><ol>";
    foreach($db->query("SELECT content FROM $table") as $row) {
      echo "<li>" . $row['content'] . "</li>";
    }
    echo "</ol>";
  } catch (PDOException $e) {
      print "Error!: " . $e->getMessage() . "<br/>";
      die();
  }

 echo '</body>';
 echo '</html>';

 ?>

 <?php
 if ($_SERVER["REQUEST_METHOD"] == "POST") {//Check it is comming from a form

 	$name = filter_var($_POST["name"], FILTER_SANITIZE_STRING); //set PHP variables like this so we can use them anywhere in code below

 	if (empty($name)){
 		die("Please enter your name");
 	}

 	//Open a new connection to the MySQL server
 	//see https://www.sanwebe.com/2013/03/basic-php-mysqli-usage for more info
 	$mysqli = new mysqli($mysql_host, $mysql_username, $mysql_password, $mysql_database);

 	//Output any connection error
 	if ($mysqli->connect_error) {
 		die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
 	}

 	$statement = $mysqli->prepare('INSERT INTO todo_list (content) VALUES(?)'); //prepare sql insert query
 	//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
 	$statement->bind_param('s', $name); //bind values and execute insert query

 	if($statement->execute()){
 		print "success";
 	}else{
 		print $mysqli->error; //show mysql error if any
 	}
 }
 ?>

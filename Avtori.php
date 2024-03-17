<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TestBd</title>
</head>
<body>
<?php
$host='localhost';
$db='testbde';
$user='root';
$password='';
$log1="";
$pass1="";

$link=mysqli_connect($host,$user,$password,$db) or die("Ошибка".mysqli_error($link));
if(isset($_POST['Login']) && isset ($_POST['Parol'])){
    $Log = $_POST['Login'];
    $passwor = $_POST['Parol'];
    if(($Log=="")||($passwor==""))
			{
				echo("<h3 style='color:white;'>Вы не ввели логин или пароль!</h3>");
			}
            else{
$query = "select * from polzovatel where Login='$Log' and Parol='$passwor'";
$result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
		if($result) 
    while ($row = mysqli_fetch_assoc($result)) {
		
		$log1=$row['Login'];
		$pass1=$row['Parol'];
				
	}
	if(($log1!=$Log)&&($pass1!=$passwor))
	{
        header("Location: Reg.php");
	}
    else{
		    header("Location: Main.php");
		}
		
		}
    }
?>
<h1 align="center">Авторизация</h1>
<form method="POST">
    <p align=center>Логин:</p>
    <p align=center><input class="form-styling" type="text" name="Login" placeholder=""/></p>
    <p align=center>Пароль:</p>
    <p align=center><input class="form-styling" type="text" name="Parol" placeholder=""/></p>
    <p align=center><input type="submit"  value="Вход"></p>
</body>
</html>
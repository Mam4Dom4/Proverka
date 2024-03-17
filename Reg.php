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
$link=mysqli_connect($host,$user,$password,$db) or die("Ошибка".mysqli_error($link));
    if(isset ($_POST['Familia']) && isset ($_POST['Ima']) && isset($_POST['Otchestvo']) && isset ($_POST['Login']) && isset ($_POST['Parol'])){
    $Fam=$_POST['Familia'];
    $Ima=$_POST['Ima'];
    $Otchestvo=$_POST['Otchestvo'];
    $Log=$_POST['Login'];
    $password = $_POST['Parol'];
    if($Fam && $Ima && $Otchestvo && $Log && $password){
        $query = "insert into polzovatel(Familia,Ima,Otchestvo,Login,Parol) values('$Fam', '$Ima', '$Otchestvo','$Log', '$password')";
        $result = mysqli_query($link, $query) or die ("Ошибка".mysqli_error($link));
        }
        }
?>
<h1 align="center">Регистрация</h1>
<form method="POST">
    <p align=center>Фамилия:</p>
    <p align=center><input class="form-styling" type="text" name="Familia" placeholder=""/></p>
    <p align=center>Имя:</p>
    <p align=center><input class="form-styling" type="text" name="Ima" placeholder=""/></p>
    <p align=center>Отчество:</p>
    <p align=center><input class="form-styling" type="text" name="Otchestvo" placeholder=""/></p>
    <p align=center>Логин:</p>
    <p align=center><input class="form-styling" type="text" name="Login" placeholder=""/></p>
    <p align=center>Пароль:</p>
    <p align=center><input class="form-styling" type="text" name="Parol" placeholder=""/></p>
    <p align=center><input type="submit" value="Зарегистрироваться"></p>
</form>
</body>
</html>


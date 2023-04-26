<?php
$login = filter_var(trim($_POST['login']),
FILTER_SANITIZE_STRING);
$pass = filter_var(trim($_POST['pass']),
FILTER_SANITIZE_STRING);

require('db.php');
$result = $mysql->query("SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$pass'");
$user = $result->fetch_assoc();

if(count($user)==0)
{
	echo "Користувач не знайдений";
	exit();
}

setcookie('user', $user['username'], time() + 21600, "/");

$mysql -> close();
header('Location: index2.php');
?>
<?
include_once("./db.php");
include_once("./header.php");
if ($_SERVER['REQUEST_METHOD'] == 'POST') { //agar post medodi orqali otilsa ifni ichidagi funcsiyalar ishlidi agar get bilan otilsa else ishilidi yani foydalanuvchi accauntdan chiqib ketadi
    $login = $_POST["login"];
    $pass = $_POST["pass"];
    userAuth($login,$pass);
}else{
    session_destroy();
}

header("Location: /home");
?>
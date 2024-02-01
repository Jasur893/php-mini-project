<?
include_once('./db.php');//db.php fayliga ulanadi
$login = $_POST['login'];
$pass = $_POST['pass'];
$name = $_POST['name'];
$gender = $_POST['gender'];
$imgName = md5($login);
$imgExt = pathinfo($_FILES["photo"]["name"], PATHINFO_EXTENSION);// rasmni kengaytmasni olish 
$imgPath = $_FILES['photo']['tmp_name'];// rasmni vaqtinchali yoli yana inputga yuklangan rasm vaqtinch tmp_name faylga kelib tushadi
$gander = $_POST['gender']['value'] == 'm' ? "../img/avatar/defoult.webp" :"../img/avatar/woman.jpg";
$photo =  $_FILES["photo"]['name'] == '' ? $gander : "../img/avatar/$imgName.$imgExt";//foydalanuvchi rasm qoymasa saytni ozi defolt rasn qoyadi
move_uploaded_file($imgPath,  "../img/avatar/$imgName.$imgExt"); // yuklangan rasmni qayerdan olib qanday nom bilan qoyish uchun
userReg($login,$pass ,$name,$photo, $gender) ? header("Location: /?page=registration&dublicate=true")/*erorrInfo()ga true kelsa bu <- ishlaydi  */ : header("Location: /?page=login")/*erorrInfo()ga false kelsa bu <- ishlayfi  */ ;
// /* inputlarga ulaanib unichiga yozilgan malumotlatni userReg() funcsiyasiga jonatadi va userReg()kegan malumotni malumotlar bazasiga joylashtiradi */header("Location: /login");//foydalanuvchi registratsiyadan otgandan keyn login stranitsiyasiga otib ketadi  header() funcsiyasi ubu joyga otqazib yuboradi

?>
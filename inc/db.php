<?
// malumotlar bazasiga ulanish uchun bu funcsiya
 function pdo(){
   $dbname = "php"; // malumotlar bazasni nomi 
   $dbuser = 'root';// phpMyAdmin saytga kirish uchun login 
   $dbpass = ''; // phpMyAdmin saytga kirish uchun parol parolda hech narsa yoq
   $dbhost = 'localhost';//phpMyAdmin saytga kirsh uchun yol 
   return new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);  // PDO malumotlar bazasiga kirsh uchun netda topdim
 }

// ulanga malumotlar bazasiga malumot kirgizish uchun funcsiya
function userReg($login, $pass , $name , $photo, $gender){
  $pdo = pdo(); // pdo() funcsiyasini ozgavuchanga olib ishlatiladi
  $pass = password_hash($pass , CRYPT_BLOWFISH);//foydalanuvchi kiritgan parolni shifrlab beradi $2y$10$2sR0nPtm7Ie. shu korinishda
  $name = strip_tags($name); // HTML taglarni olib tashidi
  $login = strip_tags($login);
  $query = "INSERT INTO users(login, pass, name, photo, gender) VALUES (?,?,?,?,?)"; // sorov bu tablitsiyamizga kiritilgan malumotlarni joylashtrish uchun
  $delivr = $pdo -> prepare($query); // tablitsiyaga kirgin va uni jonatish uchun tayorlash degan manoni anglaadi
  $result = $delivr -> execute([$login, $pass,  $name,  $photo, $gender]); // malumot jonatish yani foydalanuvchini logini nomi parolini malumotlar bazasiga jonatadi
  return $delivr->errorInfo()[0] == '23000'; // malumotlar bazasida biz kiritgan malumot kiritsak true qaytaradi bu yozlishini sababi malumitlar bazasida biz loginni boshqa foydalanuvchi qaytadan yana krilmasligi uchun
}  
function userAuth($login,$pass){ //registerdan keyin saytga krish uchun login qismi
  $pdo = pdo(); // pdo() funcsiyasini ozgavuchanga olib ishlatiladi
  session_start();// $_SESSION ni ishlatish uchun busiz ishlamaydi
  $query = "SELECT * FROM users WHERE login=?"; // sorov bu tablitsiyamizga kiritilgan logini chaqirish uchun login kelsa qolganlari ham keladi
  $delivr = $pdo -> prepare($query); // tablitsiyaga kirgin va uni jonatish uchun tayorlash degan manoni anglaadi
  $result = $delivr ->execute([$login]);//malumotlarni jonatadi
  $user =  $delivr ->fetch(PDO::FETCH_ASSOC); // tablitsiyadan loginni olib keladi yana tablitsiyadan malumotlarni olish uchun ishlatiladi
  // password_verify($pass , $user['pass'])heshlangan parolni foydalanuvchi kiritgsn parol bn taqoslaydi
  if (password_verify($pass , $user['pass']) and $login == $user["login"]) { // agar heshlangan parol foydalanuvchi kirgan parol bn login teng kelsa true bolib foydalanuvchi kritgan ismni oladi
      $_SESSION["name"] = $user["name"]; // funksiyani ichidan chiqib keta olada session
      $_SESSION["login"] = $user["login"];
      $_SESSION["photo"] = $user["photo"];
  }

}

?>
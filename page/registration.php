<main class="main">
    <section class="head">
        <h2 class="head__title">Регистрация в системе</h2>
        <p class="head__date"><?echo date("d M Y год")?></p>
    </section>
    <form action="./inc/userReg.php" class="form" method="post" enctype="multipart/form-data">
    <? if ($_GET["dublicate"]):?>
            <p class="dublicate-error" style="color:red; text-transform:uppercase;">bu login ishlatilgan</p> <!-- bu soz kiritilgan login malumotlar bazasida bolsa chiqadi -->
        <? endif;?>
      
        <label class="form__label">
            <span class="form__text">Логин</span>
            <input type="text" class="form__input" name="login" autocomplete="off">
        </label>
        <label class="form__label">
            <span class="form__text">Имя</span>
            <input type="text" class="form__input" name="name" autocomplete="off">
        </label>
        <label class="form__label">
            <span class="form__text">Фото</span>
            <input type="file" class="form__input" name="photo" autocomplete="off">
        </label>
        <label class="form__label">
            <span class="form__text">Пароль</span>
            <input type="password" class="form__input" name="pass">
            <button type="button" class="form__eye"><i class="far fa-eye-slash"></i></button>
        </label>
        <label class="form__label">
            <span class="form__text">Повторите пароль</span>
            <input type="password" class="form__input" name="confirmpass">
            <button type="button" class="form__eye"><i class="far fa-eye-slash"></i></button>
        </label>
        <label class="form__label">
            <label for="male"><input type="radio"  name="gender" value='m'>Male</label>
            <label for="famale"><input type="radio"  name="gender" value='f'>Female</label>
   
        </label>
        <span class="form__error">* Пароли не совподают</span>
        <button class="form__btn" disabled>Зарегистрироваться</button>
    </form>
</main>
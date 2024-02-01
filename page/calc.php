<main class="main">
    <section class="head">
        <h2 class="head__title">Таблица умножения</h2>
        <p class="head__date"><?echo date("d M Y год")?></p>
    </section>
    <form class="form form-calc">
        <label class="form__label">
            <span class="form__text">Число 1</span>
            <input type="text" class="form__input" name="one" data-type="number">
        </label>
        <div class="form__mySelect">
            <div class="form__select">
                <div class="form__select-name">Выбирите знак</div>
                <div class="form__select-option">
                    
                </div>
            </div>
            <select name="symbol">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </div>
        <label class="form__label">
            <span class="form__text">Число 2</span>
            <input type="text" class="form__input" name="two" data-type="number"> 
        </label>
        <button class="form__btn">Посчитать</button>
      
    </form>  
    <h4 class='result' style='margin-top: 20px'></h4>
</main>

<script>
    const form = document.querySelector('.form-calc');

    form.addEventListener('submit' , e => {
        e.preventDefault()
        fetch('../inc/formCalc.php' , {
            method: 'POST',
            body: new FormData(form)
        })
        .then(data=>data.text())
        .then(info=>document.querySelector('.result').innerHTML=info)
    })
</script>
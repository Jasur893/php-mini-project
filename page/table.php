<main class="main">
    <section class="head">
        <h2 class="head__title">Таблица умножения</h2>
        <p class="head__date"><?echo date("d M Y год")?></p>
    </section>
    <form class="form form-data">
        <label class="form__label">
            <span class="form__text">Количество колонок</span>
            <input type="text" class="form__input" name="col" id="clear1">
        </label>
        <label class="form__label">
            <span class="form__text">Количество строк</span>
            <input type="text" class="form__input" name="row" id="clear2">
        </label>
        <button class="form__btn">Отправить</button>
    </form>
    <div class="table">

    </div>
</main>
<script>
    const form = document.querySelector('.form-data');
    
    form.addEventListener('submit', (e)=>{ 

        e.preventDefault()
        fetch('../inc/tableCalc.php', {
            method: 'POST',
            body: new FormData(form),
        })
        .then(data=>data.text())
        .then(info=>document.querySelector('.table').innerHTML = info)
        document.getElementById('clear1').value = '';
        document.getElementById('clear2').value = '';
        
    })
</script>

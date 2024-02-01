<aside class="menu">
    <div class="menu__reviews">
        <span class="menu__reviews_span" data-href="https://proweb.uz/">
            <i class="far fa-chevron-right"></i>
        </span>
        <span class="menu__reviews_text">Оставить озыв</span>
    </div>

    <?
        $pages = [
            'home'    => ['name' => 'Главная',          'icon'=> 'fal fa-home',           'user'=> false],
            'contact' => ['name' => 'Контакты',         'icon'=> 'fal fa-address-book',   'user'=> false],
            'table'   => ['name' => 'Таблица умножения','icon'=> 'fas fa-times',          'user'=> false],
            'calc'    => ['name' => 'Калькулятор',      'icon'=> 'fas fa-calculator-alt', 'user'=> false],
            'slide'   => ['name' => 'Слайдер',          'icon'=> 'far fa-presentation',   'user'=> false],
            'guest'   => ['name' => 'Гостевая книга',   'icon'=> 'fal fa-books',          'user'=> true],
            'test'    => ['name' => 'Тест',             'icon'=> 'fal fa-vial',           'user'=> true],
        ]
    ?>

    <ul class="menu__list">
        <?= menu($pages)?>
    </ul>
</aside>

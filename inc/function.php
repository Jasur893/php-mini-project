<?

  $dirArr = scandir('./page/');

  $page = $_GET['page'] ? $_GET['page'] : 'home';

  $file = in_array("$_GET[page].php", $dirArr) === false && $page !== 'home' ? '404' : $page;

  ?><pre style="color: white;"><?// var_dump($dirArr);?></pre><?

  function menu($pageArr){
    $link = '';

    foreach ($pageArr as $key => $value) {
      if ($key === $_GET['page'] || !$_GET['page'] && $key === 'home') {
        $active = 'active';
      }else{
        $active = '';
      }

      if ($value['user'] && $_SESSION['login']) {
        $link .= "<li><a href='/$key' class='menu__list-link $active'><i class='$value[icon]'></i>$value[name]</a></li>";
      } elseif (!$value['user']) {
        $link .= "<li><a href='/$key' class='menu__list-link $active'><i class='$value[icon]'></i>$value[name]</a></li>";
      }
    }

    return $link;

  }



?>

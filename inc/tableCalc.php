<?

  $col = $_POST['col'];
  $row = $_POST['row'];
  $result = "";

  for ($i=1; $i <= $col; $i++) {
    $result .= "<div class=\"table__row\">";
    for ($j=1; $j <= $row; $j++) {
      $result .= "<div class=\"table__col\">". $i* $j."</div>";
    }

    $result .="</div>";
  }

  echo $result;

?>

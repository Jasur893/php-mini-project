<?
$num1 = $_POST['one'];
$symbol = $_POST['symbol'];
$num2 = $_POST['two'];

if ($symbol === '+'):
    echo ($num1);
    echo ($symbol);
    echo ($num2);
    echo ('=');
    echo ($num1 + $num2);
elseif($symbol === '-'):
    echo ($num1);
    echo ($symbol);
    echo ($num2);
    echo ('=');
    echo ($num1 - $num2);
elseif($symbol === '*'):
    echo ($num1);
    echo ($symbol);
    echo ($num2);
    echo ('=');
    echo ($num1 * $num2);
elseif($symbol === '/'):
    echo ($num1);
    echo ($symbol);
    echo ($num2);
    echo ('=');
    echo ($num1 / $num2);
endif;


?>
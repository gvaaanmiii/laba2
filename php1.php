<?php
echo "Введите строку: ";
$handle = fopen("php://stdin", "r");
$input = trim(fgets($handle));
$vowels = ['a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y'];

$vowelCount = 0;
$consonantCount = 0;

for ($i = 0; $i < strlen($input); $i++) {
    $char = $input[$i];
    if (ctype_alpha($char)) {
        if (in_array($char, $vowels)) {
            $vowelCount++; 
        } else {
            $consonantCount++; 
        }
    }
}

if ($vowelCount > $consonantCount) {
    echo "Да\n";
} elseif ($vowelCount < $consonantCount) {
    echo "Нет\n";
} else {
    echo "Одинаково\n";
}
?>

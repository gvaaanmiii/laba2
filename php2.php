<?php
echo "Введите строку из строчных английских букв: ";
$handle = fopen("php://stdin", "r");
$sentence = trim(fgets($handle));
$letters = [];
for ($i = 0; $i < strlen($sentence); $i++) {
    $char = $sentence[$i];
    if ($char >= 'a' && $char <= 'z') {
        $letters[$char] = true; 
    }
}
if (count($letters) === 26) {
    echo "true\n"; 
} else {
    echo "false\n"; 
}
?>


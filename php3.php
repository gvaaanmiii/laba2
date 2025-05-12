<?php
function isValidTime($num) {
    for ($i = 1; $i < strlen($num); $i++) {
        $hours = substr($num, 0, $i);
        $minutes = substr($num, $i);
        $hoursInt = (int)$hours;
        $minutesInt = (int)$minutes;
        if ($hoursInt >= 0 && $hoursInt <= 23 && $minutesInt >= 0 && $minutesInt <= 59) {
            return "YES";
        }
    }
    return "NO";
}
echo "";
$handle = fopen("php://stdin", "r");
$input = trim(fgets($handle));
$numbers = explode(" ", $input);
foreach ($numbers as $num) {
    echo isValidTime($num) . " ";
}

?>



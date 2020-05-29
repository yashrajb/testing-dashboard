<?php
$mysqli = new mysqli('localhost', 'root', '', 'testing_dashboard');
$myObj = new \stdClass();
$query = "SELECT * FROM testing order by date desc ";
$myObj->data = array();
$myObj->lastSevenDays = array();
$myObj->mostFailedTest = array();
$from = array_key_exists("from", $_GET);
$to = array_key_exists("to", $_GET);
$test = array_key_exists("test", $_GET);
if ($from && $to == 0) {
    $query = $query . ' where date="' . date('Y/m/d', strtotime($_GET["from"])) . '"';
}

if ($from == 1 && $to == 1) {
    $from = date("Y/m/d", strtotime($_GET["from"]));
    $to = date("Y/m/d", strtotime($_GET["to"]));
    $query = $query . ' where date BETWEEN "' . $from . '"' . ' AND "' . $to . '"';
}
if(!$test){
    $query = $query.' LIMIT 7';
}
if ($test) {
    $limit = $_GET["test"];
    $query = $query . ' LIMIT ' . $limit;
}

$result = $mysqli->query($query);
if ($result) {

    while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myObj->data[] = $row;
    }

}
$today = date('Y/m/d');
$lastSevenDays = date('Y/m/d', strtotime('-7 days'));
$query2 = 'select * from testing where date between "' . $lastSevenDays . '"' . ' AND "' . $today . '"';
$result2 = $mysqli->query($query2);
if ($result2) {
    while ($row2 = $result2->fetch_array(MYSQLI_ASSOC)) {
        $myObj->lastSevenDays[] = $row2;
    }
}
$query3 = 'SELECT count(*) as count,url FROM `testing` where results = "not ran" group by url';
$result3 = $mysqli->query($query3);
if ($result3) {
    $arr = array();
    $i = 0;
    while ($row3 = $result3->fetch_array(MYSQLI_ASSOC)) {
        $arr[] = $row3;
    }
    $max = $arr[0];
    $i = 0;
    $j = 1;
    while($j < count($arr)){
        $isItMax = maxAge($arr[$i]["count"],$arr[$j]["count"]);
        if($isItMax){
            $max = $arr[$i];
        }
        ++$i;
        ++$j;
    }
    $myObj->mostFailedTest = $max;
    
}

function maxAge($age1,$age2){
    return $age1 > $age2;
}
echo json_encode($myObj);

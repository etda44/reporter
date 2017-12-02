<?php
//include_once
// $a = str_replace('.php', '.tpl', basename($_SERVER['PHP_SELF']));
// die($a);
require_once 'header.php';

$page_title = '頁首';
// 程式中止寫法：
// 方法1
// var_dump($_GET['color']);
// exit;

// 方法2
// die(var_dump($_GET['color']));

// var_dump($_SESSION);
// die();

// die(var_dump($_SESSION));

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;

switch ($op) {

    default:
        if ($sn) {
            show_article($sn);
            $op = 'show_article';
        } else {
            list_article();
            $op = 'list_article';
        }
        break;
}

require_once 'footer.php';

//讀出所有文章
function list_article()
{
    global $db, $smarty;
    $sql    = "SELECT * FROM `article` ORDER BY 'update_time' DESC";
    $result = $db->query($sql) or die($db->error);
    $all    = [];
    $i      = 0;
    while ($data = $result->fetch_assoc()) {
        $all[]              = $data;
        $all[$i]['summary'] = mb_substr(strip_tags($data['content']), 0, 90);
        $i++;

    }
    // die(var_export($all));
    $smarty->assign('all', $all);

}

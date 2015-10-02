<?php
date_default_timezone_set("PRC");

require('./mock/libs/Smarty.class.php');

$smarty = new Smarty();
$smarty->left_delimiter = "{%";
$smarty->right_delimiter = "%}";

$homeData = json_decode(
    file_get_contents('./mock/homeData.json'),
    true
);

$smarty->assign('tplData', array(
    'env'=>array(
        'isCommit'=>false,
        'msgId'=>38751,
        'phone'=>1381739498,
        'address'=>'北京市海淀区上地十街'
    ),
    "path"=>"/src",
    'paramData'=>array(
        'module'=>'home',
        'sid'=>123,
        'pid'=>3333
    ),
    'homeData'=>$homeData,
    'region'=> '新加坡'
));


$smarty->display('index.html');

<?php
function display_tb($tab){
    echo "<pre>";
    print_r($tab);
    echo "</pre>";
}
/*$chemin_rep="/home/touremarc/Documents/metronic_template_php/pages";
$files = scandir($chemin_rep);
$files= array_diff($files,array(".",".."));
$files = array_values($files);
//display_tb($files);
//echo $files[5]."<br>";

foreach ($files as $f){
$ext = explode(".",$f);
if (end($ext) === "php"){
    $content=file_get_contents($chemin_rep."/".$f);
    $content= substr($content,strpos($content,"<!--begin::Content-->"),( ( strpos($content,"<!--end::Content-->") - strpos($content,"<!--begin::Content-->") )+ 23));
//chmod($chemin_rep."/".$files[5],0766);
    file_put_contents($chemin_rep."/".$f,$content);
    echo "ok";
}else{
    echo "pas un fichier php";
}
}*/

function chemin ($ch){
    return "public/".$ch;
}
function chemin_1 ($ch){
    return "localhost/metronic_template_php/pages/".$ch;
}

    require "pages/layout/header.php";
    $p= isset($_GET["page"])?$_GET["page"]:"home";
    $pages="pages/".$p.".php";
    if (file_exists($pages)){
        require $pages;
    }else{
        require "pages/home.php";
    }
    require "pages/layout/footer.php";



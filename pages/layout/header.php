<!DOCTYPE html>
<?= '
<html lang="en" >'
?>
<!--begin::Head-->
<head>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&amp;l='+l:'';j.async=true;j.src= 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-5FS8GGP');</script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8" />
    <title>Silico | Project</title>
    <meta name="description" content="Metronic admin dashboard " />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!--    <link rel="canonical" href="https://keenthemes.com/metronic" />-->
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <!--end::Fonts-->
    <!--begin::Page Vendors Styles(used by this page)-->
    <link href="<?= chemin("css/fullcalendar.bundle.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("css/datatables.bundle.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("css/wizard-1.css")?>" rel="stylesheet" type="text/css" />

    <!--end::Page Vendors Styles-->
    <!--begin::Global Theme Styles(used by all pages)-->
    <link href="<?= chemin("css/plugins.bundle.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("css/prismjs.bundle.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("css/style.bundle.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("fontawesome/css/all.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?= chemin("css/login-1.css")?>" rel="stylesheet" type="text/css" />

    <link href="<?=chemin("fonts/ki.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?=chemin("public/css/flaticon_font/flaticon.css")?>" rel="stylesheet" type="text/css" />
    <!--end::Global Theme Styles-->
    <!--begin::Layout Themes(used by all pages)-->
    <link href="<?=chemin("css/light.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?=chemin("css/light1.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?=chemin("css/dark.css")?>" rel="stylesheet" type="text/css" />
    <link href="<?=chemin("css/dark1.css")?>" rel="stylesheet" type="text/css" />

    <!--end::Layout Themes-->
    <link rel="shortcut icon" href="<?= chemin("images/favicon.ico")?>" />
    <!-- Hotjar Tracking Code for keenthemes.com -->
    <script>(function(h,o,t,j,a,r){ h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)}; h._hjSettings={hjid:1070954,hjsv:6}; a=o.getElementsByTagName('head')[0]; r=o.createElement('script');r.async=1; r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv; a.appendChild(r); })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');</script>
</head>
<?php
require "navbar.php";
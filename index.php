<?php
   session_start();
   ob_start();
   require 'login/auth.php';
   require 'database.php';
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Admin dashboard</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="asset/CSS/bootstrap.min.css" rel="stylesheet">
      <script src="asset/JS/bootstrap.bundle.min.js"></script>
      <link rel="stylesheet" href="asset/CSS/sweetalert2.min.css">
      <script src="asset/JS/sweetalert2@11.js"></script>
      <link href="asset/CSS/GoogleFont.css" rel="stylesheet">
      <!-- DATA TABLE -->
      <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <!-- DataTables JS -->
      <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
   </head>
   <body>
      <style>
         * {
         font-family: "Josefin Sans", sans-serif;
         font-optical-sizing: auto;
         font-weight: 650;
         font-style: normal;
         }
         .form-control:disabled,
         .form-control[readonly] {
         background-color: #e8edea;
         opacity: 1
         }
         .form-control {
         color: #000f1e;
         border: 1px solid #09090a;
         display: block;
         width: 100%;
         height: calc(1.5em + .75rem + 2px);
         padding: .375rem .75rem;
         font-size: 1rem;
         font-weight: 400;
         line-height: 1.5;
         background-color: #fff;
         background-clip: padding-box;
         border-radius: .25rem;
         transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
         }
         @media all and (min-width:991px) {
         .dropdown:after {
         content: '';
         top: 0;
         right: 0;
         bottom: 0;
         left: 0;
         transition: opacity .15s ease-in-out;
         opacity: 0;
         visibility: hidden;
         background-color: rgba(0, 0, 0, .7);
         pointer-events: none
         }
         .dropdown.show .nav-link {
         position: relative;
         z-index: 12
         }
         .dropdown.show:after {
         z-index: 10;
         opacity: 1;
         visibility: visible;
         position: fixed
         }
         }
         .bg {
         background-color:#1e8780!important;
         /* background-image: linear-gradient( 109.5deg,  rgba(255,201,67,1) 11.2%, rgba(119,181,67,1) 91.1% ); */
         /* background: #21223d; */
         }
         .navbar-dark .navbar-nav .active>.nav-link,
         .navbar-dark .navbar-nav .nav-link.active,
         .navbar-dark .navbar-nav .nav-link.show,
         .navbar-dark .navbar-nav .show>.nav-link {
         color: #ffffff;
         border: none;
         }
         /*Drop-Down*/
         #nav-bar-staff .dropdown-menu {
         border: 0;
         background: #21223d;
         color: #ffffff;
         }
         #nav-bar-staff .dropdown-divider {
         border-top: 2px solid #f6ff00;
         }
         #nav-bar-staff .dropdown-item {
         border: 0;
         color: #ffffff;
         }
         #nav-bar-staff .dropdown-item:hover {
         background: #21223d;
         color: #ffffff;
         }
         .navbar .dropdown-menu {
         border: 0;
         /*background-image: linear-gradient( 109.5deg,  rgba(255,201,67,1) 11.2%, rgba(119,181,67,1) 91.1% );*/
         color: #ffffff;
         }
         .navbar .dropdown-divider {
         border: 0;
         border-top: 0.5px solid #0be388;
         }
         .navbar .dropdown-item {
         border: none;
         /*background-image: linear-gradient( 109.5deg,  rgba(255,201,67,1) 11.2%, rgba(119,181,67,1) 91.1% );*/
         color: #ffffff;
         }
         .navbar .dropdown-item:hover {
         border: none;
         /*background-image: linear-gradient( 109.5deg,  rgba(255,201,67,1) 11.2%, rgba(119,181,67,1) 91.1% );*/
         color: #ffffff;
         }
         .bg-nav {
         background: #21223d;
         }
         @media (min-width: 992px) {
         .dropdown-menu .dropdown-toggle:after {
         border-top: .3em solid transparent;
         border-right: 0;
         border-bottom: .3em solid transparent;
         border-left: .3em solid;
         }
         .dropdown-menu .dropdown-menu {
         margin-left: 0;
         margin-right: 0;
         }
         .dropdown-menu li {
         position: relative;
         }
         .nav-item .submenu {
         display: none;
         position: absolute;
         left: 100%;
         top: -7px;
         background-color: red;
         }
         .nav-item .submenu-left {
         right: 100%;
         left: auto;
         }
         .dropdown-menu>li:hover>.submenu {
         display: block;
         }
         }
         #nav-bar-staff .dropdown-divider-sub {
         border-top: 2px solid #f6ff00;
         font-family: 'Jost', sans-serif;
         padding: 0.30rem;
         }
         nav {
         border: 0;
         }
      </style>
      <?php 
         include_once("admin-navbar.php");
         if (array_key_exists($chk, $allowed_pages)) {
           include_once($allowed_pages[$chk]);
         } else {
           include_once('pages/404.php'); // 404 page for invalid requests
         }
         
         ?>
   </body>
</html>

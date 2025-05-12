<?php
//session_start(); 
$chk = isset($_REQUEST['chk']) ? htmlspecialchars($_REQUEST['chk']) : 'user_details';

// Define allowed pages
$allowed_pages = [
    'Dashboard' => 'pages/Dashboard/dash.php',
    'AddStudent' => 'pages/AddStudent/AddStudentView.php',
    'AddStudentMark' => 'pages/StudentMark/AddStudentMark/AddStudentMark.php',
    'AddExamPaper' => 'pages/AddExamPaper/AddExamPaper.php',
    'UpdateStudentMark' => 'pages/StudentMark/UpdateStudentMark/updateMark.php',
    'DeleteStudentMark' => 'pages/StudentMark/DeleteStudentMark/DeleteMark.php',
    'SendMail' => 'pages/SendMail/SendMail.php',
];

?>


<nav class="navbar navbar-expand-lg navbar-dark bg" id="nav-bar-staff" style="color: red; font-size: 20px;">
   <div class="container-fluid">
      <a class="navbar-brand" href="#">Admin</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="?chk=Dashboard">Dashboard</a>
            </li>
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="?chk=AddStudent">Add Student</a>
            </li>
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="?chk=AddExamPaper">Add Exam Paper</a>
            </li>
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               Mark Entry
               </a>
               <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="?chk=AddStudentMark">Add Mark</a></li>
                  <li>
                     <hr class="dropdown-divider">
                  </li>
                  <li><a class="dropdown-item" href="?chk=UpdateStudentMark">Edit Mark</a></li>
                  <li>
                     <hr class="dropdown-divider">
                  </li>
                  <li><a class="dropdown-item" href="?chk=DeleteStudentMark">Delete Mark</a></li>
               </ul>
            </li>
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="?chk=SendMail">Send Mail</a>
            </li>
         </ul>
         <button class="btn btn-danger logout"  type="button">
         <a class="nav-link" href="login/logout.php" style="color: white;">
         <i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Logout
         </a>
         </button>
      </div>
   </div>
</nav>


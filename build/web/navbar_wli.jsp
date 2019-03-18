<!DOCTYPE html>
<html lang="en">

<head>
    <script src="vendor/jquery/jquery.min.js"></script>
   
    <script src="js/sb-admin.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <title>Plotters- an easy way to graphs and charts</title>
  <link href="css/main.css" rel="stylesheet">
</head>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand notranslate" href="index.jsp" style="font-family:cursive;font-size:30px;">Plotters</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="charts.jsp" id="charts">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Charts</span>
          </a>
        </li>
       
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="About">
            <a class="nav-link" href="about.jsp" id="about">
              <i class="fa fa-fw fa-table"></i>
              <span class="nav-link-text">About</span>
            </a>
          </li>
                  </li>
       
         
            </li>
          </ul>
        </li>
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
      <li class="dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-fw fa-circle-o-notch" data-toggle="dropdown"></i>Profile</a>
                <ul class="dropdown-menu" role="menu">
            <li><a href="ChangePassword.jsp" class="nav-link1">Change Password</a></li>
            <li><a href="#" class="nav-link1">Subscriptions</a></li>
          </ul>
        </li>   
        <li class="nav-item">
            <a href="LogOut.jsp" class="nav-link">
                <i class="fa fa-fw fa-sign-out"></i>Sign Out</a>
        </li>
      </ul>
    </div>
  </nav>
</body>
<style>
    .nav-link1{
        color: #868e96;
         padding: 1em;
    }
    </style>
</html>
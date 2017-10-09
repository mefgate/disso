<!--

Author: Mef Diagne

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<% 
  request.setCharacterEncoding("UTF-8"); 
  response.setCharacterEncoding("UTF-8"); 
%>
<!DOCTYPE html>
<html>
<title>WebConference</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<body>
<div class="nav-side-menu">
    <div class="brand">Disso</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="#"><i class="fa fa-gift fa-lg"></i> Conference <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">Creer conference</a></li>
                    <li><a href="#">Rejoindre une conference</a></li>
                    <li><a href="#">rejoindre une conference existente</a></li>
                    <li><a href="#">Mot de passe conference</a></li>
                    <li><a href="#">Conference avec fichier</a></li>
                    <li><a href="#">Conference avec URL</a></li>
                </ul>

                <li>
                  <a href="#">
                  <i class="fa fa-microphone fa-lg"></i> Enregistrer Conference
                  </a>
                  </li>

                  <li>
                  <a href="#">
                  <i class="fa fa-eye fa-lg"></i> Design
                  </a>
                  </li>

                  <li>
                  <a href="#">
                  <i class="fa fa-mobile fa-lg"></i> Mobile
                  </a>
                  </li>

                  <li>
                  <a href="#">
                  <i class="fa fa-building-o fa-lg"></i> Activity
                  </a>
                  </li>

            </ul>
     </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript" ></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript" ></script>

</body>
</html>



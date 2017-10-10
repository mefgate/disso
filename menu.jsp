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

                    <li>
                      <a href="create.jsp">
                        <i class="fa fa-users"></i> Creer conference
                      </a>
                    </li>

                    <li>
                      <a href="demo1.jsp">
                        <i class="fa fa-pencil fa-fw"></i>Rejoindre une conference
                    </a>
                    </li>

                    <li>
                      <a href="demo3.jsp">Mot de passe conference
                         <i class="fa fa-key fa-fw">
                      </a>
                    </li>

                    <li>
                      <a href="demo7.jsp">Conference avec fichier
                        <i class="fa fa-book fa-fw">
                      </a>
                    </li>
                    <li>
                      <a href="demo8.jsp">Conference avec URL
                      <i class="fa fa-sitemap">
                      </a>
                    </li>
                    <!-- <li><a href="demo2.jsp">rejoindre une conference existente</a></li> --> 

                <li>
                  <a href="demo10.jsp">
                    <i class="fa fa-microphone fa-lg"></i> Enregistrer Conference
                  </a>
                </li>
                
                  
                  <li>
                    <a href="demo12.jsp">
                       <i class="fa fa-eye fa-lg"></i> Design
                    </a>
                  </li>

                  <li>
                  <a href="mobile.jsp">
                  <i class="fa fa-mobile fa-lg"></i> Mobile
                  </a>
                  </li>

                  <li>
                  <a href="demo4.jsp">
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



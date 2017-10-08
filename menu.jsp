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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-sidebar w3-bar-block w3-black w3-card-2" style="width:130px">
  <h5 class="w3-bar-item">Menu</h5>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'create.jsp')">Creer conference</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Left')">Rejoindre une conference</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Right')">Rejoindre une conference existente</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Top')">Mot de Passe conference</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Bottom')">rejoindre et charger fichier</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Zoom')">Rejoindre avec URL (URL)</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Top')">Enregistrer conference</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Bottom')">Design</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Zoom')">Joindre depuis Mobile</button>
  <button class="w3-bar-item w3-button tablink" onclick="openLink(event, 'Zoom')">Activity Monitor</button>
</div>

<div style="margin-left:130px">
  <div class="w3-padding">Selectionnez votre type de video-conference</div>

  <div id="Fade" <a href="create.jsp"></a> class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Creer conference </h2>
    
  </div>

  <div id="Left" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Rejoindre une conference</h2>
    
  </div>

  <div id="Top" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Rejoindre une conference existente</h2>
    
  </div>

  <div id="Right" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Mot de Passe conference</h2>
  
  </div>

  <div id="Bottom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>rejoindre et charger fichier</h2>
    
  </div>

  <div id="Zoom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Rejoindre avec URL (URL)</h2>
    
  </div>

  <div id="Zoom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Enregistrer conference</h2>
    
  </div>

  <div id="Zoom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Design</h2>
    
  </div>

  <div id="Zoom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Joindre depuis Mobile</h2>
    
  </div>

<div id="Zoom" class="w3-container city w3-animate-opacity" style="display:none">
    <h2>Activity Monitor</h2>
    
  </div>
</div>

<script>
function openLink(evt, animName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(animName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}
</script>

</body>
</html>

<!--

Author: Mef Diagne

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8"); 
	response.setCharacterEncoding("UTF-8"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Join Demo Meeting</title>
</head>

<body>

<%@ include file="bbb_api.jsp"%>

<% 
if (request.getParameterMap().isEmpty()) {
	//
	// Assume we want to create a meeting
	//
	%> 
<%@ include file="menu.jsp"%>

<h2 align="center">Video Conference</h2>


<section>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
        <hgroup>
          
          <h1 class="free">Entrez votre nom</h1>
         </hgroup>
         <div class="well">
             <FORM NAME="form1" METHOD="GET">
              <div class="input-group">
                 <input class="btn btn-lg" name="username" id="username" placeholder="Votre nom">
                 <button class="btn btn-info btn-lg" type="submit" value="Join">Rejoindre </button>
              </div>
              <INPUT TYPE=hidden NAME=action VALUE="create">
             </FORM>
         </div>
        
        </div>
    </div>
</div>
</section>

<%
} else  if (request.getParameter("action").equals("create")) {
	
	//
	// Got an action=create
	//
	
	String username = request.getParameter("username");
	String url = BigBlueButtonURL.replace("bigbluebutton/","demo/");
	// String preUploadPDF = "<?xml version='1.0' encoding='UTF-8'?><modules><module name='presentation'><document url='"+url+"pdfs/sample.pdf'/></module></modules>";
	
	String joinURL = getJoinURL(request.getParameter("username"), "Demo Meeting", "false", null, null, null);

	if (joinURL.startsWith("http://") || joinURL.startsWith("https://")) { 
%>

<script language="javascript" type="text/javascript">
  window.location.href="<%=joinURL%>";
</script>

<%
	} else {
%>

Error: getJoinURL() failed
<p/>
<%=joinURL %>

<% 
	}
} 
%>


<%@ include file="demo_footer.jsp"%>

</body>
</html>

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
	<title>Join Password</title>
</head>
<body>

<%@ include file="bbb_api.jsp"%>

<% 

//
// We're going to define some sample courses (meetings) below.  This API exampe shows how you can create a login page for a course. 
// The password below are not available to users as they are compiled on the server.
//

HashMap<String, HashMap> allMeetings = new HashMap<String, HashMap>();
HashMap<String, String> meeting;

// String welcome = "<br>Welcome to %%CONFNAME%%!<br><br>For help see our <a href=\"event:http://www.bigbluebutton.org/content/videos\"><u>tutorial videos</u></a>.<br><br>To join the voice bridge for this meeting:<br>  (1) click the headset icon in the upper-left, or<br>  (2) dial xxx-xxx-xxxx (toll free:1-xxx-xxx-xxxx) and enter conference ID: %%CONFNUM%%.<br><br>";

String welcome = "<br>Welcome to <b>%%CONFNAME%%</b>!<br><br>To understand how BigBlueButton works see our <a href=\"event:http://www.bigbluebutton.org/content/videos\"><u>tutorial videos</u></a>.<br><br>To join the audio bridge click the headset icon (upper-left hand corner). <b>You can mute yourself in the Listeners window.</b>";

//
// English courses
//

meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2013: Research Methods in English", meeting );	// The title that will appear in the drop-down menu
	meeting.put("welcomeMsg", 	welcome);			// The welcome mesage
	meeting.put("moderatorPW", 	"prof123");			// The password for moderator
	meeting.put("viewerPW", 	"student123");			// The password for viewer
	meeting.put("voiceBridge", 	"72013");			// The extension number for the voice bridge (use if connected to phone system)
	meeting.put("logoutURL", 	"/demo/demo3.jsp");  // The logout URL (use if you want to return to your pages)

meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2213: Drama Production I", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72213");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2023: Survey of English Literature", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72023");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

//
// Law Courses
//

meeting = new HashMap<String, String>();
allMeetings.put( "LAW-1323: Fundamentals of Advocacy ", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"71232");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "LAW-2273: Business Organizations", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72273");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "LAW-3113: Corporate Finance", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"theprof");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"71642");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");


//
// Professor's Virtaul Office Hours
//

meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Steve Stoyan", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70001");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Michael Bailetti", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70002");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Tony Weiss", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70003");
	meeting.put("logoutURL", 	"/demo/demo3.jsp");


meeting = null;

Iterator<String> meetingIterator = new TreeSet<String>(allMeetings.keySet()).iterator();

if (request.getParameterMap().isEmpty()) {
		//
		// Assume we want to join a course
		//
	%> 
<%@ include file="menu.jsp"%>

<h2 align="center">Join a Session (password required)</h2>


<div style="padding: 3rem 1rem">
  <form class="well center-block" style="max-width: 35rem">
    <legend class="text-center">Rejoindre une conference (mot de passe requis)</legend>
    <div class="form-group input-group">
      <span class="has-float-label">
        <input class="form-control" id="usernamecfgtrt" type="text" placeholder="Name"/>
        <label for="first">Nom complet</label>
      </span>
      
    </div>
    
    <div class="form-group has-float-label">
      <input class="form-control" id="password" type="password" placeholder="••••••••"/>
      <label for="password">Mot de passe</label>
    </div>
    <div class="form-group has-float-label">
      <select name="meetingID">
            <%
                String key;
                while (meetingIterator.hasNext()) {
                    key = meetingIterator.next(); 
                    out.println("<option value=\"" + key + "\">" + key + "</option>");
                }
            %>
            </select>
      <label for="country">Session</label>
    </div>
    
    <div>
      <button class="btn btn-block btn-primary" type="submit" value="Join">Rejoindre</button>
    </div>
  </form>
  
  <!-- <div class="text-center"> -->
    		<!-- Passwords:   -->
				<!-- <ul> -->
 				  <!-- <li>prof123 - login as professor (moderator privlidges)</li> -->
 				  <!-- <li>student123 - login as student (viewer privlidges)</li> -->
				<!-- </ul> -->
  <!-- </div> -->
</div>





<%
	} else if (request.getParameter("action").equals("create")) {
		//
		// Got an action=create
		//

		String username = request.getParameter("username");
		String meetingID = request.getParameter("meetingID");
		String password = request.getParameter("password");
		
		meeting = allMeetings.get( meetingID );
		
		String welcomeMsg = meeting.get( "welcomeMsg" );
		String logoutURL = meeting.get( "logoutURL" );
		Integer voiceBridge = Integer.parseInt( meeting.get( "voiceBridge" ).trim() );

		String viewerPW = meeting.get( "viewerPW" );
		String moderatorPW = meeting.get( "moderatorPW" );
		
		//
		// Check if we have a valid password
		//
		if ( ! password.equals(viewerPW) && ! password.equals(moderatorPW) ) {
%>

Invalid Password, please <a href="javascript:history.go(-1)">try again</a>.

<%
			return;
		}
		
		//
		// Looks good, let's create the meeting
		//
		String meeting_ID = createMeeting( meetingID, welcomeMsg, moderatorPW, "Welcome moderator! (moderator only message)", viewerPW, voiceBridge, logoutURL );
		
		//
		// Check if we have an error.
		//
		if( meeting_ID.startsWith("Error ")) {
%>

Error: createMeeting() failed
<p /><%=meeting_ID%> 


<%
			return;
		}
		
		//
		// We've got a valid meeting_ID and passoword -- let's join!
		//
		
		String joinURL = getJoinMeetingURL(username, meeting_ID, password, null);
%>

<script language="javascript" type="text/javascript">
  window.location.href="<%=joinURL%>";
</script>

<%
	} 
%>
 
<%@ include file="demo_footer.jsp"%>

</body>
</html>



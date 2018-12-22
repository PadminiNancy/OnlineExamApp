<%-- 
    Document   : usermenu
    Created on : Jul 24, 2015, 8:33:42 AM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <head>
    <title></title>
    <style type="text/css">
  ul {list-style: none;padding: 0px;margin: 0px;}
  ul li {display: block;position: relative;float: left;border:1px solid #000;width: 247px}
  li ul {display: none;}
  ul li a {display: block;background: #000;opacity:0.4;padding: 5px 10px 5px 10px;text-decoration: none;
           white-space: nowrap;color: #fff;}
  ul li a:hover {background: #f00;}
  li:hover ul {display: block; position: absolute;}
  li:hover li {float: none;}
  li:hover a {background: #f00;}
  li:hover li a:hover {background: #000;}
  #drop-nav li ul li {border-top: 0px;}
</style>
</head>
<body>
<ul id="drop-nav">
    <center> <li><a href="userhome.jsp">View Profile</a></li></center>
  <center>  <li><a href="startTest.jsp">Start Test</a></li></center>
  <center>  <li><a href="#">Test History</a>
        <ul>
      <center>  <li><a href="TestHistoryServ.do?cs=2">Today</a></li></center>
      <center>  <li><a href="TestHistoryServ.do?cs=1">Last 7 Days</a></li></center>
       <center>  <li><a href="TestHistoryServ.do?cs=3">This Month</a></li></center>
      <center>  <li><a href="TestHistoryServ.do?cs=4">All</a></li></center>

      </ul>

</li> </center>
  <center>  <li><a href="userlogout.jsp">Logout</a></li></center>



</ul>
</body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
     <head>
    <title></title>
  <style type="text/css">
  ul {list-style: none;padding: 0px;margin: 0px;}
  ul li {display: block;position: relative;float: left;border:1px solid #000;width: 164px}
  li ul {display: none;}
  ul li a {display: block;background: #000;opacity:0.4;padding: 5px 10px 5px 10px;text-decoration: none;
           white-space: nowrap;color: #fff;}
  ul li a:hover {background: #f00;}
  li:hover ul {display: block; position: absolute;}
  li:hover li {float: none;}
  li:hover a {background: #f00;}
  li:hover li a:hover {background: #000;}
  #drop-nav li ul li {border-top: 0px;}
  #drop-nav li ul li ul{display:none;}
 
  #drop-nav li li:hover ul{display: block;padding: 0px 165px;bottom: 3px;top: 3px;}
    li:hover li:hover li a:hover{background: black;}
  #drop-nav li ul li ul li {border-top: 0px;}
  
  
</style>
</head>
<body>
<ul id="drop-nav">
    <center> <li><a href="#">Subject</a>
     <ul>
      <center> <li><a href="subentry.jsp">Add</a></li></center>
      <center> <li><a href="updateSub.jsp">Update</a></li></center>
      
      
    </ul>
  </li></center>
  <center> <li><a href="#">Topic</a>
       <ul>
     <center>  <li><a href="topicentry.jsp">Add</a></li></center>
     <center>  <li><a href="updateTopic.jsp">Update</a></li></center>
      
    </ul>
  </li></center>
  <center> <li><a href="#">Questions</a>
        <ul>
     <center>  <li><a href="setques.jsp">Add</a>

               <ul>
            <c:forEach var="d" items="${sessionScope.ssubject}">
               <center>  <li>    <a href="FetchAllQuestServ.do?scode=${d.scode}&n=1">${d.sname}</a></li></center>

	               </c:forEach>
                </ul>

               </li></center>
     <center>  <li><a href="delques.jsp">Delete</a>

                <ul>
            <c:forEach var="d" items="${sessionScope.ssubject}">
               <center>  <li>    <a href="FetchAllQuestServ.do?scode=${d.scode}&n=2">${d.sname}</a></li></center>

	               </c:forEach>
                </ul>

              </li></center>

      
    </ul>
  </li></center>
  <center> <li><a href="settest.jsp">Set Test Details</a></li></center>
  <center> <li><a href="#">View</a>
      <ul>
            <center>  <li><a href="#">Questions</a>
                    <ul>
            <c:forEach var="d" items="${sessionScope.ssubject}">
               <center>  <li>    <a href="FetchAllQuestServ.do?scode=${d.scode}&n=0">${d.sname}</a></li></center>

	               </c:forEach>
                    </ul>  </li></center>
           <center>  <li><a href="ViewUserServ.do">Users</a></li></center>

      </ul>

  </li></center>
 <center>  <li><a href="adminlogout.jsp">Logout</a></li></center>


</ul>
</body>
</html>

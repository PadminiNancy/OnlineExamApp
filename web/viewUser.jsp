<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%@ page import="java.io.*,java.util.*" %>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<link rel="stylesheet"type="text/css" media="all" href="template/design.css"/>
<html:html lang="true">

   <head>
         <title>Users</title>
     <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>
    <%
      HttpSession hs = request.getSession();
      String photo = (String)hs.getAttribute("photo");
      String uname = (String)hs.getAttribute("aname");
      int a=1;
      if(uname!=null)
         a = 1;
      else
          response.sendRedirect("temp.jsp");

    %>
    <body background="images/back.jpg">
        <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>
                <tr><td><br></td></tr>
                 <tr><td align="center"><h1> List Of Users  </h1></td></tr>
               
                <tr> <td> <br><br>
       <center><table class="Alter" id="grid" border="1" width="50%" align="center" style="color:black;">

                <tbody>

                     <tr class="up">
 <th>SNo. </th> <th>UserName </th><th> Email Id </th><th>Contact No. </th>
 </tr>
	 <c:forEach var="d" items="${sessionScope.vu}">
	 <tr  style="color:black">
             <td><%=a%></td>
             <%a++;%>
             <td><center><c:out value="${d.login.uname}"/></center></td>
             <td><center><c:out value="${d.email}"/></center></td>
             <td><center><c:out value="${d.phone}"/></center></td>


	 </tr>
	 </c:forEach>

          </table>
        </center>
       </td>
        </tr>

        <tr><td> <br><br><br><br><br><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html:html>

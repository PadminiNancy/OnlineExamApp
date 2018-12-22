<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>
<%@ page import="java.io.*,java.util.*,javax.servlet.ServletContext" %>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>User Home</title>
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
      String uname = (String)hs.getAttribute("uname");

      int abc;
      if(uname!=null)
         abc = 0;
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
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/usermenu.jsp"%></td>

                </tr>
               <tr><td>  <h1> <center>Welcome ${sessionScope.uname} </center></h1></td></tr>
                <tr> <td>
       <center><table  width="100px"align="center" style="color:#339966; height: 300px">
        
                <tbody>

            <tr>
                <% if(photo!=null) {
                %>
                <td> <img src="uphoto/${sessionScope.uname}.jpg" height="120px" width="120px"/></td>
                <td>   </td>
                <td>   </td>
                <% }%>
            </tr>
                
                    <tr>
                        <td>User Name:</td>
                        <td>   </td>
                        <td>${sessionScope.uname}</td>

                    </tr>
                    <c:forEach var="d" items="${sessionScope.userdata}">
                    <tr>
                        <td>Date of Birth:</td>
                        <td>   </td>
                        <td>${d.dob}</td>

                    </tr>

                    <tr>
                        <td>Email Id:</td>
                        <td>   </td>
                        <td>${d.email}</td>

                    </tr>
                    <tr>
                        <td>Qualification:</td>
                        <td>   </td>
                        <td>${d.quali}</td>

                    </tr>
                    <tr>
                        <td>Institute:</td>
                        <td>   </td>
                        <td>${d.inst}</td>

                    </tr>
                     <tr>
                        <td>Phone:</td>
                         <td>   </td>
                        <td>${d.phone}</td>

                    </tr>

                </tbody>
                </table></center>
</c:forEach> 
         </td>
        </tr>

       
        <tr><td> <br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html:html>

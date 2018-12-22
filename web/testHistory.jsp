<%--
    Document   : loggerdisplay
    Created on : Apr 21, 2014, 10:26:35 AM
    Author     : chand
--%>
<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"type="text/css" media="all" href="template/design.css"/>

<html>

   <head>
         <title>Previous Tests</title>
     <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
         <%
      HttpSession hs = request.getSession();
      String uname = (String)hs.getAttribute("uname");
      int abc;
      if(uname!=null)
         abc = 0;
      else
          response.sendRedirect("temp.jsp");

    %>
    </head>

    <body background="images/back.jpg">

     <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/usermenu.jsp"%></td>

            </tr>
                 
            <tr><td align="center"><h1> Previous Tests  </h1></td></tr>


                <tr> <td> <center>
                            <c:if test="${param.msg != null }">
                             <b>${param.msg}</b>
                             </c:if>
            <table class="Alter" id="grid" border="1" width="50%" align="center" style="color:black;">
    

   
          


              <tr class="up">
 <th>Date </th><th> Subject  </th><th>Total Marks </th><th> Obtained Marks </th><th> Weak Area </th>
 </tr>
	 <c:forEach var="d" items="${requestScope.history}">
	 <tr  style="color:black">
             <td><center><c:out value="${d.dot}"/></center></td>
             <td><center><c:out value="${d.scode}"/></center></td>
             <td><center><c:out value="${d.tmarks}"/></center></td>
             <td><center><c:out value="${d.omarks}"/></center></td>
             <td><center><c:out value="${d.wa}"/></center></td>

	 </tr>
	 </c:forEach>
 
          </table>   
        </center>
       </td>
        </tr>
        
      
        <tr><td> <br><br><br><br><br><br><br><br><br><br><br><br><br><%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html>

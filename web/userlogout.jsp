<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">
    <head>
         <title>Logout</title>
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
         hs.setAttribute("uname", null);
      else
          response.sendRedirect("temp.jsp");

    %>
    </head>

    <body background="images/back.jpg">

    <table  id="trans" width: 250px; align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>

                <tr> <td>
            <table align="center" style="color:#339966; height: 300px">
                <br> <br>   <h1 align="center"> You are successfully logged out!!!!!!!</h1>

                <tr><td align="center"> <a href="login.jsp">Login</a></td></tr>
        <tr><td> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>

    </body>
</html:html>

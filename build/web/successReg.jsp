<%-- 
    Document   : successReg
    Created on : May 13, 2015, 10:17:02 PM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>Success Register</title>
     <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
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
            <table  border="0" width="50%" align="center" style="color:#339966; height: 300px">
                <tr><td> <h1>Your account has been created...Login with your username and password.</h1></td></tr>
        
                <tr><td> <a href="home.jsp">Click here to login </a></td></tr>
            </table>
       </td>
        </tr>

        
        <tr><td><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html>

<%--
    Document   : next
    Created on : Feb 27, 2015, 10:58:04 AM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html:html lang="true">
    <head>
         <title>Need To Login</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>


<body background="images/back.jpg">
     <table  id="trans"width: 250px; align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>

                <tr> <td>
                        <table align="center" style="color:#339966; ">
     <h1> <br><br><br> <center>You Must Login First!!!!!</center></h1>
     
    
           </td>
        </tr>


        <tr><td> <br><br><br><br><br><br><br><br><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html>

<%-- 
    Document   : next
    Created on : Feb 27, 2015, 10:58:04 AM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <title>Register Page</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>


<body background="images/back.jpg">
     <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>

                <tr> <td>
            <table align="center" style="color:#339966; height: 300px">
     <h1> <center>data saved!!!!!</center></h1>
     <br>
    <center> <a href="adminhome.jsp"> Back </a></center>
           </td>
        </tr>

       
        <tr><td> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
    </body>
</html>

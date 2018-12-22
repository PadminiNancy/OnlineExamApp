<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">
    <head>
         <title>Data Saved</title>
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
                <br> <br>   <h1 align="center"> Data Saved!!!!!!!!!!!!</h1>

                <center>  <a href="settest.jsp" >Back</a></center>
        <tr><td> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
   
    </body>
</html:html>

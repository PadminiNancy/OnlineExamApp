<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>Start Test</title>
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

    

        <html:form action="/StartTestServ" method="post">
           <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/usermenu.jsp"%></td>

                </tr>

                <tr> <td> <center>
            <table  border="0" width="50%" align="center" style="color:#339966; height: 300px">

           

                <tbody>
                    <tr>
                        <td>Select Subject:</td>
                       
                        <td style=";border-radius:5px;"> <html:select property="scode" style=" background: #99CCFF;border-radius:5px;">
                           
	                <c:forEach var="d" items="${sessionScope.sublist}">
                            <html:option style=";border-radius:5px;" value="${d.scode}">${d.sname}</html:option>

	               </c:forEach>
                            </html:select>
                        </td>



                        <td><html:submit value="Start Test" style=" color:#CC0066; background: #99CC99;font-size:large;width:100px;border-radius:5px;"/></td>
                    </tr>



            </tbody>
            </table>
               </td>
        </tr>

     
        <tr><td><br><br><br><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
    
    </body>
</html:html>

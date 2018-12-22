<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>Set Test</title>
     <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
                 <%
      HttpSession hs = request.getSession();
      String uname = (String)hs.getAttribute("aname");
      int abc;
      if(uname!=null)
         abc = 0;
      else
          response.sendRedirect("temp.jsp");

    %>
    </head>

    <body background="images/back.jpg">

    

        <html:form action="/SetTestServ" method="post">


            <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>
               
                <tr> <td> <br><br>
            <table  border="0"  align="center" style="color:#339966; height: 200px">

                <tbody>
                    <tr>
                        <td>No.of questions:</td>
                        <td><html:text property="noq"/></td>
                        <td><html:errors property="noq"/></td>
                    </tr>
                    <tr>
                        <td>Complexity Level:</td>
                        <td>
                <html:select property="clev">
                    
                     <html:option value="easy">Easy</html:option>
                     <html:option value="medium">Medium</html:option>
                      <html:option value="high">High</html:option>

                </html:select>
                            
                        </td>
                        <td><html:errors property="clev"/></td>
                    </tr>
                <input type="hidden" name="ap" value="0" />

                <tr> 
                    <td><center><html:submit value="Set"/></center></td>
                    </tr>



            </tbody>
            </table>
                </td>
        </tr>

        
        <tr><td><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
     
    </body>
</html:html>

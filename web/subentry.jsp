<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>Subject Entry</title>
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

     
        <html:form action="/AddSubServ" method="post">

          <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>

                <tr> <td><br><br><br><br>
            <table  align="center" style="color:#339966; height: 200px">



           

                <tbody>
                    <tr>
                        <td>Subject code</td>
                        <td><html:text property="scode" /></td>
                    </tr>
                    <tr>
                        <td>Subject name</td>
                        <td><html:text property="sname" /></td>
                    </tr>
                    <tr  align="center">

                        <td><html:submit value="add" /></td>
                    </tr>
                </tbody>
            </table>
                      </td>
        </tr>

       
        <tr><td> <br><br><br><br><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
    
    </body>
</html:html>

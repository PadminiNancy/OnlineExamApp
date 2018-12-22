<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">
<head:html>
    <title>Register_1</title>
     <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
     <%
     String msg = request.getParameter("msg");
     String nmsg = request.getParameter("nmsg");
     String pmsg = request.getParameter("pmsg");
     %>
</head:html>
<body background="images/back.jpg">
								


        <center>
        <html:form action="/RegisterServ" method="post">

             <table  id="trans" width: 250px; align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>

                <tr> <td> <br><br><br>
            <table align="center" style="color:#339966; height: 300px">

                <tbody>
                        <%
                 if(msg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Username Already Exist ! ! !
                    </td>
                </tr>
                <%}%>
                       <%
                 if(nmsg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                       Username Required ! ! !
                    </td>
                </tr>
                <%}%>
                       <%
                 if(pmsg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Password must be atleast 8 characters! ! !
                    </td>
                    
                </tr>
                <%}%>
                    <tr>
                        <td>User Name:</td>
                        <td><html:text property="uname" value="${requestScope.uname}"/></td>
                        <td><html:errors property="uname"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><html:password property="pass" /></td>
                        <td><html:errors property="pass"/></td>
                    </tr>

                    <tr>
                       <td><html:submit value="Next" style=" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;"/></td>

                    </tr>
                </tbody>
            </table>
               </td>
        </tr>

       
        <tr><td><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
        </center>
    </body>
</html:html>

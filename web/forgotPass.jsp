<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">
    <head>
         <title>Register_2</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
           a {color: #993333;}
    a hover {color:#999966;}
    a visited {color:#CC3399;}
</style>
    <%
      String msg = request.getParameter("msg");
    %>
    </head>

    <body background="images/back.jpg">



        <html:form action="/ForgotPassServ" method="post" enctype="multipart/form-data">

             <table  id="trans" width: 250px; align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>

                <tr> <td> <br><br><br>
            <table align="center" style="color:#339966; height: 350px">

                <tbody>
                    <%
                 if(msg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Invalid Data ! ! !
                    </td>
                </tr>
                <%}%>
                    <tr>
                        <td>User Name:</td>
                        <td><html:text property="uname" /></td>
                        <td><html:errors property="uname"/></td>
                    </tr>
                   

                    <tr>
                        <td>Email Id:</td>
                        <td><html:text property="email"/></td>
                        <td><html:errors property="email"/></td>
                    </tr>

                    <tr>
                        <td> <br><html:submit value="Submit" style=" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;"/></td>


                    </tr>
                </tbody>
            </table>
                </td>
        </tr>


        <tr><td> <br><%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>

    </body>
</html:html>

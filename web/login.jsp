<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@ page language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:html lang="true">
    <head>
          <title>Login</title>
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
                          String cmsg = request.getParameter("cmsg");

      %>
    </head>
    <body background="images/back.jpg">

        <html:form action="/LoginServ" method="post">


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
                        Invalid User Name Or Password ! ! !
                    </td>
                </tr>
                <%}%>
                 <%
                 if(cmsg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Password Changed Successfully ! ! !
                    </td>
                </tr>
                <%}%>
                    <tr>
                        <td>User Name:</td>
                        <td><html:text property="uname"/></td>
                        <td><html:errors property="uname"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="pass"/></td>
                        <td><html:errors property="pass"/></td>
                    </tr>
                    <tr>
                        <td><html:submit value="Login" style=" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;"/></td>
                    </tr>


            <tr>
                <td>
                    <a href="register.jsp" style="font-size: large">New User Register Here </a>
               </td>
               <td input type="hidden" style=" width:20px;height:0px;"></td>
               <td>
                    <a href="forgotPass.jsp" style="font-size: large">Forgot PassWord </a>
               </td>
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

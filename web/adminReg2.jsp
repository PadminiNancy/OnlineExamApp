<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">
    <head>
         <title>Admin Register_2</title>
      <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>

    <body  background="images/back.jpg">

    

        <html:form action="/AdminReg2Serv" method="post" enctype="multipart/form-data">
          <table  id="trans" width: 164px; align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>

                <tr> <td> <br><br><br>
            <table align="center" style="color:#339966;height: 300px">

                <tbody>
                    <tr>
                        <td>User Name:</td>
                        <td><html:text property="uname" value="${sessionScope.aname}"/></td>
                        <td><html:errors property="uname"/></td>
                    </tr>
                    <tr>
                        <td>Date of Birth:</td>
                        <td><html:text property="dob"/></td>
                        <td><html:errors property="dob"/></td>
                    </tr>

                    <tr>
                        <td>Email Id:</td>
                        <td><html:text property="email"/></td>
                        <td><html:errors property="email"/></td>
                    </tr>
                    <tr>
                        <td>Qualification:</td>
                        <td><html:text property="quali"/></td>
                        <td><html:errors property="quali"/></td>
                    </tr>
                    <tr>
                        <td>Post:</td>
                        <td><html:text property="post"/></td>
                        <td><html:errors property="post"/></td>
                    </tr>
                     <tr>
                        <td>Phone:</td>
                        <td><html:text property="phone"/></td>
                        <td><html:errors property="phone"/></td>
                    </tr>
                     <tr>
                        <td>Photo:</td>
                        <td><html:file property="photo1" /></td>
                    </tr>


                    <tr>
                        <td><html:submit value="Submit" style=" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;"/></td>

                    </tr>
                </tbody>
            </table>
           </td>
        </tr>

       
        <tr><td> <br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
      
    </body>
</html:html>

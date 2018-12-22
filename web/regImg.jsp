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
<SCRIPT language="JavaScript">
 
  </SCRIPT>
    </head>

    <body background="images/back.jpg">



        <html:form action="/Register3Serv" method="post" enctype="multipart/form-data">

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
                    <tr>
                        
                        <td><input type="hidden" name="uname" value="${sessionScope.uname}"/></td>
                        <td><html:errors property="uname"/></td>
                    </tr>
                    <tr>
                       
                        <td><input type="hidden" name="dob" value="${sessionScope.ud.dob}"/></td>
                        <td><html:errors property="dob"/></td>
                    </tr>

                    <tr>
                        
                        <td><input type="hidden" name="email" value="${sessionScope.ud.email}"/></td>
                        <td><html:errors property="email"/></td>
                    </tr>
                    <tr>
                        
                        <td><input type="hidden" name="quali" value="${sessionScope.ud.quali}"/></td>
                        <td><html:errors property="quali"/></td>
                    </tr>
                    <tr>
                        
                        <td><input type="hidden" name="inst" value="${sessionScope.ud.inst}"/></td>
                        <td><html:errors property="inst"/></td>
                    </tr>
                     <tr>
                       
                        <td><input type="hidden" name="phone" value="${sessionScope.ud.phone}"/></td>
                        <td><html:errors property="phone"/></td>

                         </tr>
                      <tr>
                          <td>Photo:</td>
                        <td><html:file property="photo1"/></td>
                    </tr>


                    <tr>
                        <td> <br><html:submit value="Register" style=" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;"/></td>
                         <td input type="hidden" style=" width:20px;height:0px;"></td>
                        <td>  <a href="register.jsp" style="font-size: large">Back </a></td>

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

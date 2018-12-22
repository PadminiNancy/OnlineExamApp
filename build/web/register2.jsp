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
 function c1()
{
     document.forms[0].action="RegRequestServ.do";
  document.forms[0].submit();

  }
  </SCRIPT>
    </head>

    <body background="images/back.jpg">

    

        <html:form action="/Register2Serv" method="post" enctype="multipart/form-data">

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
                        <td>User Name:</td>
                        <td><html:text property="uname" value="${sessionScope.uname}"/></td>
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
                        <td>College:</td>
                        <td><html:text property="inst"/></td>
                        <td><html:errors property="inst"/></td>
                    </tr>
                     <tr>
                        <td>Phone:</td>
                        <td><html:text property="phone"/></td>
                        <td><html:errors property="phone"/></td>

                         </tr>
                      <tr>
                          <td>  <input type="button" value="Set Image" name="B1" onclick="c1();"> </td>
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

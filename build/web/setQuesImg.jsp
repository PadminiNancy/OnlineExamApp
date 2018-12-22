<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html:html lang="true">

   <head>
         <title>Set Question Image</title>
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


        <html:form action="/SetQuesImgServ" method="post" enctype="multipart/form-data">

           
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


                <tbody>


                    <tr>

                      
                        <td><input type="hidden" name="scode" value="${sessionScope.q.scode}" /></td>

                    </tr>
                     <tr>
                       
                         <td><input type="hidden" name="tcode" value="${sessionScope.q.tcode}"/></td>

                    </tr>

                    <tr>
                      
                        <td><input type="hidden" name="qid" value="${sessionScope.q.qid}"/></td>

                    </tr>

                    <tr>
                      
                        <td><input type="hidden" name="ques" value="${sessionScope.q.ques}"/></td>

                    </tr>
                    <tr>
                        
                        <td><input type="hidden" name="opt1" value="${sessionScope.q.opt1}"/></td>

                    </tr
                     <tr>
                       
                         <td><input type="hidden" name="opt2" value="${sessionScope.q.opt2}"/></td>

                     </tr>
                     <tr>
                      
                         <td><input type="hidden" name="opt3" value="${sessionScope.q.opt3}"/></td>

                     </tr>
                     <tr>
                       
                         <td><input type="hidden" name="opt4" value="${sessionScope.q.opt4}" /></td>

                     </tr>
                     <tr>
                       
                         <td><input type="hidden" name="cans" value="${sessionScope.q.cans}"/></td>

                      </tr>
                      <tr>
                        
                          <td><input type="hidden" name="marks" value="${sessionScope.q.marks}"/></td>

                      </tr>
                      <tr>
                          
                          <td><input type="hidden" name="clev" value="${sessionScope.q.clev}"/></td>
                        
                      </tr>
                      <tr>
                        <td>Photo:</td>
                        <td><html:file property="photo1"/></td>
                    </tr>
                    

                    <tr>
                        <td align="center"><html:submit value="Save"/></td>

                    </tr>
                    <tr>
                        <td>
                            <a href="setques.jsp" style="color:red;">Back</a>
                        </td>
                    </tr> 
                </tbody>
            </table>


              </td>
        </tr>


        <tr><td><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
        </html:form>
   

    </body>
</html:html>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<link rel="stylesheet"type="text/css" media="all" href="design.css"/>

<html>

   <head>
         <title>Set Question</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
          
</style>
                 <%
      HttpSession hs = request.getSession();
      String uname = (String)hs.getAttribute("aname");
      String msg = request.getParameter("qmsg");
      String cmsg = request.getParameter("cmsg");
      int abc;
      if(uname!=null)
         abc = 0;
      else
          response.sendRedirect("temp.jsp");

    %>
              <SCRIPT language="JavaScript">
 function c1()
{
     document.forms[0].action="QuesRequestServ.do";
  document.forms[0].submit();

  }
  </SCRIPT>
   
    </head>

    <body background="images/back.jpg">

    
        <html:form action="/SetQuesServ" method="post">
          <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>
                
                <tr> <td> <br><br>
            <table align="center" style="color:#339966; height: 500px">
            

                <tbody>

                     <%
                 if(msg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Question Code Already Exists!!!!
                    </td>
                </tr>
                <%}%>

                  <%
                 if(cmsg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        Question Saved Successfully!!!!
                    </td>
                </tr>
                <%}%>


                    <tr>

                        <td>
                            Question Code:
                        </td>
                        <td><html:text property="qid"/></td>
                        <td><html:errors property="qid"/></td>
                    </tr>




                     <tr>
                        

                         <td> <input type="hidden" name="scode" value="${sessionScope.ssub}"
                        </td>
                    </tr>
                      <tr>
                         <td>Topic:</td>

                        <td> <html:select property="tcode">
                           
	                <c:forEach var="d" items="${sessionScope.st}">
                            <html:option value="${d.tcode}">${d.topic}</html:option>

	               </c:forEach>
                            </html:select>
                        </td>
                    </tr>
                     
                    
                    <tr>
                       <td>Question:</td>
                       <td><html:text property="ques"/></td>
                        <td><html:errors property="ques"/></td>
                    </tr>
                    <tr>
                        <td>Option 1:</td>
                        <td><html:text property="opt1"/></td>
                        <td><html:errors property="opt1"/></td>
                    </tr
                     <tr>
                        <td>Option 2:</td>
                        <td><html:text property="opt2"/></td>
                        <td><html:errors property="opt2"/></td>
                     </tr>
                     <tr>
                        <td>Option 3:</td>
                        <td><html:text property="opt3"/></td>
                        <td><html:errors property="opt3"/></td>
                     </tr>
                     <tr>
                        <td>Option 4:</td>
                        <td><html:text property="opt4" /></td>
                        <td><html:errors property="opt4"/></td>
                     </tr>
                     <tr>
                        <td>Correct answer:</td>
                        <td><html:text property="cans"/></td>
                        <td><html:errors property="cans"/></td>
                      </tr>
                      <tr>
                        <td>Marks:</td>
                        <td><html:text property="marks"/></td>
                        <td><html:errors property="marks"/></td>
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
                      <tr>
                          <td>  <input type="button" value="Set Image" name="B1" onclick="c1();"> </td>
                    </tr>
                    <tr>
                        <td><html:submit value="Save"/></td>

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
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page import="java.io.*,java.util.*" %>
<html:html lang="true">
    <head>
         <title>Result</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>
    <center>
    <body background="images/back.jpg">

     <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/usermenu.jsp"%></td>

                </tr>
                <tr><td> <br><br>  <h1 align="center" style="color:#333366"> You scored ${requestScope.marks} out of ${requestScope.total}</h1></td></tr>
                <tr> <td>
                        <br><br>
            <table  border="1" width="50%" align="center" style="color:#339966;>


            <tr bgcolor="#99CC99">  <th>Topic </th><th> Total marks </th><th> Obtained marks </th></tr>
        <%
                     HttpSession hs = request.getSession();
                     
                    int m =  ((Integer)hs.getAttribute("m")).intValue();
                    int min =  ((Integer)hs.getAttribute("min")).intValue();
                     int max =  ((Integer)hs.getAttribute("max")).intValue();
                     List l1 = (List)hs.getAttribute("topic");
                     List l2 = (List)hs.getAttribute("tmarks");
                     List l3 = (List)hs.getAttribute("obtained");
                    
                  %>

                    <%
                          int c= 0, ma=0,tm=0,om=0;
                         for(int i=1;i<=m;i++)
                     {

                    %>
                    <%
                      ma =  ((Integer)l3.get(c)).intValue() ;
                      tm =  ((Integer)l2.get(c)).intValue() ;
                      String tr="";
                      if(((ma*100)/tm)==max)
                        tr="<tr style=\" background-color:#CC3333;color:#330000 \">";
                      else if(((ma*100)/tm)==min)
                        tr="<tr style=\" background-color:#CC6633;color:#330000 \">";
                      else
                        tr="<tr style=\" background-color:#CC9999;color:#330000 \">";
                      out.print(tr);


                       for(int col=0;col<1;col++)
                          {

                        %>
                        <td><center> <%= l1.get(c) %></center>
                        </td>
                        <% } %>


                  <%
                       for(int col=0;col<1;col++)
                          {

                        %>
                        <td align="center"> <%= l2.get(c) %>
                        </td>
                        <% } %>

                      <%
                       for(int col=0;col<1;col++)
                          {

                        %>
                        <td align="center"> <%= l3.get(c) %>
                        </td>
                        <% } %>

	          </tr>
	     <%
             c++; }
             %>

        </table>


  </center>
    <br>
    <br>
    <table align="center">
        <tbody align="center">
            <tr>
    <div><div style="background-color: #CC3333; width:20px;height:20px;float:left; "></div>Strong area</div>
    </tr>
    <br>
    <br>
    <tr>  <div><div style="background-color: #CC6633; width:20px;height:20px;float:left; "></div>Weak area</div></tr> 
     </tbody>
    </table>
         </td>
        </tr>


        <tr><td> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>
   </body>

</html:html>

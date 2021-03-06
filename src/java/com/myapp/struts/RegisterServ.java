/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
import java.util.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nancy
 */
public class RegisterServ extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
              SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();
        Transaction tx = null;
        RequestDispatcher rd = null;
        ArrayList al=new ArrayList();
        HttpSession hs = request.getSession();
        int a;
        try
        {
          tx = session.beginTransaction();

          Login l =(Login)form;
          String uname = request.getParameter("uname");
          String pass = request.getParameter("pass");
          int n = pass.length();
           if(uname!=(""))
           {
              Login lg = (Login)session.get(Login.class, uname);
              if(lg!=null)
              response.sendRedirect("register.jsp?msg="+"OE");
           }
          else

              response.sendRedirect("register.jsp?nmsg="+"Required");

         
              if(n<8)
                  response.sendRedirect("register.jsp?pmsg="+"Invalid Password");
            
         
          tx.commit();
          al.add(l);
          hs.setAttribute("uname", uname);
          hs.setAttribute("pass", pass);
         
          response.sendRedirect("register2.jsp");
          session.close();
        }

        catch(Exception e)
        {
         // response.sendRedirect("errors.jsp?msg="+e.toString());
        }

        return mapping.findForward(SUCCESS);
    }
}

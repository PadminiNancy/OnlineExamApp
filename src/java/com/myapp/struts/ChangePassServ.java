/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;

/**
 *
 * @author Nancy
 */
public class ChangePassServ extends org.apache.struts.action.Action {
    
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
         HttpSession hs = request.getSession();
        String uname = (String)hs.getAttribute("uname");
         String pass = request.getParameter("pass");
         Login u = (Login)form;
         try
         {
          tx = session.beginTransaction();
          if(u.getPass().equals(u.getRpass()))
          {
           Login l = (Login)session.get(Login.class, uname);
           
           l.setPass(pass);
           session.saveOrUpdate(l);
            tx.commit();
          
           response.sendRedirect("login.jsp?cmsg="+"Password Changed");
          
          }
          else
          
           response.sendRedirect("changePass.jsp?msg="+"Password Mismatched");
         
          session.close();
         }
         catch(Exception e)
         {
         System.out.println(e.toString());
         }

        return mapping.findForward(SUCCESS);
    }
}

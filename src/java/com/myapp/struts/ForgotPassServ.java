/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.util.List;
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
public class ForgotPassServ extends org.apache.struts.action.Action {
    
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
           String uname = request.getParameter("uname");
           URegister ur = (URegister)form;
           try
           {
           tx = session.beginTransaction();
           Login lg = (Login)session.get(Login.class, uname);
           HttpSession hs = request.getSession();
           if(lg!=null)
           {
             Query q = session.createQuery("from URegister where uname=?");
             q.setString(0, uname);
             List l = q.list();
             URegister u = (URegister)l.get(0);
             if(ur.getEmail().equals(u.getEmail()))
             {
              response.sendRedirect("changePass.jsp");
              hs.setAttribute("uname", uname);
             }
             else
             {
              response.sendRedirect("forgotPass.jsp?msg="+"Invalid Data!!!");
             }
           }
           else
           {
           response.sendRedirect("forgotPass.jsp?msg="+"Invalid Data!!!");
           }
           tx.commit();
           session.close();

           }

           catch(Exception e)
           {

               response.sendRedirect("errors.jp?msg="+e.toString());
           }


        return mapping.findForward(SUCCESS);
    }
}

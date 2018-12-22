/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.util.List;
import javax.servlet.RequestDispatcher;
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
public class FetchAllQuestServ extends org.apache.struts.action.Action {
    
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
       String scode = request.getParameter("scode");
       int n = Integer.parseInt(request.getParameter("n"));
       RequestDispatcher rd = null;
       HttpSession hs = request.getSession();
       try{
           tx = session.beginTransaction();
           Query q=session.createQuery("From Question where scode=?");
           q.setString(0, scode);
           List l=q.list();
          hs.setAttribute("data", l);
          
          Query qt = session.createQuery("From Topic where scode=?");
          qt.setString(0, scode);
          List lt = qt.list();

          Query qqs = session.createQuery("from Subject where scode=?");
          qqs.setString(0, scode);
          List ls = qqs.list();

          tx.commit();
          session.close();
          hs.setAttribute("st", lt);
          hs.setAttribute("vsub", ls);
          switch(n)
          {
              case 0:
              {
                  
                  response.sendRedirect("viewquest.jsp");
              }
              break;
              case 1:
              {
                  hs.setAttribute("ssub", scode);
                 
                  response.sendRedirect("setques.jsp");
              }
              break;
              case 2:
              {
                  
                 response.sendRedirect("delques.jsp");
              }
              break;
          }
         
          
              
       }
       catch(Exception e){
               response.sendRedirect("errors.jsp?msg="+e.toString());
       }



        
        return mapping.findForward(SUCCESS);
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

//import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
//import org.apache.struts.upload.FormFile;

import org.hibernate.*;

/**
 *
 * @author Nancy
 */
public class SetQuesServ extends org.apache.struts.action.Action {
    
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
       Question q = (Question)form;
        String qid =  request.getParameter("qid");
       int marks = Integer.parseInt(request.getParameter("marks"));
         String scode = request.getParameter("scode");
         String ques = request.getParameter("ques");
         String opt1 = request.getParameter("opt1");
         String opt2 = request.getParameter("opt2");
         String opt3 = request.getParameter("opt3");
         String opt4 = request.getParameter("opt4");
         String cans = request.getParameter("cans");
         String clev = request.getParameter("clev");
       try{
           tx = session.beginTransaction();
          Topic t = new Topic();

          Question qu = (Question)session.get(Question.class, qid);
          if(qu!=null)
          {
           response.sendRedirect("setques.jsp?qmsg=Already exist");
          }
           q.setQid(qid);
           q.setScode(scode);

          t.setTcode(request.getParameter("tcode"));
           q.setTopic(t);
           q.setQues(ques);
           q.setOpt1(opt1);
           q.setOpt2(opt2);
           q.setOpt3(opt3);
           q.setOpt4(opt4);
           q.setCans(cans);
          q.setMarks(marks);
           q.setClev(clev);

           session.save(q);
           tx.commit();
           session.close();
          // hs.setAttribute("quid", qid+1);
           response.sendRedirect("setques.jsp?cmsg=Question Saved");
           
       }
       catch(Exception e){
          // response.sendRedirect("errors.jsp?msg="+e.toString());
       }

        return mapping.findForward(SUCCESS);
    }
}

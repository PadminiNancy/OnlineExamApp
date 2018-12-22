/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
import java.util.*;
/**
 *
 * @author Nancy
 */
public class TestHistoryServ extends org.apache.struts.action.Action {
    
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
        Result r = null;
         HttpSession hs = request.getSession();
        String uname = (String)hs.getAttribute("uname");

        int i;

        try
        {
         tx = session.beginTransaction();
         Query q = session.createQuery("from Result where uname=?");
          q.setString(0, uname);
         List l = q.list();
          ArrayList al = new ArrayList();
         Date td = new Date();
         SimpleDateFormat ot = new SimpleDateFormat("dd-MM-yyyy");
          String mt = ot.format(td);
          String ft = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("dd-MM-yyyy").parse(mt));
          int ch =Integer.parseInt(request.getParameter("cs"));
              hs.setAttribute("cs", ch);
           String tds[] = ft.split("-");
           int sd = Integer.parseInt(tds[0]);
        int sm = Integer.parseInt(tds[1]);
        int sy = Integer.parseInt(tds[2]);
        // System.out.println(mt);
        //  System.out.println(sm);
     switch(ch){
         case 1:
         {
        for(i=0;i<l.size();i++)
        {

         r = (Result)l.get(i);

        String rd = r.getDot();
        String nds = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(rd));

        String str[] = nds.split("-");
        int day = Integer.parseInt(str[0]);
        int month = Integer.parseInt(str[1]);
        int year = Integer.parseInt(str[2]);



        if(day>(sd-7)&&day<=sd&&sm==month&&sy==year)
        {
             r.setDot(nds);
         al.add(r);
        }
        }
        }
        break;
          case 2:
         {
        for(i=0;i<l.size();i++)
        {

         r = (Result)l.get(i);

        String rd = r.getDot();
        String nds = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(rd));

        String str[] = nds.split("-");
        int day = Integer.parseInt(str[0]);
        int month = Integer.parseInt(str[1]);
        int year = Integer.parseInt(str[2]);


        if((day==sd)&&sm==month&&sy==year)
        {
            r.setDot(nds);
            al.add(r);
        }
        }
        }
        break;
          case 3:
         {
        for(i=0;i<l.size();i++)
        {

         r = (Result)l.get(i);

        String rd = r.getDot();
        String nds = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(rd));

        String str[] = nds.split("-");
        int day = Integer.parseInt(str[0]);
        int month = Integer.parseInt(str[1]);
        int year = Integer.parseInt(str[2]);


        if(month==sm&&year==sy)
        {
         r.setDot(nds);
         al.add(r);
        }

        }
        }
        break;
        case 4:
         {
        for(i=0;i<l.size();i++)
        {

         r = (Result)l.get(i);

        String rd = r.getDot();
        String nds = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(rd));

        String str[] = nds.split("-");
        int day = Integer.parseInt(str[0]);
        int month = Integer.parseInt(str[1]);
        int year = Integer.parseInt(str[2]);
       r.setDot(nds);
       al.add(r);
        }
        }
        break;


     }
     request.setAttribute("history", al);
         tx.commit();
         session.close();
        }
        catch(Exception e)
        {
       System.out.println(e.toString());
        }



        return mapping.findForward(SUCCESS);
    }
}

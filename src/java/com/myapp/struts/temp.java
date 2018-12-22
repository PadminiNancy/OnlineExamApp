/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.hibernate.*;
import java.util.*;
/**
 *
 * @author Nancy
 */
public class temp {

    public static void main(String args[])
    {


          SessionFactory sf = HibernateUtil.getSessionFactory();
        Session session = sf.openSession();
        Transaction tx = null;
        Result r = null;

        int i;

        try
        {
         tx = session.beginTransaction();
         Query q = session.createQuery("from Result where uname=?");
         q.setString(0, "nitin");
         List l = q.list();
         Date td = new Date();
         SimpleDateFormat ot = new SimpleDateFormat("dd-MM-yyyy");
          String mt = ot.format(td);
          String ft = new SimpleDateFormat("dd-MM-yyyy").format(new SimpleDateFormat("dd-MM-yyyy").parse(mt));
          int ch = 4;
          
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
        System.out.println(day+"-"+month+"-"+year);

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
        System.out.println(day+"-"+month+"-"+year);

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


        if(sm==month&&sy==year)
        System.out.println(day+"-"+month+"-"+year);

        }
        }

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



        
        System.out.println(day+"-"+month+"-"+year);

        }
        }
        break;


     }
         tx.commit();
         session.close();
        }
        catch(Exception e)
        {
       System.out.println(e.toString());
        }

    }

}

package com.hcc.tags;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.util.Calendar;

public class BannerInfoTag2 extends SimpleTagSupport {
	private String message2;
	   public void setMessage2(String msg) {
	      this.message2 = msg;
	   }
	   
	   StringWriter sw = new StringWriter();
	
	 public void doTag() throws JspException, IOException {
		 JspWriter out = getJspContext().getOut();
	    Calendar hollyday = Calendar.getInstance();
	     hollyday.set(Calendar.DAY_OF_MONTH,25);
	     hollyday.set(Calendar.MONTH,12);
	     hollyday.set(Calendar.YEAR,2020);
	     
	     Calendar today = Calendar.getInstance();
	     long diff = hollyday.getTimeInMillis() - today.getTimeInMillis();
	     long days = (diff/1000)/(24*60*60)-30;
	         
	         out.print(days+" days "+message2);
	         System.out.println("Tag2 printed here");
	   
	        getJspBody().invoke(sw);
	         getJspContext().getOut().println(sw.toString());
	      }
	        
	   }

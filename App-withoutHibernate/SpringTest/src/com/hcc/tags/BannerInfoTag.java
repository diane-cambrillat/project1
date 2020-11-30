package com.hcc.tags;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Calendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class BannerInfoTag extends SimpleTagSupport {
	private String message;
	   public void setMessage(String msg) {
	      this.message = msg;
	   }
	   
	   StringWriter sw = new StringWriter();
	
	 public void doTag() throws JspException, IOException {

	         JspWriter out = getJspContext().getOut();
	         out.print("Christmas is coming soom! Check our seasonal recipes!");
	         System.out.println("Tag printed here");

	        getJspBody().invoke(sw);
	         getJspContext().getOut().println(sw.toString());
	      
	        
	   }

}

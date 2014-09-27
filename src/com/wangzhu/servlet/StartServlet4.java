package com.wangzhu.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StartServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		System.out
				.println("StartServlet4 service(HttpServletRequest,HttpServletResponse)");
		super.service(arg0, arg1);
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1)
			throws ServletException, IOException {
		System.out
				.println("StartServlet4 service(ServletRequest,ServletResponse)");
		super.service(arg0, arg1);
	}

	@Override
	public void destroy() {
		System.out.println("StartServlet4 destroy");
		super.destroy();
	}

	@Override
	public void init() throws ServletException {
		System.out.println("StartServlet4 init");
		System.out.println(this.getInitParameter("initName"));// demoServlet
		super.init();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("StartServlet4 init(ServletConfig)");
		System.out.println(config.getInitParameter("initName"));// demoServlet
		// System.out.println(this.getInitParameter("initName"));//NullPointerException
		super.init(config);
	}

}

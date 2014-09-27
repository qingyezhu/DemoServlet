package com.wangzhu.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormServlet
 */
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormServlet() {
		super();
	}

	/**
	 * 默认是使用ISO-8859-1这种方式接收数据。
	 * 解决方式：在接收数据后，先获取其ISO-8859-1字符编码方式的字节数组，在通过该字节数组以指定的编码方式构建字符串 来解决中文乱码问题
	 * 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String ageGroup = request.getParameter("ageGroup");
		String[] hobby = request.getParameterValues("hobby");
		username = new String(username.getBytes("ISO-8859-1"), "GBK");
		System.out.println("username: " + username);
		System.out.println("ageGroup: " + ageGroup);
		System.out.println("hobby: "
				+ new String(Arrays.toString(hobby).getBytes("ISO-8859-1"),
						"GBK"));
		request.setAttribute("data", username);
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

	/**
	 * 科幻段以哪种编码方式提交，服务端的request对象就用以该编码方式接收
	 * 通过request.setCharacterEncoding("GBK");设置服务器以GBK编码方式解决中文乱码问题
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		String username = request.getParameter("username");
		String ageGroup = request.getParameter("ageGroup");
		String[] hobby = request.getParameterValues("hobby");
		System.out.println("username: " + username);
		System.out.println("ageGroup: " + ageGroup);
		System.out.println("hobby: " + Arrays.toString(hobby));
		request.setAttribute("data", username);
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

}

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
	 * Ĭ����ʹ��ISO-8859-1���ַ�ʽ�������ݡ�
	 * �����ʽ���ڽ������ݺ��Ȼ�ȡ��ISO-8859-1�ַ����뷽ʽ���ֽ����飬��ͨ�����ֽ�������ָ���ı��뷽ʽ�����ַ��� �����������������
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
	 * �ƻö������ֱ��뷽ʽ�ύ������˵�request��������Ըñ��뷽ʽ����
	 * ͨ��request.setCharacterEncoding("GBK");���÷�������GBK���뷽ʽ���������������
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

package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.GuestbookDao;
import com.javaex.vo.GuestbookVo;

@WebServlet("/gs")
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GuestbookServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String actionName = request.getParameter("a");

		if ("add".equals(actionName)) {

			System.out.println("add항목 들어왔음");

			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			String content = request.getParameter("content");

			GuestbookVo vo = new GuestbookVo(name, pass, content);
			GuestbookDao dao = new GuestbookDao();
			dao.add(vo);

			response.sendRedirect("/gb/gs");

		} else if ("deleteform".equals(actionName)) {

			// delete전 비밀번호 확인하는 부분으로 사용자 입력 값 가져오기
			System.out.println("deleteform");

			RequestDispatcher rd = request.getRequestDispatcher("deleteform.jsp");
			rd.forward(request, response);

		} else if ("delete".equals(actionName)) {
			GuestbookDao dao = new GuestbookDao();

			String pw = request.getParameter("password");
			int no = Integer.parseInt(request.getParameter("no"));

			dao.delete(pw, no);

			response.sendRedirect("/gb/gs");

		} else if ("updateform".equals(actionName)) {

			System.out.println("updateform");
			
			RequestDispatcher rd = request.getRequestDispatcher("updateform.jsp");
			rd.forward(request, response);

		} else if ("update".equals(actionName)) {

			System.out.println("update");
			String name = request.getParameter("name");
			String pw = request.getParameter("pass");
			String con = request.getParameter("content");
			int no = Integer.parseInt(request.getParameter("no"));

			GuestbookVo vo = new GuestbookVo(no, name, pw, con);
			GuestbookDao dao = new GuestbookDao();
			dao.update(vo);
			
			response.sendRedirect("/gb/gs");

		} else {

			System.out.println("리스트로");

			GuestbookDao dao = new GuestbookDao();
			List<GuestbookVo> list = dao.getList();

			request.setAttribute("list", list);

			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

}

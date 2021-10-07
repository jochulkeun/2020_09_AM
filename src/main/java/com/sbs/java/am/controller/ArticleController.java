package com.sbs.java.am.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sbs.java.am.service.ArticleService;
import com.sbs.java.am.util.DBUtil;
import com.sbs.java.am.util.SecSql;

public class ArticleController {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private Connection con;
	private ArticleService articleService;
	
	
	public ArticleController(HttpServletRequest request,HttpServletResponse response, Connection con) {
		this.request = request;
		this.response = response;
		
		
		articleService = new ArticleService(con);
	}



	public void actionList() throws ServletException, IOException {
		
		
		int page =1;
		
		if(request.getParameter("page") != null && request.getParameter("page").length() !=0) {
			try {
			
				page = Integer.parseInt(request.getParameter("page"));
				
			}
			catch(NumberFormatException e) {
				
			}
		}
		int totalpage = ArticleService.getForPrintListTotalPage();
		
		List<Map<String,Object>> articleRows= ArticleService.getForPrintArticleRows(page);
		
		request.setAttribute("articleRows", articleRows);
		request.setAttribute("page",page);
		request.setAttribute("totalpage",totalpage);
		request.getRequestDispatcher("/jsp/article/list.jsp").forward(request, response);
		
	}

}

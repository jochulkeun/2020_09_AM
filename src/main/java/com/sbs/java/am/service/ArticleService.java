package com.sbs.java.am.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.sbs.java.am.dao.ArticleDao;
import com.sbs.java.am.util.DBUtil;
import com.sbs.java.am.util.SecSql;

public class ArticleService {
	private static Connection con;
	private static ArticleDao articleDao;
	
	
	
	public ArticleService(Connection con) {
		this.con = con;
		this.articleDao =new ArticleDao();
	}
	
	public static int getItemsInAPage() {
		return 3; 
	}

	public static int getForPrintListTotalPage() {
		int itemsInAPage = getItemsInAPage();

		int totalCount = articleDao.getTotalCount(con); 
		
		int totalpage = (int)Math.ceil((double)totalCount/itemsInAPage);
		
		
		return totalpage;
	}



	public static List<Map<String, Object>> getForPrintArticleRows(int page) {
		int itemsInAPage = getItemsInAPage();
		int limitFrom = (page - 1) * itemsInAPage;
		

		List<Map<String, Object>> articleRows = articleDao.getArticleRows(itemsInAPage,limitFrom, con);
		return articleRows;
	}}

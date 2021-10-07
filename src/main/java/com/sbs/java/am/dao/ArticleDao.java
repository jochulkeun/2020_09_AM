package com.sbs.java.am.dao;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.sbs.java.am.util.DBUtil;
import com.sbs.java.am.util.SecSql;

public class ArticleDao {

	public int getTotalCount(Connection con) {
		
		
		SecSql sql = SecSql.from("SELECT COUNT(*) AS cnt");
		sql.append("FROM article");
		
		
		int totalCount = DBUtil.selectRowIntValue(con, sql);
		return totalCount;
	}



	public List<Map<String, Object>> getArticleRows(int itemsInAPage, int limitFrom,Connection con) {
		SecSql sql = SecSql.from("SELECT *");
		sql.append("FROM article");
		sql.append("ORDER BY id DESC");
		sql.append("LIMIT ?,?",limitFrom,itemsInAPage);

		
		System.out.println(sql);
		
		List<Map<String, Object>> articleRows = DBUtil.selectRows(con, sql);
		return articleRows;
		
	}

}

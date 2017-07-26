package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class Testmain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GuestbookDao dao = new GuestbookDao();
		List<GuestbookVo> list = dao.getList();

		for(GuestbookVo v:list){
		System.out.println(v.toString());
		}

	}

}

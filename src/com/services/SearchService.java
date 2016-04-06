package com.services;

import java.util.ArrayList;

import com.dao.SearchDao;
import com.domain.Travel;

public class SearchService {

	public ArrayList<Travel> searchByName(String pid,String destination) {
		// TODO Auto-generated method stub
		Travel travel=new Travel();
		ArrayList<Travel> searchList=new ArrayList<Travel>();
		SearchDao searchDao=new SearchDao();
		searchList=searchDao.searchByName(pid,destination);
		return searchList;
		
	}

	public Travel fetchBookingDetail(int travelid) {
		// TODO Auto-generated method stub
		Travel bookTravel=new Travel();
		bookTravel=SearchDao.fetchBookingDetail(travelid);
		return bookTravel;
		
	}

}

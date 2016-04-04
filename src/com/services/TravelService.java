package com.services;

import com.dao.TravelDao;
import com.domain.Travel;

public class TravelService {
	
	public boolean postTravel(Travel travel)
	{
		boolean posted;
		System.out.println(travel.getUserid());
		int pricePerUnit=travel.getPrice();
		long distance=travel.getDistance();
		int capacity=travel.getCapacity();
		int pricePerPerson=(int) (pricePerUnit*distance/capacity);
		travel.setPrice(pricePerPerson);
		posted=TravelDao.postTravel(travel);
		System.out.println("psted in service class"+posted);
		return posted;
	}

	public int fetchUserID(String firstname) {
		// TODO Auto-generated method stub
		
		System.out.println("Service travel::"+firstname);
		int userid=TravelDao.fetchUserId(firstname);
		return userid;
	}

}

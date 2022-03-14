package com.FinalProject.Repo;

import java.util.List;

import com.FinalProject.Entity.Dealer;

public interface AdminRepo {
	
	public boolean AddDealers(Dealer dealer);
	public List<Dealer> ShowAllDealer();

}

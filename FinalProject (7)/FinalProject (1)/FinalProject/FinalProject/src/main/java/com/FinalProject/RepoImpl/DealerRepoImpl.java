package com.FinalProject.RepoImpl;

import org.springframework.stereotype.Component;

import com.FinalProject.Repo.DealerRepo;

@Component
public class DealerRepoImpl implements DealerRepo{
	
	private int dealerId;
	
	public int getDealerId() {
		return dealerId;
	}

	public void setDealerId(int dealerId) {
		this.dealerId = dealerId;
	}

}

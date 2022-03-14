package com.FinalProject.RepoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.FinalProject.Entity.Dealer;
import com.FinalProject.Repo.AdminRepo;

@Component
public class AdminRepoImpl implements AdminRepo {

	@Autowired
	JdbcTemplate jt;

	@Override
	public boolean AddDealers(Dealer dealer) {
		// TODO Auto-generated method stub
		String str= "Insert into Dealers(name, emailId, dob, gender, address, mobileNo) values(?,?,?,?,?,?)";
		try
		{
		int r= jt.update(str, new Object[] {dealer.getName(), dealer.getEmailId(), dealer.getDob(), dealer.getGender(), dealer.getAddress(),dealer.getMobileNo()});
				if(r>=1)
					   return true;
					else
						return false;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@Override
	public List<Dealer> ShowAllDealer() {
		
		String sql = "Select * from Dealers;";
		try {
			List<Dealer> dealersAll = jt.query(sql, new BeanPropertyRowMapper(Dealer.class));
			return dealersAll;
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

}

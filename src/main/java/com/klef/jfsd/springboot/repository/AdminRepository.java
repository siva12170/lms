package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;



@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	
	
	@Query("select a from Admin a where a.id=?1 and a.password=?2 ")
	public Admin checkadminlogin(Long id, String pwd);
	
	// @Query("select a from Admin a WHERE a.id = id?1")
	// public Admin findByrole(long id);
	
}

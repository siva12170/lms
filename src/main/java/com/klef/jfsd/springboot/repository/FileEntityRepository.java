package com.klef.jfsd.springboot.repository;

import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.FileEntity;

@Repository
public interface FileEntityRepository extends JpaRepository<FileEntity, Long>{

	 @Query("SELECT c FROM FileEntity c WHERE c.course.id = ?1")
	 public List<FileEntity> all(long id);
	 
	
}

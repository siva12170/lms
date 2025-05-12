package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Likes;

@Repository
public interface LikesRepository extends JpaRepository<Likes, Long>{
	
	 @Query("SELECT COUNT(l) > 0 FROM Likes l WHERE l.comment.id = ?1 AND l.teacher.id = ?2")
	 public boolean existsByCommentIdAndCustomerId(Long commentId, Long customerId);

}

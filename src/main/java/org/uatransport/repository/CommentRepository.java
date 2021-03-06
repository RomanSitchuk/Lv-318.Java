package org.uatransport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.uatransport.entity.Comment;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Integer> {

    List<Comment> findByTransitId(Integer transitId);

    List<Comment> findByUserId(Integer userId);

    List<Comment> findByTransitIdAndLevelOrderByCreatedDateDesc(Integer transitId, Integer level);

    List<Comment> findByParentCommentIdOrderByCreatedDateAsc(Integer parentId);

}

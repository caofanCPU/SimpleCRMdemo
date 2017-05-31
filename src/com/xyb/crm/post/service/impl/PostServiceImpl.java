package com.xyb.crm.post.service.impl;

import java.util.List;

import com.xyb.crm.department.domain.CrmDepartment;
import com.xyb.crm.post.dao.PostDao;
import com.xyb.crm.post.domain.CrmPost;
import com.xyb.crm.post.service.PostService;

public class PostServiceImpl implements PostService {
	private PostDao postDao;
	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}
	
	@Override
	public List<CrmPost> findAll(CrmDepartment department) {
		return postDao.findAll(department);
	}
}

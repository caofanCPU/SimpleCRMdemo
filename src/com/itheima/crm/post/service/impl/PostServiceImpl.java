package com.itheima.crm.post.service.impl;

import java.util.List;

import com.itheima.crm.department.domain.CrmDepartment;
import com.itheima.crm.post.dao.PostDao;
import com.itheima.crm.post.domain.CrmPost;
import com.itheima.crm.post.service.PostService;

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

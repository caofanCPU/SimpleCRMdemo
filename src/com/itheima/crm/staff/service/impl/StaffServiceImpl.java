package com.itheima.crm.staff.service.impl;

import java.util.List;

import com.itheima.crm.staff.dao.StaffDao;
import com.itheima.crm.staff.domain.CrmStaff;
import com.itheima.crm.staff.service.StaffService;
import com.itheima.crm.utils.MyStringUtils;

public class StaffServiceImpl implements StaffService {
	private StaffDao staffDao;
	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}
	@Override
	public CrmStaff login(CrmStaff staff) {
		// MD5加密 密码
		String logginPwd = MyStringUtils.getMD5Value(staff.getLoginPwd());
		return staffDao.find(staff.getLoginName(), logginPwd);
	}
	@Override
	public List<CrmStaff> findAllStaff() {
		return this.staffDao.findAll();
	}
	@Override
	public CrmStaff findById(String staffId) {
		return this.staffDao.findById(staffId);
	}
	
	@Override
	public void updateStaff(CrmStaff staff) {
		/* 1 方法1：判断密码是否32长度，
		 * * 如果是，密码没有修改，之前（加密后的）
		 * * 如果不是，密码已经修改了，之后（需要加密）
		 */
		
		/* 2 方式2：不更新密码
		 * * dao.update(staff)，默认更新所有的数据
		 * * CrmStaff.hbm.xml 配置密码不参加更新 , <property name="loginPwd" update="false"></property>
		 */
		
		/* 3 方法3：先通过id查询，比较密码是否一致
		 * * 如果不一致，对密码进行MD5加密
		 * * 将出OID之外的数据，全部设置
		 * * 原因：一级缓存被修改了，与快照不一致，默认情况下，当提交，自动执行update语句。
		 */
		CrmStaff findStaff = staffDao.findById(staff.getStaffId());
		if(! findStaff.getLoginPwd().equals(staff.getLoginPwd())){
			findStaff.setLoginPwd(MyStringUtils.getMD5Value(staff.getLoginPwd()));
		}
		findStaff.setLoginName(staff.getLoginName());
		findStaff.setStaffName(staff.getStaffName());
		findStaff.setGender(staff.getGender());
		findStaff.setOnDutyDate(staff.getOnDutyDate());
		findStaff.setPost(staff.getPost());
		
	}

}

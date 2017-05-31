package com.xyb.crm.staff.service;

import java.util.List;

import com.xyb.crm.staff.domain.CrmStaff;

public interface StaffService {
	
	/**
	 * 登录
	 * @param staff
	 * @return
	 */
	public CrmStaff login(CrmStaff staff);
	
	/**
	 * 查询所有员工
	 * @return
	 */
	public List<CrmStaff> findAllStaff();
	
	/**
	 * 通过id查询
	 * @param staffId
	 * @return
	 */
	public CrmStaff findById(String staffId);

	/**
	 * 更新员工
	 * @param staff
	 */
	public void updateStaff(CrmStaff staff);

    public void addOrEdit(CrmStaff staff);

}

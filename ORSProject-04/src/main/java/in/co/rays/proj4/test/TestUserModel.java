package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import in.co.rays.proj4.bean.UserBean;
import in.co.rays.proj4.model.UserModel;

public class TestUserModel {
	public static UserModel model = new UserModel();

	public static void main(String[] args) throws Exception {
		// testadd();
		// testupdate();
		// testdelete();
	   	// testfindBypk();

	}

	private static void testfindBypk() {
		UserBean bean = model.findBypk(1);

		System.out.println(bean.getId());
		System.out.println(bean.getFirstName());
		System.out.println(bean.getLastName());
		System.out.println(bean.getLogin());
		System.out.println(bean.getPassword());
		System.out.println(bean.getDob());
		System.out.println(bean.getMobileNo());
		System.out.println(bean.getRoleId());
		System.out.println(bean.getUnsuccessfulLogin());
		System.out.println(bean.getGender());
		System.out.println(bean.getLastLogin());
		System.out.println(bean.getUserLock());
		System.out.println(bean.getRegisteredIp());
		System.out.println(bean.getLastLoginIp());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
		

	}

	private static void testdelete() {
		model.delete(7);

	}

	private static void testupdate() throws ParseException {
		UserBean bean = new UserBean();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		bean.setFirstName("Anjali");
		bean.setLastName("Mehta");
		bean.setLogin("anjali@gmail.com");
		bean.setPassword("anjali@123");
		bean.setDob(sdf.parse("1998-03-18"));
		bean.setMobileNo("9876543215");
		bean.setRoleId(2l);
		bean.setUnsuccessfulLogin(2);
		bean.setGender("Female");
		bean.setLastLogin(sdf.parse("2026-09-24"));
		bean.setUserLock("N");
		bean.setRegisteredIp("192.168.1.15");
		bean.setLastLoginIp("198.168.1.15");
		bean.setCreatedBy("Chinmay Khede");
		bean.setModifiedBy("Chinmay Khede");
		bean.setId(6);
		model.update(bean);

	}

	private static void testadd() throws ParseException {
		UserBean bean = new UserBean();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		bean.setFirstName("Anjali");
		bean.setLastName("Meehta");
		bean.setLogin("anjali@gmail.com");
		bean.setPassword("anjali@123");
		bean.setDob(sdf.parse("1998-03-18"));
		bean.setMobileNo("9876543215");
		bean.setRoleId(2l);
		bean.setUnsuccessfulLogin(2);
		bean.setGender("Female");
		bean.setLastLogin(sdf.parse("2026-09-24"));
		bean.setUserLock("N");
		bean.setRegisteredIp("192.168.1.15");
		bean.setLastLoginIp("198.168.1.15");
		bean.setCreatedBy("Chinmay Khede");
		bean.setModifiedBy("Chinmay Khede");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}

}

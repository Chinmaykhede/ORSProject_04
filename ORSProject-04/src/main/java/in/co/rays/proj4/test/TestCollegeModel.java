package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.rays.proj4.bean.CollegeBean;
import in.co.rays.proj4.model.CollegeModel;

public class TestCollegeModel {

	public static CollegeModel model = new CollegeModel();

	public static void main(String[] args) {
		// testadd();
		// testupdate();
		 //testdelete();
		//testfindBypk();
		//testSearch();
	}

	private static void testfindBypk() {
		CollegeBean bean = model.findBypk(1);
		System.out.println(bean.getName());
		System.out.println(bean.getAddress());
		System.out.println(bean.getState());
		System.out.println(bean.getCity());
		System.out.println(bean.getPhoneNo());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());

	}

	private static void testdelete() {
		model.delete(8);
	}

	private static void testupdate() {
		CollegeBean bean = new CollegeBean();
		bean.setId(6);
		bean.setName("Sage University");
		bean.setAddress("Rau Bypass");
		bean.setState("Madhya Pradesh");
		bean.setCity("Indore");
		bean.setPhoneNo("9876543217");
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.update(bean);
	}

	private static void testadd() {
		CollegeBean bean = new CollegeBean();

		bean.setName("Devi Ahilya Academy");
		bean.setAddress("Regal squer");
		bean.setState("Madhya Pradesh");
		bean.setCity("Indore");
		bean.setPhoneNo("9876543200");
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}
	private static void testSearch() {
		CollegeBean bean = new CollegeBean();
		bean.setName("IPS");

		List<CollegeBean> list = model.search(bean, 1, 5);
		
		Iterator<CollegeBean> it = list.iterator();
		
		while(it.hasNext()) {
			bean = (CollegeBean)it.next();
			System.out.println(bean.getId());
			System.out.println(bean.getName());
			System.out.println(bean.getAddress());
			System.out.println(bean.getCity());
			System.out.println(bean.getState());
			System.out.println(bean.getCreatedBy());
			System.out.println(bean.getModifiedBy());
			System.out.println(bean.getCreatedDatetime());
			System.out.println(bean.getModifiedDatetime());
			System.out.println("----------------------------------------");
		}
		 
	}

}

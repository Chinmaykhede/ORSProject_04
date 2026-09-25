package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.rays.proj4.bean.FacultyBean;
import in.co.rays.proj4.model.FacultyModel;

public class TestFacultyModel {

	public static FacultyModel model = new FacultyModel();

	public static void main(String[] args) throws Exception {
//			testAdd();
//			testUpdate();
//			testDelete();
//		testFindByPK();
//			testSearch();
	}

	private static void testAdd() throws Exception {
		FacultyBean bean = new FacultyBean();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		// bean.setId(1);
		bean.setCollegeId(6);
		bean.setCollegeName("Sager College");
		bean.setFirstName("Sidharth");
		bean.setLastName("Jain");
		bean.setMobileNo("8876543217");
		bean.setEmail("sidharth@gmail.com");
		bean.setAddress("Indore");
		bean.setGender("Male");
		bean.setDateOfBirth(new java.sql.Date(format.parse("2002-02-23").getTime()));
		bean.setCreatedBy("Chinmay");
		bean.setModifiedBy("Chinmay");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}

	private static void testUpdate() throws ParseException {
		FacultyBean bean = new FacultyBean();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		bean.setId(1);
		bean.setCollegeId(1);
		bean.setCollegeName("IPS");
		bean.setFirstName("Harshit");
		bean.setLastName("Gupta");
		bean.setMobileNo("harshit@gmail.com");
		bean.setEmail("8876543210");
		bean.setAddress("Rajendra Nagar");
		bean.setGender("Male");
		bean.setDateOfBirth(new java.sql.Date(format.parse("1997-04-25").getTime()));
		bean.setCreatedBy("Chinmay");
		bean.setModifiedBy("Chinmay");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.update(bean);

	}

	private static void testDelete() {
		model.delete(8);

	}

	private static void testFindByPK() {
		FacultyBean bean = model.findBypk(2);
		System.out.println(bean.getId());
		System.out.println(bean.getFirstName());
		System.out.println(bean.getLastName());
		System.out.println(bean.getAddress());
		System.out.println(bean.getCollegeId());
		System.out.println(bean.getCollegeName());
		System.out.println(bean.getEmail());
		System.out.println(bean.getMobileNo());
		System.out.println(bean.getGender());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
	}

	private static void testSearch() {
		FacultyBean bean = new FacultyBean();
		List<FacultyBean> list = model.search(bean, 1, 5);
		Iterator<FacultyBean> it = list.iterator();
		while (it.hasNext()) {
			bean = it.next();
			System.out.println(bean.getId());
			System.out.println(bean.getFirstName());
			System.out.println(bean.getLastName());
			System.out.println(bean.getCollegeId());
			System.out.println(bean.getCollegeName());
			System.out.println(bean.getAddress());
			System.out.println(bean.getEmail());
			System.out.println(bean.getMobileNo());
			System.out.println(bean.getGender());
			System.out.println(bean.getCreatedBy());
			System.out.println(bean.getModifiedBy());
			System.out.println(bean.getCreatedDatetime());
			System.out.println(bean.getModifiedDatetime());
			System.out.println("--------------------------------");
		}
	}
}

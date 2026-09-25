package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import in.co.rays.proj4.bean.StudentBean;
import in.co.rays.proj4.model.StudentModel;

public class TestStudentModel {

	public static StudentModel model = new StudentModel();

	public static void main(String[] args) throws ParseException {
		// testAdd();
		// testUpdate();
		// testDelete();
		//testFindByPk();
		 testSearch();
	}

	private static void testAdd() throws ParseException {
		StudentBean bean = new StudentBean();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		bean.setId(1);
		bean.setCollegeId(5l);
		bean.setCollegeName("Sage University");
		bean.setFirstName("Sidharth");
		bean.setLastName("Jain");
		bean.setDateOfBirth(new java.sql.Date(format.parse("2005-02-28").getTime()));
		bean.setMobileNo("8876543216");
		bean.setEmail("sidharth@gmail.com");
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}

	private static void testUpdate() throws ParseException {
		StudentBean bean = new StudentBean();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		bean.setId(3);
		bean.setCollegeId(3l);
		bean.setCollegeName("Holkar Science College");
		bean.setFirstName("Karuna");
		bean.setLastName("Chouhan");
		bean.setDateOfBirth(new java.sql.Date(sdf.parse("2003-05-12").getTime()));
		bean.setMobileNo("8876543212");
		bean.setEmail("karuna@gmail.com");
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.update(bean);

	}

	private static void testDelete() {
		model.delete(1);

	}

	private static void testFindByPk() {
		StudentBean bean = model.findBypk(3);
		System.out.println(bean.getId());
		System.out.println(bean.getCollegeId());
		System.out.println(bean.getCollegeName());
		System.out.println(bean.getFirstName());
		System.out.println(bean.getLastName());
		System.out.println(bean.getDateOfBirth());
		System.out.println(bean.getMobileNo());
		System.out.println(bean.getEmail());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
	}

	private static void testSearch() {

	}
}

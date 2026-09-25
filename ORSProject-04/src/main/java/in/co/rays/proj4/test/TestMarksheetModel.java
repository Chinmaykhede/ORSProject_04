package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.rays.proj4.bean.MarksheetBean;
import in.co.rays.proj4.model.MarksheetModel;

public class TestMarksheetModel {

	private static MarksheetModel model = new MarksheetModel();

	public static void main(String[] args) {

		// testAdd();
		// testUpdate();
		// testDelete();
		// testFindByPk();
		//testSearch();
	}

	private static void testAdd() {
		MarksheetBean bean = new MarksheetBean();
		// bean.setId(2);
		bean.setRollNo("108");
		bean.setStudentId(8l);
		bean.setName("Sidharth Jain");
		bean.setPhysics(55);
		bean.setChemistry(44);
		bean.setMaths(58);
		bean.setCreatedBy("Chinmay");
		bean.setModifiedBy("Chinmay");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}

	private static void testUpdate() {
		MarksheetBean bean = new MarksheetBean();
		bean.setId(5);
		bean.setRollNo("105");
		bean.setStudentId(5l);
		bean.setName("Arti Patel");
		bean.setPhysics(30);
		bean.setChemistry(55);
		bean.setMaths(65);
		bean.setCreatedBy("Hema");
		bean.setModifiedBy("Hema");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.update(bean);
	}

	private static void testDelete() {
		model.delete(1);
	}

	private static void testFindByPk() {
		MarksheetBean bean = model.findBypk(2);
		System.out.println(bean.getId());
		System.out.println(bean.getRollNo());
		System.out.println(bean.getName());
		System.out.println(bean.getPhysics());
		System.out.println(bean.getChemistry());
		System.out.println(bean.getMaths());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
	}

	private static void testSearch() {
		MarksheetBean bean = new MarksheetBean();
		// bean.setName("Chinmay");

		List<MarksheetBean> list = model.search(bean, 1, 5);

		Iterator<MarksheetBean> it = list.iterator();

		while (it.hasNext()) {
			bean = it.next();
			System.out.println(bean.getId());
			System.out.println(bean.getName());
			System.out.println(bean.getRollNo());
			System.out.println(bean.getPhysics());
			System.out.println(bean.getChemistry());
			System.out.println(bean.getMaths());
			System.out.println(bean.getChemistry());
			System.out.println(bean.getModifiedBy());
			System.out.println(bean.getCreatedDatetime());
			System.out.println(bean.getModifiedDatetime());

			System.out.println("---------------------------------");
		}
	}
}

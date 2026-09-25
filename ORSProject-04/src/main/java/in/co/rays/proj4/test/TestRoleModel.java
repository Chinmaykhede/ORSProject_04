package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.rays.proj4.bean.RoleBean;
import in.co.rays.proj4.model.RoleModel;

public class TestRoleModel {
	public static RoleModel model = new RoleModel();

	public static void main(String[] args) {
		// testadd();
		// testupdate();
		// testdelete();
		// testfindBypk();
		// testsearch();
	}

	private static void testsearch() {
		RoleBean bean = new RoleBean();
		List<RoleBean> list = model.search(bean, 1, 5);

		Iterator<RoleBean> it = list.iterator();

		while (it.hasNext()) {
			
			bean = (RoleBean)it.next();
			
		System.out.println(bean.getId());
		System.out.println(bean.getName());
		System.out.println(bean.getDescription());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
		System.out.println("------------------");
		}	
	}

	private static void testfindBypk() {
		RoleBean bean = model.findBypk(1);
		System.out.println(bean.getName());
		System.out.println(bean.getDescription());
		System.out.println(bean.getCreatedBy());
		System.out.println(bean.getModifiedBy());
		System.out.println(bean.getCreatedDatetime());
		System.out.println(bean.getModifiedDatetime());
	}

	private static void testadd() {
		RoleBean bean = new RoleBean();
		bean.setId(1l);
		bean.setName("Mareksheet");
		bean.setDescription("Mareksheet Role");
		bean.setCreatedBy("Chinmay khede");
		bean.setModifiedBy("Chinmay khede");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		model.add(bean);

	}

	private static void testupdate() {
		RoleBean bean = new RoleBean();

		bean.setName("Marksheet");
		bean.setDescription("Marksheet Role");
		bean.setCreatedBy("Chinmay khede");
		bean.setModifiedBy("Chinmay khede");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		bean.setId(6l);

		model.update(bean);

	}

	private static void testdelete() {
		RoleBean bean = new RoleBean();
		model.delete(6);
	}
}

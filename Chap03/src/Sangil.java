

public class Sangil extends Student{

	public static void main(String[] args) {
		Student std01 = new Student();
		
		std01.setGrade(2);
		std01.setName("��¹�");
		System.out.println(std01.getGrade()+"�г� "+std01.getName());
		std01.setName("�붯��");
		std01.getName();
		String UserName = std01.getName();
		
		Student std02 = new Student();
		std02.setGrade(1);
		std02.setName("ȫ�浿");
		System.out.println(std02.getGrade()+"�г� "+std02.getName());
	}

}

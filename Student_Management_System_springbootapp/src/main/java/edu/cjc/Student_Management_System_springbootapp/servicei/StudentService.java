package edu.cjc.Student_Management_System_springbootapp.servicei;

import java.util.List;

import edu.cjc.Student_Management_System_springbootapp.model.Student;

public interface StudentService {

	public void saveStudentDetail(Student student);


	public List<Student> viewAllData();
	


	public void onDelete(int studentId);


	public Student getsingleStudent(int studentId);


	public void payfees(int studentId, float amount);



	public void changebatch(int studentId, String batchNumber);


	


	


	
	

	
}

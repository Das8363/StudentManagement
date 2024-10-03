package edu.cjc.Student_Management_System_springbootapp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.Student_Management_System_springbootapp.model.Student;
import edu.cjc.Student_Management_System_springbootapp.repositery.StudentRepositery;
import edu.cjc.Student_Management_System_springbootapp.servicei.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepositery sr;

	@Override
	public void saveStudentDetail(Student student) {

		sr.save(student);

	}

	@Override
	public List<Student> viewAllData() {
		
		return sr.findAll();
	}

	
	@Override
	public void onDelete(int studentId) {
	
		sr.deleteById(studentId);
		
	}

	
}

package edu.cjc.Student_Management_System_springbootapp.repositery;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.Student_Management_System_springbootapp.model.Student;
@Repository
public interface StudentRepositery extends JpaRepository<Student, Integer> {



}

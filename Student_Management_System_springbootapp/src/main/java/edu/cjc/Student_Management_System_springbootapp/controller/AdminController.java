package edu.cjc.Student_Management_System_springbootapp.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.Student_Management_System_springbootapp.model.Student;
import edu.cjc.Student_Management_System_springbootapp.servicei.StudentService;

@Controller
public class AdminController {
	@Autowired
	StudentService ss;

	@RequestMapping("/")
	public String prelogin() {

		return "login";
	}

	@RequestMapping("/login")
	public String onlogin(@RequestParam String username, @RequestParam String password, Model m) {

		if (username.equals("Admin") && password.equals("Admin")) {

			List<Student> list = ss.viewAllData();
			m.addAttribute("data", list);
			return "adminscreen";
		}

		else {
			m.addAttribute("login_fail", "Enter valid login details.");

			return "login";
		}
	}

	@RequestMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student student, Model m) {

		ss.saveStudentDetail(student);
		List<Student> list = ss.viewAllData();
		m.addAttribute("data", list);
		System.out.println(student);
		return "adminscreen";

	}

	@RequestMapping("/remove")
	public String onRemove(@RequestParam("studentId") int studentId, Model m) {
		ss.onDelete(studentId);
		List<Student> list = ss.viewAllData();
		m.addAttribute("data", list);

		return "adminscreen";

	}

	@RequestMapping("/fees")
	public String onFees(@RequestParam int studentId, Model m) {
		Student student = ss.getsingleStudent(studentId);
		m.addAttribute("stu", student);
		return "fees";
	}

	@RequestMapping("/payfees")
	public String addinstallment(@RequestParam int studentId, @RequestParam float amount, Model m) {
		ss.payfees(studentId, amount);
		List<Student> list = ss.viewAllData();
		m.addAttribute("data", list);
		return "adminscreen";
	}

	@RequestMapping("/batch")
	public String onBatch(@RequestParam int studentId, Model m) {
		Student student = ss.getsingleStudent(studentId);
		m.addAttribute("stu", student);

		return "batch";
	}

	@RequestMapping("/changebatch")
	public String batchchanging(@RequestParam int studentId,Model m ) {
		ss.changebatch(studentId);
		List<Student> list = ss.viewAllData();
		m.addAttribute("data", list);
		return"adminscreen";
		
	}
		
	}


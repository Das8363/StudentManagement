package edu.cjc.Student_Management_System_springbootapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	@Column(unique = true)
	private String studentFullName;
	private String studenEmail;
	private int studentAge;
	private String studentCollegeName;
	private String studentCourse;
	private String batchNumber;
	private String batchMode;
	private String feespaid;
}

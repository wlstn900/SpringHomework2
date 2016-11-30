package kr.ac.hansung.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Course {
	
	
	@Min(value=2017,message="���� �⵵�� 2017�� �Դϴ�.")
	@Max(value=2017,message="���� �⵵�� 2017�� �Դϴ�.")
	int year;
	
	@Min(value=1,message="1�Ǵ� 2�б� �̾�߸� �մϴ�(���� 1�б�)")
	@Max(value=2,message="1�Ǵ� 2�б� �̾�߸� �մϴ�(���� 1�б�)")
	int semester;
	
	@Size(min=7,max=7,message="Name must be 7 chars < ex. CSE0023 >")
	@NotEmpty(message="The subjectCode cannot be empty")
	String subjectCode;
	
	@NotEmpty(message="The subject cannot be empty")
	String subject;
	
	@NotEmpty(message="The classification cannot be empty")
	String classification;
	
	@Min(value=1,message="1 ~ 6 ���� �̾�߸� �մϴ�")
	@Max(value=6,message="1 ~ 6 ���� �̾�߸� �մϴ�")
	int grade;

	public Course() {
	};

	public Course(int year, int semester, String subjectCode, String subject, String classification, int grade) {
		this.year = year;
		this.semester = semester;
		this.subjectCode = subjectCode;
		this.subject = subject;
		this.classification = classification;
		this.grade = grade;
	}
	
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Course [�����⵵=" + year + ", �б�=" + semester + ", �����ڵ�=" + subjectCode + ", �����="
				+ subject + ", �̼� ����=" + classification + ", ����=" + grade + "]";
	}
}

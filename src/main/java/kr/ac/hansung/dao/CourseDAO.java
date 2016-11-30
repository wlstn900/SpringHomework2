package kr.ac.hansung.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Course;

@Repository
public class CourseDAO {
	private JdbcTemplate jdbcTemplateObject;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from courses";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}

	// querying and returning single objects

	public Course getCourse(String subjectCode) {
		String sqlStatement = "select * from courses where subjectCode=?";

		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[] { subjectCode }, new CourseMapper());
	}

	// querying and returning multiple objects
	public List<Course> getCourses() {
		String sqlStatement = "select * from courses";

		return jdbcTemplateObject.query(sqlStatement, new CourseMapper());
	}

	// 특정 년도 학기별 조회
	public List<Course> getCoursesDetail(int year, int semester) {
		String sqlStatement = "select * from courses where year=? and semester=?";

		return jdbcTemplateObject.query(sqlStatement, new Object[] { year, semester }, new CourseMapper());
	}

	// 이수 구분별 학점 합 조회
	public int getGradebyClassification(String classification) {
		String sqlStatement = "select sum(grade) from courses where classification=?";
		
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[] { classification }, Integer.class);
	}

	public boolean insert(Course course) {
		int year = course.getYear();
		int semester = course.getSemester();
		String subjectCode = course.getSubjectCode();
		String subject = course.getSubject();
		String classification = course.getClassification();
		int grade = course.getGrade();

		String sqlStatement = "insert into "
				+ "courses(year,semester,subjectCode,subject,classification,grade) values(?,?,?,?,?,?)";
		return (jdbcTemplateObject.update(sqlStatement,
				new Object[] { year, semester, subjectCode, subject, classification, grade }) == 1);
	}

	public boolean update(Course course) {

		int year = course.getYear();
		int semester = course.getSemester();
		String subjectCode = course.getSubjectCode();
		String subject = course.getSubject();
		String classification = course.getClassification();
		int grade = course.getGrade();

		String sqlStatement = "update courses set year=?,semester=?,subject=?,classification=?,grade=? where subjectCode=?";
		return (jdbcTemplateObject.update(sqlStatement,
				new Object[] { year, semester, subject, classification, grade, subjectCode }) == 1);
	}

	public boolean delete(String subjectCode) {
		String sqlStatement = "delete from courses where subjectCode=?";
		return (jdbcTemplateObject.update(sqlStatement, new Object[] { subjectCode }) == 1);
	}

}

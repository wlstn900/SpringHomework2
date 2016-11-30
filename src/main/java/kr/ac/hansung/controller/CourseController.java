package kr.ac.hansung.controller;

import java.util.HashMap;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.service.CourseService;

@Controller
public class CourseController {

	private CourseService courseService;

	@Autowired
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	@RequestMapping("/semesterSearch")
	public String semesterSearch(Model model) {

		List<Course> courses = courseService.getCurrent();

		model.addAttribute("courses", courses);
		return "semesterSearch";
	}

	// 이수 구분별 학점 내역
	@RequestMapping("/classificationSearch")
	public String classificationSearch(Model model) {
		int sum = 0;

		sum = courseService.getGrades("교필") + courseService.getGrades("핵교A") + courseService.getGrades("전지")
				+ courseService.getGrades("전선") + courseService.getGrades("일교") + courseService.getGrades("핵교B")
				+ courseService.getGrades("전지");
		HashMap<String, Integer> grades = new HashMap<String, Integer>();
		grades.put("교필", courseService.getGrades("교필"));
		grades.put("핵교A", courseService.getGrades("핵교A"));
		grades.put("핵교B", courseService.getGrades("핵교B"));
		grades.put("전지", courseService.getGrades("전지"));
		grades.put("전기", courseService.getGrades("전기"));
		grades.put("전선", courseService.getGrades("전선"));
		grades.put("일교", courseService.getGrades("일교"));
		grades.put("총학점", sum);

		model.addAttribute("grades", grades);
		return "classificationSearch";
	}

	@RequestMapping("/enrolment")
	public String enrolment(Model model) {
		model.addAttribute(new Course());
		return "enrolment";
	}

	@RequestMapping(value = "/doenrolment", method = RequestMethod.POST)
	public String enrolment(Model model, @Valid Course course,BindingResult result) {
		
		if(result.hasErrors()){
			return "enrolment";
		}
		courseService.insert(course);
		return "enrolmentComplete";
	}

	@RequestMapping("/enrolmentSearch")
	public String enrolmentSearch(Model model) {

		List<Course> courses = courseService.getCurrent();
		model.addAttribute("courses", courses);

		return "enrolmentSearch";
	}

	@RequestMapping("/detailView2012_1")
	public String detailView2012_1(Model model) {
		List<Course> courses = courseService.getDetail(2012, 1);
		model.addAttribute("courses", courses);
		return "detailView";
	}

	@RequestMapping("/detailView2012_2")
	public String detailView2012_2(Model model) {
		List<Course> courses = courseService.getDetail(2012, 2);
		model.addAttribute("courses", courses);
		return "detailView";
	}

	@RequestMapping("/detailView2013_1")
	public String detailView2013_1(Model model) {
		List<Course> courses = courseService.getDetail(2013, 1);
		model.addAttribute("courses", courses);
		return "detailView";
	}

	@RequestMapping("/detailView2015_2")
	public String detailView2015_2(Model model) {
		List<Course> courses = courseService.getDetail(2015, 2);
		model.addAttribute("courses", courses);
		return "detailView";
	}

	@RequestMapping("/detailView2016_1")
	public String detailView2016_1(Model model) {
		List<Course> courses = courseService.getDetail(2016, 1);
		model.addAttribute("courses", courses);
		return "detailView";
	}

	@RequestMapping("/detailView2016_2")
	public String detailView2016_2(Model model) {
		List<Course> courses = courseService.getDetail(2016, 2);
		model.addAttribute("courses", courses);
		return "detailView";
	}

}

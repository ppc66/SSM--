package com.wpc.controller;

import com.wpc.domain.Student;
import com.wpc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/student")
@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        String tip = "注册失败";
        int i = studentService.addStudent(student);
        if (i > 0){
            tip = "学生"+student.getName()+"注册成功";
        }
        mv.addObject("tip",tip);
        mv.setViewName("result");
        return mv;
    }
    @ResponseBody
    @RequestMapping("/queryStudents.do")
    public List<Student> listStudents(){
        List<Student> students = studentService.queryStudents();
        return students;
    }
}

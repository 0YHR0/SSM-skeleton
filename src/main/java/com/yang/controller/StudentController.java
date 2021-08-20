package com.yang.controller;

import com.yang.pojo.Student;
import com.yang.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/student")
@Controller
public class StudentController {

    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    //查询所有的学生
    @RequestMapping("/list")
    public String getAllStudents(Model model){
        List<Student> students = studentService.selectAllStudent();
        model.addAttribute("students",students);
        return "allStudents";
    }

    //跳转到添加学生界面
    @RequestMapping("/addStudent")
    public String addStudent(Model model){
        return "addStudent";
    }

    //执行添加学生操作
    @PostMapping("/addStudentAction")
    public String addStudentAction(Model model, Student student){
        int isSuccess = studentService.addStudent(student);
        return "redirect:/student/list";
    }

    @RequestMapping("/editStudent")
    //跳转到修改学生页面
    public String editStudent(Model model, @Param("id") int id){
        Student student = studentService.selectStudentById(id);
        model.addAttribute("stu",student);
        return "editStudent";
    }

    @PostMapping("/editStudentAction")
    //执行修改学生
    public String editStudentAction(Model model,Student student){
        int isSuccess = studentService.updateStudent(student);
        return "redirect:/student/list";

    }
    @RequestMapping("/deleteStudent/{id}")
    //执行删除学生
    public String deleteStudent(Model model, @PathVariable("id") int id){
        int isSuccess = studentService.deleteStudentById(id);
        return "redirect:/student/list";
    }

    //根据名字查询学生
    @PostMapping("/queryStudentByName")
    public String queryStudentByName(Model model, @Param("name") String name){
        List<Student> students = studentService.queryStudentByName(name);
        for(Student stu:students){
            System.out.println(stu);
        }
        model.addAttribute("students",students);
        return "allStudents";
    }



}

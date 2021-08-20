package com.yang.service;

import com.yang.pojo.Student;

import java.util.List;

public interface StudentService {
    //增加学生
    int addStudent(Student student);

    //删除学生
    int deleteStudentById(int id);

    //更新学生
    int updateStudent(Student student);

    //查询某个学生
    Student selectStudentById(int id);

    //查询所有的学生
    List<Student> selectAllStudent();

    //通过名字查询学生
    List<Student> queryStudentByName(String name);
}

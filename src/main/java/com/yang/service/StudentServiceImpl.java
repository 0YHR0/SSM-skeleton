package com.yang.service;

import com.yang.dao.StudentDao;
import com.yang.pojo.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

    private StudentDao studentDao;

    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }
    //    service调用dao层：组合DAO

    @Override
    public int addStudent(Student student) {
        return studentDao.addStudent(student);
    }

    @Override
    public int deleteStudentById(int id) {
        return studentDao.deleteStudentById(id);
    }

    @Override
    public int updateStudent(Student student) {
        return studentDao.updateStudent(student);
    }

    @Override
    public Student selectStudentById(int id) {
        return studentDao.selectStudentById(id);
    }

    @Override
    public List<Student> selectAllStudent() {
        return studentDao.selectAllStudent();
    }

    @Override
    public List<Student> queryStudentByName(String name) {
        return studentDao.queryStudentByName(name);
    }

    @Override
    public void testForTransaction(){
        studentDao.deleteStudentById(13);
        studentDao.addStudent(new Student(123,"yyyhhhhh","second",99));
    }
}

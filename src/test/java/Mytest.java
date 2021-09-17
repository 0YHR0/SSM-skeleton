import com.yang.pojo.Student;
import com.yang.service.StudentService;
import com.yang.service.StudentServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Mytest {

    @Test
    public void mytest(){
        ApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        StudentService studentService = (StudentService) context.getBean("StudentServiceImpl");
//        List<Student> students = studentService.selectAllStudent();
//        System.out.println("result--------------------------------");
//        for (int i = 0; i < students.size(); i++) {
//            System.out.println(students.get(i));
//        }
        studentService.testForTransaction();


    }
}

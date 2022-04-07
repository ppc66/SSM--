package com.wpc.service;

import com.wpc.domain.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> queryStudents();
}

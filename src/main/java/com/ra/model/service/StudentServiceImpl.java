package com.ra.model.service;

import com.ra.model.entity.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceImpl implements StudentService{
    @Override
    public List<Student> findAll() {
        List<Student> students = new ArrayList<>();
        students.add(new Student(1,"Nguyen Van A", 16, true));
        students.add(new Student(2,"Nguyen Thi B", 16, false));
        students.add(new Student(3,"Nguyen Van C", 16, true));
        students.add(new Student(4,"Nguyen Thi D", 16, false));
        return students;
    }

    @Override
    public void addOrUpdate(Student student) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public Student findById(int id) {
        return null;
    }
}

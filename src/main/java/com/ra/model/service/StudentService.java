package com.ra.model.service;

import com.ra.model.entity.Student;

import java.util.List;

public interface StudentService{
    List<Student> findAll();
    void addOrUpdate(Student student);
    void delete(int id);

    Student findById(int id);
}

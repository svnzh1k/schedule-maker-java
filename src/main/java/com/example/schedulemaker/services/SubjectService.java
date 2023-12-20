package com.example.schedulemaker.services;


import com.example.schedulemaker.models.Subject;
import com.example.schedulemaker.repositories.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubjectService {
    private final SubjectRepository subjectRepository;

    @Autowired
    public SubjectService(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    public Subject getSubject(int id){
        return subjectRepository.findById(id);
    }

    public List<Subject> getAllSubjects(){
        return subjectRepository.findAll();
    }
}

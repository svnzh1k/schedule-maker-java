package com.example.schedulemaker.services;


import com.example.schedulemaker.models.Lecture;
import com.example.schedulemaker.repositories.LectureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LectureService {
    private final LectureRepository lectureRepository;

    @Autowired
    public LectureService(LectureRepository lectureRepository) {
        this.lectureRepository = lectureRepository;
    }

    public List<Lecture> findLecturesBySubjectId(int id){
        return lectureRepository.findBySubjectId(id);
    }
}

package com.example.schedulemaker.controllers;

import com.example.schedulemaker.models.Lecture;
import com.example.schedulemaker.models.Practice;
import com.example.schedulemaker.models.Subject;
import com.example.schedulemaker.services.LectureService;
import com.example.schedulemaker.services.PracticeService;
import com.example.schedulemaker.services.SubjectService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
public class MainController {
    private final SubjectService subjectService;
    private final LectureService lectureService;
    private final PracticeService practiceService;

    @Autowired
    public MainController(SubjectService subjectService, LectureService lectureService, PracticeService practiceService) {
        this.subjectService = subjectService;
        this.lectureService = lectureService;
        this.practiceService = practiceService;
    }

    @GetMapping("/subjects")
    public List <Subject> allSubjects(){
        return subjectService.getAllSubjects();
    }

    @GetMapping("/lectures/{subjectId}")
    public List <Lecture> getLecturesOfSubject(@PathVariable ("subjectId") int id){
        return lectureService.findLecturesBySubjectId(id);
    }

    @GetMapping("/practices/{lectureId}")
    public List <Practice> getPracticesOfLecture(@PathVariable ("lectureId") int id){
        return practiceService.findPracticesByLectureId(id);
    }
}

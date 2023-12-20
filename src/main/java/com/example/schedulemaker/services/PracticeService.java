package com.example.schedulemaker.services;


import com.example.schedulemaker.models.Practice;
import com.example.schedulemaker.repositories.PracticeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PracticeService {
    private final PracticeRepository practiceRepository;

    @Autowired
    public PracticeService(PracticeRepository practiceRepository) {
        this.practiceRepository = practiceRepository;
    }

    public List<Practice> findPracticesByLectureId(int id) {
        return practiceRepository.findByLectureId(id);
    }
}

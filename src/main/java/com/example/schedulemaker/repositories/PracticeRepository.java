package com.example.schedulemaker.repositories;


import com.example.schedulemaker.models.Practice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PracticeRepository extends JpaRepository<Practice, Integer> {
    List<Practice> findByLectureId(int id);
}

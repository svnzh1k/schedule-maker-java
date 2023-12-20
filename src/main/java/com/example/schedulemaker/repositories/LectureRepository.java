package com.example.schedulemaker.repositories;


import com.example.schedulemaker.models.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LectureRepository extends JpaRepository<Lecture,Integer> {
    List<Lecture> findBySubjectId(int id);
}

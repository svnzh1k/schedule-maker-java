package com.example.schedulemaker.repositories;


import com.example.schedulemaker.models.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubjectRepository extends JpaRepository<Subject,Integer> {
    Subject findById(int id);
}

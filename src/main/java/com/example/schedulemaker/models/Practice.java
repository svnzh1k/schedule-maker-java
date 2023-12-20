package com.example.schedulemaker.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Practice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "lecture_id")
    @JsonIgnore
    private Lecture lecture;

    @Column(name = "practice_teacher")
    private String practiceTeacher;

    @Column(name = "day")
    private int day;

    @Column(name = "time")
    private int time;

    @Column(name = "duration")
    private int duration;

    @Column(name = "room")
    private String room;


    @Override
    public String toString() {
        return "Practice{" +
                "id=" + id +
                ", practiceTeacher='" + practiceTeacher + '\'' +
                ", day=" + day +
                ", time=" + time +
                ", duration=" + duration +
                ", room='" + room + '\'' +
                '}';
    }
}

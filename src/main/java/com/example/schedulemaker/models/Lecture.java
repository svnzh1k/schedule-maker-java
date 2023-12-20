package com.example.schedulemaker.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;



@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Lecture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;


    @ManyToOne
    @JoinColumn(name = "subject_id")
    @JsonIgnore
    private Subject subject;

    @Column(name = "lecturer")
    private String lecturer;

    @OneToMany(mappedBy = "lecture")
    @JsonIgnore
    private List<Practice> practiceList;

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
        return "Lecture{" +
                "id=" + id +
                ", lecturer='" + lecturer + '\'' +
                ", day=" + day +
                ", time=" + time +
                ", duration=" + duration +
                ", room='" + room + '\'' +
                '}';
    }
}

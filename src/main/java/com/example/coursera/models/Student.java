package com.example.coursera.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @Column(name = "student_pin")
    private String studentPin;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "time_created")
    private LocalDate timeCreated;

    @JsonIgnore
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "students_courses", joinColumns = @JoinColumn(name = "student_pin"),
            inverseJoinColumns = @JoinColumn(name = "course_id"))
    private Set<Course> studentEnrolledCourses;

    public Student() {
    }

    public String getStudentPin() {
        return studentPin;
    }

    public void setStudentPin(String studentPin) {
        this.studentPin = studentPin;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getTimeCreated() {
        return timeCreated;
    }

    public void setTimeCreated(LocalDate timeCreated) {
        this.timeCreated = timeCreated;
    }

    public Set<Course> getStudentEnrolledCourses() {
        return studentEnrolledCourses;
    }

    public void setStudentEnrolledCourses(Set<Course> studentEnrolledCourses) {
        this.studentEnrolledCourses = studentEnrolledCourses;
    }
}

create table instructors
(
    instructor_id int auto_increment
        primary key,
    first_name    varchar(50) not null,
    last_name     varchar(50) not null,
    time_created  datetime    not null,
    constraint instructors_id_uindex
        unique (instructor_id)
);

create table courses
(
    course_id     int auto_increment
        primary key,
    name          varchar(150) null,
    instructor_id int          null,
    total_time    datetime     not null,
    credit        int          null,
    time_created  datetime     not null,
    constraint courses_instructors_instructor_id_fk
        foreign key (instructor_id) references instructors (instructor_id)
);

create table students
(
    student_id   int auto_increment
        primary key,
    first_name   varchar(50) not null,
    last_name    varchar(50) not null,
    time_created datetime    not null,
    constraint students_student_id_uindex
        unique (student_id)
);

create table students_courses
(
    student_id      int      not null,
    course_id       int      not null,
    completion_date datetime null,
    constraint students_courses_courses_course_id_fk
        foreign key (course_id) references courses (course_id),
    constraint students_courses_students_student_id_fk
        foreign key (student_id) references students (student_id)
);


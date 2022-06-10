create table university
(
    id   serial primary key not null,
    name character varying  not null
);
create table college
(
    id           serial primary key not null,
    name         character varying  not null,
    universityID integer            not null references university (id)
);
create table course
(
    id       serial primary key not null,
    title    character varying  not null,
    courseNo integer unique     not null,
    unit     integer
);
create table teacher
(
    id           serial primary key not null,
    name         character varying  not null,
    family       character varying  not null,
    nationalCode character varying  not null unique,
    teacherNo    integer unique     not null
);
create table student
(
    id           serial primary key not null,
    name         character varying  not null,
    family       character varying  not null,
    nationalCode character varying  not null unique,
    studentNo    integer unique     not null
);
create table class
(
    id      serial primary key not null,
    classNo integer unique     not null,
    floor   integer unique     not null
);
create table studentCourse
(
    studentID integer not null references student (id),
    courseID  integer not null references course (id),
    teacherID integer not null references teacher (id),
    classID   integer not null references class (id),
    collageID integer not null references college (id)
);

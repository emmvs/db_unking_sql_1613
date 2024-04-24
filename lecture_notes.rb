# frozen_string_literal: true

# ? Topic 1: Spreadsheet
# We want to store campuses with their individual teachers

# Primary key (the id of uniq record)
# Foreign key (the id that points to parent)

# 1:N (ONE TO MANY) RELATIONSHIP
# A Campus has many teachers
# A teacher belongs to one (home) campus

# ? Topic 2: DRAW DB
# N:N (MANY TO MANY) RELATIONSHIP
# A Teacher has many students
# A Stundent has many teachers

# Join Table: Maps to tables together (Students, Teachers)
# A Ticket belongs to a teacher
# A Ticket belongs to a student
# - Schema (A Representation of the structure of our database)
# Tables, Columns & Rows

# ? Topic 3: CRUD W/ SQL

# (R) - READ
# SELECT * FROM students;
# SELECT first_name, last_name FROM students;
# * Filters
# SELECT * FROM students
# WHERE id = 10;
# SELECT * FROM students
# WHERE id BETWEEN 1 AND 10;
# SELECT * FROM students
# WHERE id < 10;
# SELECT * FROM students
# WHERE first_name = 'Franziska';
# ORDER BY (only returns first element of group)
# WHERE first_name LIKE "F%"
# GROUP BY batch
# ASC/DSC
# COUNT
# AS

# * JOIN TABLES & MULTIPLE COLUMNS

# SELECT tickets.ticket_desc, students.first_name, teachers.first_name
# FROM tickets
# JOIN students ON tickets.student_id = students.id
# JOIN teachers ON tickets.teacher_id = teachers.id;

# (C) - CREATE
# INSERT INTO students (first_name, last_name, batch) 
# VALUES ('Jonatas', 'Furtado Do Amaral', '#1613');

# (U) - Update
# UPDATE teachers SET teaching_days = teaching_days + 1 
# WHERE id = 1;
# SELECT * FROM teachers;

# (D) - DELETE
# ! DELETE EVERYTHING
# DELETE FROM students;
# DELETE FROM students WHERE id = 6;

# TOPIC 3: SQL & RUBY

require 'sqlite3'

DB = SQLite3::Database.new('./db/kitt_db.sqlite')

rows = DB.execute('SELECT * FROM students')
p rows

# Array of Arrays
# Array of Arrays
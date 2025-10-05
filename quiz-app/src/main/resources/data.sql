-- Quiz ID: 11
-- Title: Java OOP Principles Quiz
-- Timer: 120 seconds

-- 1. Create the Quiz Entry with Timer
INSERT INTO tbl_quiz (id, title, description, timer) VALUES (11, 'Java OOP Principles Quiz', 'A short quiz focused on Object-Oriented Programming (OOP) concepts in Java.', 120);

--------------------------------------------------------------------------------
-- Question 1: Encapsulation (ID: 111)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (111, 11, 'Which OOP concept is achieved by combining data and the methods that operate on that data into a single unit (class)?');

-- Options for Q1 (IDs: 1101 - 1104)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1101, 111, 'Inheritance', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1102, 111, 'Polymorphism', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1103, 111, 'Encapsulation', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1104, 111, 'Abstraction', FALSE);

--------------------------------------------------------------------------------
-- Question 2: Overriding vs. Overloading (ID: 112)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (112, 11, 'The process of defining two methods in the same class with the same name but different parameter lists is called:');

-- Options for Q2 (IDs: 1105 - 1108)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1105, 112, 'Method Overriding', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1106, 112, 'Method Hiding', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1107, 112, 'Method Overloading', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1108, 112, 'Method Binding', FALSE);

--------------------------------------------------------------------------------
-- Question 3: Abstraction (ID: 113)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (113, 11, 'In Java, which two constructs are primarily used to achieve Abstraction?');

-- Options for Q3 (IDs: 1109 - 1112)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1109, 113, 'Classes and Objects', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1110, 113, 'Abstract Classes and Interfaces', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1111, 113, 'Constructors and Final Methods', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1112, 113, 'Public and Private Keywords', FALSE);

--------------------------------------------------------------------------------
-- Question 4: Polymorphism (ID: 114)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (114, 11, 'Polymorphism allows an object to take on many forms. Which type of polymorphism is achieved at runtime?');

-- Options for Q4 (IDs: 1113 - 1116)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1113, 114, 'Compile-time Polymorphism (Overloading)', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1114, 114, 'Run-time Polymorphism (Overriding)', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1115, 114, 'Operator Overloading', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1116, 114, 'Coercion', FALSE);

--------------------------------------------------------------------------------
-- Question 5: Inheritance (ID: 115)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (115, 11, 'In Java, a class can directly inherit from:');

-- Options for Q5 (IDs: 1117 - 1120)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1117, 115, 'Multiple Classes', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1118, 115, 'Multiple Interfaces and Multiple Classes', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1119, 115, 'Only one Class and multiple Interfaces', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1120, 115, 'Only one Interface', FALSE);
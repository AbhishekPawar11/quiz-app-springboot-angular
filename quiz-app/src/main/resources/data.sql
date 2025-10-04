-- Quiz ID: 2
-- Title: Java Core Concepts Quiz

-- 1. Create the Quiz Entry
INSERT INTO tbl_quiz (id, title, description) VALUES (2, 'Java Core Concepts Quiz', 'A 5-question quiz on fundamental Java programming principles.');

--------------------------------------------------------------------------------
-- Question 1: Interfaces (ID: 101)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (101, 2, 'What is a key characteristic of an interface in Java since Java 8?');

-- Options for Q1 (IDs: 1001 - 1004)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1001, 101, 'It cannot contain any implemented methods.', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1002, 101, 'It can be instantiated directly.', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1003, 101, 'It can contain default and static methods with implementation.', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1004, 101, 'Its variables must be static and non-final.', FALSE);

--------------------------------------------------------------------------------
-- Question 2: Final Keyword (ID: 102)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (102, 2, 'Which keyword is used to prevent a class from being subclassed (inherited)?');

-- Options for Q2 (IDs: 1005 - 1008)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1005, 102, 'static', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1006, 102, 'abstract', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1007, 102, 'final', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1008, 102, 'transient', FALSE);

--------------------------------------------------------------------------------
-- Question 3: JVM (ID: 103)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (103, 2, 'What does the abbreviation JVM stand for?');

-- Options for Q3 (IDs: 1009 - 1012)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1009, 103, 'Java Version Model', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1010, 103, 'Joint Virtual Machine', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1011, 103, 'Java Virtual Machine', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1012, 103, 'Just Virtual Model', FALSE);

--------------------------------------------------------------------------------
-- Question 4: Collections (ID: 104)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (104, 2, 'Which java.util Map implementation guarantees the insertion order of key-value pairs?');

-- Options for Q4 (IDs: 1013 - 1016)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1013, 104, 'ConcurrentHashMap', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1014, 104, 'LinkedHashMap', TRUE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1015, 104, 'TreeMap', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1016, 104, 'IdentityHashMap', FALSE);

--------------------------------------------------------------------------------
-- Question 5: Exception Handling (ID: 105)
--------------------------------------------------------------------------------
INSERT INTO tbl_questions (id, quiz_id, text) VALUES (105, 2, 'In Java exception handling, which block is always executed, regardless of whether an exception is thrown or caught?');

-- Options for Q5 (IDs: 1017 - 1020)
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1017, 105, 'try', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1018, 105, 'catch', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1019, 105, 'throw', FALSE);
INSERT INTO tbl_options (id, question_id, text, is_correct) VALUES (1020, 105, 'finally', TRUE);
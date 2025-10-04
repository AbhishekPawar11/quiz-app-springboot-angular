🧠 Online Quiz Application

A full-stack web application built with Spring Boot and Angular that allows users to take online quizzes, view their scores, and see correct answers.
It demonstrates a simple quiz flow — from listing available quizzes to taking them and viewing results — with clean UI using Angular Material.

🏗️ Tech Stack

🔹 Backend
Spring Boot
 
Spring Data JPA (Hibernate)

H2 Database (in file mode)

RESTful APIs

🔹 Frontend
Angular 

Angular Material UI

Responsive Design

⚙️ Project Structure

quiz-app/

 ├── src/                       # Spring Boot backend
                              
 ├── pom.xml                    # Maven dependencies

 ├── README.md

 └── ...

quiz-frontend/                  # Angular


🚀 Getting Started
🧩 Prerequisites

Make sure you have installed:
Java 17+

Maven

Node.js (v18+)

Angular CLI


🖥️ Backend Setup (Spring Boot)

1️⃣ Navigate to backend folder:

cd quiz-app

2️⃣ Build the project:

mvn clean install

3️⃣ Run the Spring Boot app:

mvn spring-boot:run


The backend will start at 👉
📍 http://localhost:8080

4️⃣ H2 Console (for development)

You can view the in-memory database here:

📍 http://localhost:8080/h2-console

Use these credentials:

JDBC URL: jdbc:h2:file:./data/quizdb

Username: sa

Password:root


🌐 Frontend Setup (Angular)

1️⃣ Navigate to Angular app folder:

cd quiz-frontend

2️⃣ Install dependencies:

npm install

3️⃣ Run the Angular app:

ng serve


Frontend runs at 👉

📍 http://localhost:4200

🧭 Application Flow

1️⃣ Quiz List Page

Displays all available quizzes

User clicks "Start Quiz" to begin

2️⃣ Quiz Questions Page

Shows one question per screen

“Next” and “Previous” navigation buttons

“Submit” button calls backend API

3️⃣ Result Page

Displays total score

Highlights correct and incorrect answers

## 🧠 API Endpoints

- **GET** `/quiz/` → Get all quizzes  
- **GET** `/question/{quizId}` → Get all questions (without correct answers)  
- **POST** `/quiz/{quizId}/submit` → Submit answers and calculate score  


🎨 UI Highlights

Built with Angular Material

Responsive cards and layout

Sticky footer

Clean and minimal design

🏁 License
This project is open-source under the MIT License

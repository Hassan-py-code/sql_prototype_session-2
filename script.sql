drop database if exists solicode_blog;
create database solicode_blog;
use solicode_blog;


CREATE TABLE users (
    id_user INT PRIMARY KEY auto_increment,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
);

INSERT INTO users (f_name,l_name)  VALUES 
('Ahmed','Alami'),
('El Hassan','Karimi'),
('Sara','El Idrissi'),
('Mohamed','Bennani'),
('Yassine','Ouali'),
('Khadija','Zahra'),
('Omar','Fassi'),
('El Mehdi','Alaoui'),
('Noura','Salmi'),
('Hicham','Rahmani'),
('Ali','Hamdani'),
('El Mostafa','Cherkaoui'),
('Fatima','El Amrani'),
('Rachid','Toumi'),
('Soufiane','El Khatib'),
('Imane','Bouzidi'),
('Ayoub','Lahlou'),
('El Houssaine','Mokhtari'),
('Samira','Kabbaj'),
('Test','User');

CREATE TABLE articles (
    id_article INT PRIMARY KEY auto_increment,
    title VARCHAR(100),
    content TEXT,
    datepub DATE,
    status ENUM('Published','Archived'),
    id_user INT,
    foreign key (id_user) references users(id_user)
);

INSERT INTO articles (title , content , datepub , status  , id_user) VALUES
('SQL Intro',
'This article explains the basics of SQL and relational databases.',
'2025-01-10','Published',1),

('PHP Basics',
'Learn PHP syntax, variables, and simple backend logic.',
'2025-12-15','Published',2),

('HTML Guide',
'Complete guide to HTML tags and page structure.',
'2025-12-29','Archived',2),

('CSS Tips',
'Improve your website design using modern CSS techniques.',
'2025-03-20','Published',1),

('JavaScript DOM',
'Manipulating HTML elements using JavaScript DOM.',
'2025-04-18','Published',4),

('Laravel Framework',
'Introduction to Laravel MVC framework.',
'2026-01-3','Archived',5),

('React Basics',
'Understand components, props and state in React.',
'2025-06-01','Published',6),

('MySQL Joins',
'Explanation of INNER JOIN, LEFT JOIN and RIGHT JOIN.',
'2025-07-10','Published',7),

('REST API',
'How to build RESTful APIs using best practices.',
'2025-08-12','Published',8),

('Web Security',
'Basics of web security and common vulnerabilities.',
'2025-09-30','Archived',9),


('Docker Basics',
'Learn how to containerize applications using Docker.',
'2025-12-10','Published',10),

('Kubernetes Intro',
'Introduction to Kubernetes and container orchestration.',
'2025-12-15','Archived',11),


('AI Today',
'Overview of artificial intelligence trends in 2026.',
CURDATE(),'Published',12),


('Old Blog Post',
'An old archived article written previously.',
'2024-11-10','Archived',13),


('Spam Article',
'This article was created for delete testing.',
'2025-06-01','Published',14),

('Update Test Article',
'This article will be updated and archived later.',
'2026-1-10','Published',14);

select * from users;

select * from articles;
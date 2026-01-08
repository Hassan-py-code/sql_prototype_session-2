
drop database if exists blog;
create database blog;
use blog;


create table users(
   id_user int primary key auto_increment,
   first_name varchar(25),
   last_name varchar(25)
   
);

create table article(

    id_article int primary key auto_increment,
    titel varchar(100),
    content text,
    date_pub date,
    T_status  enum("published" ,"Archived") default "Archived",
    id_user int ,
    foreign key (id_user) references  users(id_user)
);

insert into users(first_name , last_name)
values        ('Ahmed', 'Alami'),
              ('El Hassan', 'Karimi'),
              ('Sara', 'El Idrissi'),
              ('Mohamed', 'Bennani'),
			  ('Yassine', 'Ouali'),
			  ('Khadija', 'Zahra'),
              ('Omar', 'Fassi'),
              ('El Mehdi', 'Alaoui'),
			  ('Noura', 'Salmi'),
              ('Hicham', 'Rahmani'); 
              
select * from users;

insert into article( titel,  content , date_pub , T_status ,  id_user )
values 
('SQL Basics', 'Introduction to SQL', '2025-01-15', 'Published', 1),
('PHP for Beginners', 'Learn PHP step by step', '2025-02-10', 'Published', 1),
('Web Security', 'Basics of security', '2025-03-05', 'Archived', 2),
('HTML Tips', 'Improve your HTML', '2025-03-20', 'Published', 3),
('CSS Flexbox', 'Flexbox guide', '2025-04-18', 'Published', 4),
('JavaScript DOM', 'DOM manipulation', '2025-05-22', 'Archived', 5),
('Laravel Intro', 'Getting started with Laravel', '2025-06-01', 'Published', 6),
('React Basics', 'Learn React', '2025-06-15', 'Published', 7),
('MySQL Joins', 'Understanding joins', '2025-07-10', 'Published', 8),
('API REST', 'Build REST APIs', "2026-01-8", 'Published', 9);

select titel , date_pub from article;
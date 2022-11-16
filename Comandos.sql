insert into	roles (	name)
values ('Admin'),('Teacher'),('Students');

insert into users (id,name,"password",age,roles_id)
values(
'8e2fc133-79b5-4dd4-bb7f-d69ce6ff4875',
'Felipe Cardenas',
'c1234',
31,
2),(
'c48c04fd-8cbb-48c7-ade0-985ea8bdc6e4',
'Walter Daza',
'a9874',
25,
3);

insert into level (name)
values('beginner'),('intermediate'),('advanced');

insert into categories (name)
values('development'),('business'),('Marketing'),('Music');  

insert into courses (id,title,description,level_id,categories_id)
values('824bd998-7fca-46b3-a638-9acf19b5f1a9',
'javascript', 
'javascript for beginners',
1,
1),
('ab068d18-b716-4997-bf40-888896ffa16d',
'DJ',
'Advanced Dj Scratch Course',
3,
4);

insert into user_course (id, user_id, course_id) 
values ('dfeec651-cb1e-4473-ad63-8d6b7eb17f39',
'8e2fc133-79b5-4dd4-bb7f-d69ce6ff4875',
'ab068d18-b716-4997-bf40-888896ffa16d'
),(
'82d0ef27-5887-4c67-bf89-ba580ed7226b',
'c48c04fd-8cbb-48c7-ade0-985ea8bdc6e4',
'824bd998-7fca-46b3-a638-9acf19b5f1a9'
);

insert into course_video  (id, title, url, courses_id) 
values ('0e1f2775-0658-4a59-a1a7-252e6fd518a3',
'introduction',
'https://www.video12151.com',
'824bd998-7fca-46b3-a638-9acf19b5f1a9'
),('f879dff9-f4bf-46d3-8a7a-78856a7fe538',
'downloads',
'https://www.vide5452151.com',
'824bd998-7fca-46b3-a638-9acf19b5f1a9'
),('b75cb06e-db71-4c7b-b1eb-02bebd9ec537',
'basic sounds',
'https://www.video58471.com',
'ab068d18-b716-4997-bf40-888896ffa16d'
);

-- JOIN --

select * from courses as c inner join level as l on c.level_id = l.id;

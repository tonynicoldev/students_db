-- @ is effectively a variable so use a variable in javascript
set @cid = (select id from course where name = 'music');
insert into tutor (title, name, course_id) values ('Dr', 'Bobble', @cid);
select tutor.title, tutor.name, course.name from tutor inner join course on tutor.course_id = course.id;
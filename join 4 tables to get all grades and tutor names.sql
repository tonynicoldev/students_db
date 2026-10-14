select student.first_name, student.last_name, course.name, course.qualification, grades.grade, tutor.title, tutor.name
from (( student inner join grades 
        on student.id = grades.student_id)
           inner join course 
           on grades.course_id = course.id
              inner join tutor 
              on course.id = tutor.course_id
      );
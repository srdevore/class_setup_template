# edep_625_SEM

Template for course website. Student-facing website auto-populated with lectures, labs, projects, assignments dynamically populated from .qmd files. Syllabus schedule autopopulated based on course start/end dates and cadence. 

Features: 

1. Lectures, labs, etc are .qmd files that are rendered on a puplic website and can be downloaded as PDFs by students. 
2. Profiles: teacher and student profiles allow for student version (i.e. without notes and answers to questions) to be rendered on the site and teacher version (with notes and answers) in html.
- students can download the student version as pdf.  
- Examples of show on click for the teacher version so teacher can show answers (not rendered on student version)
3. Class schedule: Weeks and dates automatically populated based on semester start/end date and class cadence. 

Setup: 
1. copy from template
2. 




https://srdevore.github.io/edep_625_SEM/lectures/test_lecture.html#/title-slide


quarto render lectures/test_lecture.qmd --profile teacher
download _teacher/lectures/test_lecture.html
in presentation, press S to see the speaker notes version. 
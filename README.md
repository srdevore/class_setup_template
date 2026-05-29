# edep_625_SEM

Template for course website linked to course materials with features to generate teacher/student versions of slide decks, auto-populate course info, etc. 

## Features: 

1. Lectures, labs, etc are .qmd files that are rendered on a puplic website and can be downloaded as PDFs by students. 
2. Profiles: teacher and student profiles allow for student version (i.e. without notes and answers to questions) to be rendered on the site and teacher version (with notes and answers) in html.

- students can download the student version from the website as pdf or view as html. They never see teacher version 
- Includes examples of lecture slides with show on click in the teacher profile so teacher can show answers in class that are not rendered on student version.

3. Class schedule: Weeks and dates automatically populated based on semester start/end date and class cadence. 
4. Sheduled release of materials. Create materials in advance and automatically render after a specific date 

- show week X: automatically shows one hour before first class of week starts (must push within 1 hr of class start)
- add release: week N

# Quickstart
## Build template site

1. Create your own repo:
github UI > use this template > create a new repository
Fill in the form with your repo title, etc

2. Set up page
Settings > pages > build & deployment
Select "Github Actions"

Github UI > Actions > All workflows > "initial commit"

Takes ~5 min to build first time because it's installing dependencies.

Once build & deploy finish, the url will appear under deploy. Follow link to confirm it worked. 

## Personalize

1. Start codespace
code (tab) > code (green button) > create codespace > click the auto-generated codespace name
OR: set up in your preferred IDE

2. Configure class

```{bash}
cd _class-config.yml
```

Fill in appropirate information about your class time, dates instructor, etc. 

5. Update site
Site automatically re-deploys on push 

6. Add lectures, labs, assignments, etc. 




# Teacher slides (shows )

quarto render lectures/test_lecture.qmd --profile teacher
download _teacher/lectures/test_lecture.html
in presentation, press S to see the speaker notes version. 

morph, cyorg, sketchy, slate, solar
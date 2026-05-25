# Quarto pre-render hook. Reads _class-config.yml and writes
# lectures/_metadata.yml so all lecture decks inherit course-wide values
# (course_name as subtitle, course_instructor as author) without
# duplicating them in each lecture file.

library(yaml)

config <- read_yaml("_class-config.yml")

lectures_metadata <- list(
  subtitle = config$course_name,
  author   = config$course_instructor
)

if (!dir.exists("lectures")) dir.create("lectures")
write_yaml(lectures_metadata, "lectures/_metadata.yml")

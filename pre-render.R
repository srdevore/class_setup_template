# Quarto pre-render hook. Reads _class-config.yml and propagates shared
# values across the site so course-wide info is sourced from one place.

library(yaml)

config <- read_yaml("_class-config.yml")

# 1. Sync _quarto.yml website title to course_name (line-based, preserves
#    rest of file structure). Only writes if the value actually differs.
qy_lines <- readLines("_quarto.yml")
website_idx <- grep("^website:", qy_lines)
if (length(website_idx) > 0) {
  title_idx <- grep("^\\s+title:", qy_lines)
  inside <- title_idx[title_idx > website_idx[1]]
  if (length(inside) > 0) {
    target <- min(inside)
    leading_ws <- sub("^(\\s*).*", "\\1", qy_lines[target])
    new_line <- sprintf('%stitle: "%s"', leading_ws, config$course_name)
    if (qy_lines[target] != new_line) {
      qy_lines[target] <- new_line
      writeLines(qy_lines, "_quarto.yml")
    }
  }
}

# 2. Root _metadata.yml — index.qmd inherits title from course_name.
#    Other root qmds (syllabus, research-connections) explicitly set their
#    own title so this is overridden where appropriate.
write_yaml(list(title = config$course_name), "_metadata.yml")

# 3. lectures/_metadata.yml — every lecture inherits subtitle = course_name
#    and author = course_instructor on its title slide.
lectures_metadata <- list(
  subtitle = config$course_name,
  author   = config$course_instructor
)
if (!dir.exists("lectures")) dir.create("lectures")
write_yaml(lectures_metadata, "lectures/_metadata.yml")

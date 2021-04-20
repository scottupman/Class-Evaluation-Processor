library("rJava")

.jinit()
.jaddClassPath("C:\\Users\\User\\eclipse-workspace\\Test\\Course\\Course.jar")

Course <- .jnew("Course", "Scuba Diving", "Summer", 1, 213)


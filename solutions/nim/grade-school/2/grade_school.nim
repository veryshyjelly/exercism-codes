import algorithm, sugar

type
  Student* = object
    name*: string
    grade*: int

  School* = object
    students*: seq[Student]

proc roster*(school: School): seq[string] =
  ## Returns the names of every student in the `school`, sorted by grade then name.
  collect:
    for student in school.students: student.name

proc addStudent*(school: var School, name: string, grade: int) =
  ## Adds a student with `name` and `grade` to the `school`.
  ##
  ## Raises a `ValueError` if `school` already contains a student named `name`.

  for student in school.students:
    if student.name == name:
      raise ValueError.new

  school.students.add Student(name: name, grade: grade)

  school.students.sort do (x, y: Student) -> int:
    result = cmp(x.grade, y.grade)
    if result == 0:
      result = cmp(x.name, y.name)

proc grade*(school: School, grade: int): seq[string] =
  ## Returns the names of the students in the given `school` and `grade`, in
  ## alphabetical order.
  ##
  collect:
    for student in school.students:
      if student.grade == grade: student.name

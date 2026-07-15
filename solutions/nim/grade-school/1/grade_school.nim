import algorithm
import sequtils

type
  Student* = object
    name*: string
    grade*: int

  School* = object
    students*: seq[Student]

proc roster*(school: School): seq[string] =
  ## Returns the names of every student in the `school`, sorted by grade then name.
  school.students.mapIt(it.name)

proc addStudent*(school: var School, name: string, grade: int) =
  if school.students.anyIt(it.name == name):
    raise newException(ValueError, "already exists")
  else:
    school.students.insert(Student(name: name, grade: grade))

    school.students.sort do (x, y: Student) -> int:
      result = cmp(x.grade, y.grade)
      if result == 0:
        result = cmp(x.name, y.name)

proc grade*(school: School, grade: int): seq[string] =
  ## Returns the names of the students in the given `school` and `grade`, in
  ## alphabetical order.
  ##
  school.students.filterIt(it.grade == grade).mapIt(it.name)

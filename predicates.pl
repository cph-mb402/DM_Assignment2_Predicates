room(a).
room(b).
room(c).

class(a, John).
class(a, Sally).
class(b, Eva).
class(b, Milo).
class(c, Sal).

class_date(date(2019, 1, 1), a).
class_date(date(2019, 1, 2), b).
class_date(date(2019, 1, 3), c).

sameClass(A,B):-
     class(Class, A),
     class(Class, B),
     writeln(Class).

sameDate(A,B):-
     class(ClassA, A),
     class(ClassB,B),
     class_date(StudentDate, ClassA),
     class_date(StudentDate, ClassB),
     writeln(StudentDate).

getStudentInfo(A):- 
      class(Class, A),
      writeln(Class),
      class_date(Date, Class),
      writeln(Date).

getAllStudents():-
     forall(student(Student) ,
     writeln(Student)) .

getAllClasses():-
     forall(room(Name), writeln(Name)) .

getAllDates():-
     forall(class_date(Dates, S), writeln(Dates)) .
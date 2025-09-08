! Quiz 1
! Declare an integer variable age and a real variable weight, assign values, and print them.
! Why does this code fail to compile ?

program quiz1
    implicit none

    age = 20 
    !   integer :: age       정수형 변수 age 선언
    weight = 55.5   
    !  real :: weight        실수형 변수 weight 선언                        
    print *, "Age:", age
    print *, "Weight:", weight
end program quiz1



! Quiz 2
! Declare a character variable name to store a string up to 20 characters, assign "Bob", and print it.
! Why does the name print incorrectly ?

program quiz2
    implicit none

    character :: name        !  오류: 문자열 길이를 지정하지 않아 name은 1글자만 저장됨.
    name = "Bob"             ! 오류: "Bob"은 3글자이지만 name은 1글자만 받아서 'B'만 저장됨.
    print *, "Name:", name   ! 결과는 'B'만 출력됨.
end program quiz2


! Quiz
! Declare a constant PI = 3.14159 and compute the area of a circle with radius r = 5.0.
! Why is it wrong to change the value of PI ?

program quiz3
    implicit none

    real :: PI = 3.14159    !  'PI'는 상수로 사용할 변수이므로 'parameter'로 선언해야 함
    real :: r, area

    r = 5.0
    PI = 3.14               !  잘못됨: 'PI'는 고정된 상수로 취급되어야 하며, 값을 변경하면 안 됨
    area = PI * r * r

    print *, "Circle area:", area
end program quiz3



! Quiz 4
! Use a logical variable is_adult to check if age >= 18. If true, print "Adult", else print "Minor".
! Why does is_adult = true not work in Fortran ?

program quiz4
    implicit none

    integer :: age
    logical :: is_adult

    age = 17
    is_adult = true             !  오류 발생: Fortran에서는 논리 상수 true는 .true. 로 작성해야 함
    if (is_adult) then
        print *, "Adult"
    else
        print *, "Minor"
    end if
end program quiz4



! Quiz 5
! Declare a constant gravity = 9.8 and try to modify it. Explain why it fails.
! Why does this code fail to compile ?

program quiz5
    implicit none

    real, parameter :: gravity = 9.8         !  gravity는 상수 (parameter)로 선언됨
    gravity = 9.81                           !  오류: 상수는 값을 변경할 수 없음 → 컴파일 에러 발생
    print *, "Gravity:", gravity
end program quiz5

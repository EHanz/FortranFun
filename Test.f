     module class_Triangle
        implicit none
        private
        public :: Triangle, triangle_area, triangle_print

       type Triangle
         real :: bh
        end type Triangle
       contains
        function triangle_area(this) result(area)
         type(Triangle), intent(in) :: this
         real :: area
         area = 0.5 * this%bh
        end function triangle_area

       subroutine triangle_print(this)
        type(Triangle), intent(in) :: this
        real :: area
        area = triangle_area(this)
        print * , 'Triangle bh=  ', this%bh, ' Area = ', area
       end subroutine triangle_print
      end module class_Triangle

      program triangle_test
       use class_Triangle
       implicit none

       type (Triangle) :: t
       t = Triangle(6)
       call triangle_print (t)
      end program triangle_test
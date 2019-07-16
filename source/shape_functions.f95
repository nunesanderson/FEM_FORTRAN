MODULE shape_functions
!====================================================
!Description:
!Provide all the data about the shape functions,
!gradients and integration points
!====================================================

use types, only:db_kind
implicit none
  contains

	subroutine grad_N_1_order(mat_grad_N)
!====================================================
!Description: Gradient of the shape functions N
!Variables:
!mat_grad_N: GradN matrix
!n: number of partial derivatives
!m: number of points
!====================================================
       implicit none
       
		integer,parameter::m=2
		integer,parameter::n=3
		real(db_kind),allocatable,dimension(:,:),intent(inout):: mat_grad_N
       
		if (.not.allocated(mat_grad_N)) then
	       ALLOCATE ( mat_grad_N(m,n))
       end if
       
		mat_grad_N(1,1)=-1.0
		mat_grad_N(1,2)=1.
		mat_grad_N(1,3)=0.

		mat_grad_N(2,1)=-1.0
		mat_grad_N(2,2)=0.
		mat_grad_N(2,3)=1.
		
	 end subroutine grad_N_1_order

	subroutine N_nod_1_order(mat_N,u,v)
!====================================================
!Description: Shape functions
!Variables:
!mat_N: N matrix
!u: u coordinate
!v: u coordinate
!====================================================
		real(db_kind),allocatable,dimension(:),intent(inout):: mat_N
		real(db_kind),intent(in)::u
		real(db_kind),intent(in)::v
		integer,parameter::n=3

		if (.not.allocated(mat_N)) then
			ALLOCATE (mat_N(n))
		end if
		
		mat_N(1)=1.0-u-v
		mat_N(2)=u
		mat_N(3)=v
	end subroutine N_nod_1_order
	
	subroutine integration_points(mat_integ_points_weight,mat_integ_points,number_integ_pooints)
!====================================================
!Description: integration points
!Variables:
!mat_integ_points_weight: array with the weights
!mat_integ_points: array with the coordinates
!number_integ_pooints: number of integration points
!====================================================
	
		real(db_kind),allocatable,dimension(:,:),intent(inout):: mat_integ_points
		real(db_kind),allocatable,dimension(:),intent(inout):: mat_integ_points_weight
		integer,intent(out):: number_integ_pooints
		number_integ_pooints=1

		if (.not.allocated(mat_integ_points)) then
			ALLOCATE (mat_integ_points(number_integ_pooints,2))
		end if

		if (.not.allocated(mat_integ_points_weight)) then
			ALLOCATE (mat_integ_points_weight(number_integ_pooints))
		end if
		
		mat_integ_points(1,1)=1./3.
		mat_integ_points(1,2)=1./3.

		mat_integ_points_weight(1)=1./2.

	end subroutine integration_points

END MODULE shape_functions

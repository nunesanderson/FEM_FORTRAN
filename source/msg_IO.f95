module msg_IO

	contains
	subroutine write_msg(msg)
!====================================================
!Description: Write general messages
!Variables:
!msg: Message to be written
!====================================================

		implicit none
		character(len=*), intent(in) :: msg
!		integer ( kind = 4 ) values(8)
!		integer ( kind = 4 ) h
!		integer ( kind = 4 ) mm
!		integer ( kind = 4 ) n
!		integer ( kind = 4 ) s
!		call date_and_time ( values = values )

!		h = values(5)
!		n = values(6)
!		s = values(7)
!		mm = values(8)
!		write ( *, '(a,i2,a1,i2.2,a1,i2.2,a1,i3.3,1x,a,a)' ) &
!		'[',h, ':', n, ':', s, '.', mm,']',msg

		INTEGER DATE_TIME (8)
		CHARACTER (LEN = 12) REAL_CLOCK (3)
		CALL DATE_AND_TIME (REAL_CLOCK (1), REAL_CLOCK (2), &
				            REAL_CLOCK (3), DATE_TIME)
		
		write ( *, *)REAL_CLOCK(2),msg                    
	end subroutine
end module

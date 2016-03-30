program TEST
    integer :: n,m,i,j,k(18500)
    character (len=4) :: zzformat
    zzformat ='(I1)'
    !real :: pr
    m=0
    k(1)=0
    k(2)=2
    !pr = 2.7
    ! init tableau
    do j=3,18500
      k(j)=1
    end do
    write (*,'(A3)',advance='no') '2.7'
    !calc
    do n=18499,8,-1
      do i=n+1,2,-1
        k(i) = mod(m,i)
        m = 10*k((i-1)) + m/i
      end do
      if(n<18499) then
        write (*,zzformat,advance='no') m
      end if
    end do
    stop
end program TEST

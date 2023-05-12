      program offline
!...  Prepared for a debugger tutorial by NERSC
      include 'mpif.h'
      integer, parameter :: n = 24
      real, allocatable :: a(:)
      integer i, me
      call mpi_init(ierr)
      call mpi_comm_rank(mpi_comm_world,me,ierr)
      allocate (a(n))
      call random_number(a)
      do i=1,n
      if (mod(i,2) == 1) call sub(i,n,a)      ! 'sub' called when i=1,3,5,...
      end do
      print *, me, sum(a)
      deallocate(a)
      call mpi_finalize(ierr)
      end

      subroutine sub(i,n,a)
      integer n, i, j
      real a(n)
      do j=1,n
      a(j) = cos(a(j))
      end do
      end


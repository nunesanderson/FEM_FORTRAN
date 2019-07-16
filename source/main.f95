program main
!====================================================
!Description: Define the setup of the problem to
!be solved
!====================================================

use types, only:db_kind
use FEM, only:run_FEM


!====================================================
!Setup
!====================================================
!integer, parameter:: num_phys_regions=2
!integer, parameter:: num_BCs=1

!integer,dimension(num_phys_regions):: setup_phys_region_ID=[1,2]
!real,dimension(num_phys_regions):: setup_phys_region_perm_rel=[10.0,1.0]
!real,dimension(num_phys_regions):: setup_phys_region_excitation=[0.0,1.0*10**8]

!integer,dimension(num_BCs):: setup_phys_BC_ID=[3]
!real,dimension(num_BCs):: setup_phys_BC_val=[0.0]

!character (len = 100) :: mesh_filename ='simple_mesh.msh'
!character (len = 100) :: path='Tests/01_Simple_mesh'

integer, parameter:: num_phys_regions=4
integer, parameter:: num_BCs=1

integer,dimension(num_phys_regions):: setup_phys_region_ID=[30,31,32,33]
real,dimension(num_phys_regions):: setup_phys_region_perm_rel=[1000.0,1.0,1.0,1000.0]
real,dimension(num_phys_regions):: setup_phys_region_excitation=[0.0,1.0*10**8,0.0,0.0]

integer,dimension(num_BCs):: setup_phys_BC_ID=[34]
real,dimension(num_BCs):: setup_phys_BC_val=[1.0]

character (len = 100) :: mesh_filename='rele.msh'
character (len = 100) :: path='/home/anunes/Drive/12_Study/Fortran/Codes/FEM/tests/02_relay'

!====================================================
!Run the FEM solver
!====================================================
call run_FEM(num_phys_regions,num_BCs,setup_phys_region_ID,setup_phys_region_perm_rel,&
	setup_phys_region_excitation,setup_phys_BC_ID,setup_phys_BC_val,&
	mesh_filename,path)

end program

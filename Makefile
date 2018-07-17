FC = gfortran

CL_LIB = /usr/lib64/nvidia-bumblebee

examples: clfortran
	$(FC) query_platforms_devices.f90 -L$(CL_LIB) -lOpenCL -o query_platforms_devices
	$(FC) create_device_context.f90 -L$(CL_LIB) -lOpenCL -o create_device_context
	$(FC) basic_device_io.f90 -L$(CL_LIB) -lOpenCL -o basic_device_io

clfortran: clfortran.f90
	$(FC) -c clfortran.f90

clean:
	rm -f query_platforms_devices create_device_context
	rm -f *.o *.mod

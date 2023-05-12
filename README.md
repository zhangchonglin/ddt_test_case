# DDT offline example case
DDT offline test case from NERSC documentation

Note:
- `submit_1node_np=4.sh` use 4 MPI ranks and 1 node, working fine
- `submit_2nodes_np=8.sh` use 8 MPI ranks and 2 nodes, does not work with following `srun` error:
```
Arm Forge 22.1.3 - Arm DDT                                                      
                                                                                   
srun: error: task 0 launch failed: Error configuring interconnect                  
srun: error: task 2 launch failed: Error configuring interconnect               
srun: error: task 4 launch failed: Error configuring interconnect               
srun: error: task 6 launch failed: Error configuring interconnect               
srun: error: task 1 launch failed: Error configuring interconnect               
srun: error: task 3 launch failed: Error configuring interconnect               
srun: error: task 5 launch failed: Error configuring interconnect               
srun: error: task 7 launch failed: Error configuring interconnect  
``` 

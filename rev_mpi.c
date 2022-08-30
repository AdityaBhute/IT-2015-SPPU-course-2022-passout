#include<stdio.h>
#include<mpi.h>

int main( int argc, char *argv[])
{
char message[20];
int myrank;
MPI_Status status;
MPI_Init( &argc, &argv );
MPI_Comm_rank( MPI_COMM_WORLD, &myrank );
if (myrank == 0) /* code for process zero */
{

        //send( dest, type, address, length )
        MPI_Send(message, message+1, MPI_CHAR, 1, 99, MPI_COMM_WORLD);
}
else if (myrank == 1) /* code for process one */
{

        // MPI_RECV (buf, count, datatype, source, tag, comm, status)

        MPI_Recv(message, 20, MPI_CHAR, 0, 99, MPI_COMM_WORLD, &status);
        printf("received :%s:\n", message);
}
MPI_Finalize();
return 0;
}


/*Execution*/
// $> mpicc rev_mpi.c -o rev
// $> mpirun -np 4 rev
import java.rmi.Remote; 
import java.rmi.RemoteException;  

//Creating Remote interface for our app^on

public interface Hello extends Remote {
void printMsg() throws RemoteException;
}
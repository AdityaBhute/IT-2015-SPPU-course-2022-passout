import java.util.*;

public class AlternateOddEven {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Take odd numbers as input from the user
        System.out.println("Enter odd numbers separated by spaces:");
        List<Integer> oddNumbers = new ArrayList<>();
        for (String s : scanner.nextLine().split("\\s+")) {
            oddNumbers.add(Integer.parseInt(s));
        }

        // Take even numbers as input from the user
        System.out.println("Enter even numbers separated by spaces:");
        List<Integer> evenNumbers = new ArrayList<>();
        for (String s : scanner.nextLine().split("\\s+")) {
            evenNumbers.add(Integer.parseInt(s));
        }

        // Shared lock object for synchronization
        Object lock = new Object();

        // Thread to print odd numbers
        Thread oddThread = new Thread(() -> {
            for (int num : oddNumbers) {
                synchronized (lock) {
                    System.out.println("Odd: " + num);
                    lock.notify(); // Notify the even thread
                    try {
                        lock.wait(); // Wait for the even thread to print
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });

        // Thread to print even numbers
        Thread evenThread = new Thread(() -> {
            for (int num : evenNumbers) {
                synchronized (lock) {
                    System.out.println("Even: " + num);
                    lock.notify(); // Notify the odd thread
                    try {
                        lock.wait(); // Wait for the odd thread to print
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });

        // Start both threads
        oddThread.start();
        evenThread.start();

        // Ensure the program ends properly
        try {
            oddThread.join();
            evenThread.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        scanner.close();
    }
}

/*C:\Users\Admin\.jdks\openjdk-23.0.1\bin\java.exe "-javaagent:C:\Users\Admin\IntelliJ IDEA Community Edition 2024.3\lib\idea_rt.jar=60085:C:\Users\Admin\IntelliJ IDEA Community Edition 2024.3\bin" -Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8 -classpath C:\Users\Admin\IdeaProjects\Even-odd2thread\out\production\Even-odd2thread AlternateOddEven
Enter odd numbers separated by spaces:
3 7 9
Enter even numbers separated by spaces:
2 4 6
Even: 2
Odd: 3
Even: 4
Odd: 7
Even: 6
Odd: 9
*/ //Aditya output

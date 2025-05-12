import java.util.Scanner;

public class Main {

    public static String isValidTime(String num) {
        int length = num.length();

        for (int i = 1; i < length; i++) {
            try {
                int hours = Integer.parseInt(num.substring(0, i));
                int minutes = Integer.parseInt(num.substring(i));
                if (hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59) {
                    return "YES"; // корректное время найдено
                }
            } catch (NumberFormatException e) {
                return "NO"; 
            }
        }

        return "NO"; 
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("");
        String line = scanner.nextLine();
        String[] numbers = line.trim().split("\\s+");

        StringBuilder result = new StringBuilder();
        for (String num : numbers) {
            result.append(isValidTime(num)).append(" ");
        }

        System.out.println("");
        System.out.println(result.toString().trim());

        scanner.close(); 
    }
}



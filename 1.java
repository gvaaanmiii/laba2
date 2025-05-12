import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String input = scanner.nextLine();
        int vowelCount = 0;
        int consonantCount = 0;
        input = input.toLowerCase();

        String vowels = "aeiouy";

        for (char c : input.toCharArray()) {
            if (Character.isLetter(c)) {
                if (vowels.indexOf(c) != -1) {
                    vowelCount++;
                } else {
                    consonantCount++;
                }
            }
        }

        if (vowelCount > consonantCount) {
            System.out.println("Да");
        } else if (vowelCount < consonantCount) {
            System.out.println("Нет");
        } else {
            System.out.println("Одинаково");
        }

        scanner.close();
    }
}

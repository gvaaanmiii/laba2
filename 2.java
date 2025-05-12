import java.util.HashSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку (только строчные буквы): ");
        String sentence = scanner.nextLine();
        if (isPangram(sentence)) {
            System.out.println("true");
        } else {
            System.out.println("false");
        }

        scanner.close();
    }
    public static boolean isPangram(String sentence) {
        HashSet<Character> letters = new HashSet<>();
        for (char c : sentence.toCharArray()) {
            if (c >= 'a' && c <= 'z') {
                letters.add(c); 
            }
        }
        return letters.size() == 26;
    }
}


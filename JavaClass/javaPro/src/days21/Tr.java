package days21;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Post {
    private String title;
    private String content;

    public Post(String title, String content) {
        this.title = title;
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }
}

public class Tr {
    private List<Post> posts;
    private Scanner scanner;

    public Tr() {
        this.posts = new ArrayList<>();
        this.scanner = new Scanner(System.in);
    }

    public void run() {
        while (true) {
            printMenu();
            int choice = scanner.nextInt();
            scanner.nextLine(); // 버퍼 비우기

            switch (choice) {
                case 1:
                    writePost();
                    break;
                case 2:
                    viewPosts();
                    break;
                case 3:
                    recommendDinner();
                    break;
                case 0:
                    System.out.println("프로그램을 종료합니다.");
                    System.exit(0);
                default:
                    System.out.println("잘못된 선택입니다. 다시 선택해주세요.");
            }
        }
    }

    private void printMenu() {
        System.out.println("\n===== 저녁 메뉴 추천 게시판 =====");
        System.out.println("1. 글 작성");
        System.out.println("2. 글 보기");
        System.out.println("3. 저녁 메뉴 추천 받기");
        System.out.println("0. 종료");
        System.out.print("선택: ");
    }

    private void writePost() {
        System.out.print("제목을 입력하세요: ");
        String title = scanner.nextLine();
        System.out.print("내용을 입력하세요: ");
        String content = scanner.nextLine();

        Post post = new Post(title, content);
        posts.add(post);

        System.out.println("글이 작성되었습니다.");
    }

    private void viewPosts() {
        System.out.println("\n===== 글 목록 =====");
        for (int i = 0; i < posts.size(); i++) {
            Post post = posts.get(i);
            System.out.println((i + 1) + ". " + post.getTitle());
        }

        System.out.print("글 번호를 선택하세요 (0은 뒤로 가기): ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // 버퍼 비우기

        if (choice >= 1 && choice <= posts.size()) {
            Post post = posts.get(choice - 1);
            System.out.println("\n제목: " + post.getTitle());
            System.out.println("내용: " + post.getContent());
        } else if (choice == 0) {
            // 뒤로 가기
        } else {
            System.out.println("잘못된 선택입니다.");
        }
    }

    private void recommendDinner() {
        // 간단한 예시로 미리 정해진 메뉴 중 하나를 랜덤으로 추천
        String[] dinnerMenu = {"피자", "짜장면", "초밥", "치킨", "스테이크"};
        int randomIndex = (int) (Math.random() * dinnerMenu.length);
        String recommendedDinner = dinnerMenu[randomIndex];

        System.out.println("오늘의 저녁 메뉴 추천: " + recommendedDinner);
    }

    public static void main(String[] args) {
        Tr dinnerBoard = new Tr();
        dinnerBoard.run();
    }
}




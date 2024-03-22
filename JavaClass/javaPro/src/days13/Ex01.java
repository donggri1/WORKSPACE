package days13;

import days14.Tv;
//import days14.Studnet;
/**
 * @author LEE
 * @date 2024. 1. 17. - 오전 10:08:52
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args) {
		Tv tv1 = new Tv();
		
		// 1. Git 개요
		// 2. GitHub 계정 생성
		// 3. Git 설치
		// 4. New Repository - javaPro
		// 5. ghp_Wohss1oYbl
		// 6. E:\Class\Workspace\JavaClass-Home 집
		// 6. E:\Class\Workspace\JavaClass-SiSt 교육원
		// 7. Git 사용자 등록
		//		$ git config --global user.name  "사용자이름"
		//		$ git config --global user.email "사용자이름"
		// 7-2. $ git config user.name
		// 7-2. $ git config user.email
		// 7-2. $ git config -l
		
		// 8. 원격 저장소 등록 확인.
		// $ git remote -v
		// fatal: not a git repository (or any of the parent directories): .git
		
		// 9. 로컬 저장소 생성
		// $ git init
		// Initialized empty Git repository in E:/Class/Workspace/JavaClass-SiSt/.git/
		//
		
		// 10. ls
		// user@DESKTOP-COJ9858 MINGW64 /e/Class/Workspace/JavaClass-SiSt
		//$ ls
		// Hello.java Hello.java
		
		// 11. java porject : gitPro
		// 11-2. .gitignore 파일 확인	/.metadata/
		
		//12.깃 상태 확인
		//$ git status
//		On branch master
//
//		No commits yet
//
//		Untracked files:
//		  (use "git add <file>..." to include in what will be committed)
//		        .gitignore
//		        Hello.class
//		        Hello.java
//		        gitPro/
//
//		nothing added to commit but untracked files present (use "git add" to track)
		
		// 13. 다시 원격저장소 확인 -> 원격 저장소 등록
		//https://github.com/donggri1/javaPro.git
		// $ git remote add origin https://github.com/donggri1/javaPro.git
		// 13-2.
//		$  git remote -v
//		origin  https://github.com/donggri1/javaPro.git (fetch)
//		origin  https://github.com/donggri1/javaPro.git (push)
		
		// 14. 스테이징 영역 추가
		//$git add.
		//$ git status
		/*
		On branch master

		No commits yet

		Changes to be committed:
		  (use "git rm --cached <file>..." to unstage)
		        new file:   .gitignore
		        new file:   Hello.class
		        new file:   Hello.java
		        new file:   gitPro/.classpath
		        new file:   gitPro/.gitignore
		        new file:   gitPro/.project
		        new file:   gitPro/.settings/org.eclipse.jdt.core.prefs
		        new file:   gitPro/src/module-info.java
		*/
		
		// 15.로컬 저장소(git directory) 추가
//		$ git commit -m "first javaPro commit"
//		[master (root-commit) 0fb857f] first javaPro commit
//		 8 files changed, 57 insertions(+)
//		 create mode 100644 .gitignore
//		 create mode 100644 Hello.class
//		 create mode 100644 Hello.java
//		 create mode 100644 gitPro/.classpath
//		 create mode 100644 gitPro/.gitignore
//		 create mode 100644 gitPro/.project
//		 create mode 100644 gitPro/.settings/org.eclipse.jdt.core.prefs
//		 create mode 100644 gitPro/src/module-info.java
		
		// 16.원격저장소 추가 
//		$ git push
		// 17. JavaClass-SiSt (교육원) - > 원격 저장소

			// -- [집] -- JavaClass-Home 폴더(집)
			// 1) E:\Class\Workspace\JavaClass-Home 폴더이동
			// 2) Git repository(깃 로컬 저장소) 생성
			// 	git init X
			// 	git clone 
			/*$ git clone https://github.com/donggri1/javaPro.git JavaClass
				Cloning into 'JavaClass'...
				remote: Enumerating objects: 13, done.
				remote: Counting objects: 100% (13/13), done.
				remote: Compressing objects: 100% (9/9), done.
				remote: Total 13 (delta 1), reused 13 (delta 1), pack-reused 0
				Receiving objects: 100% (13/13), done.
				Resolving deltas: 100% (1/1), done.

			 */
			// git config user.name, user.email 등록
			// git remote - origin ~~~(master) 원경저장소도 origin 별칭으로 등록

				
		
		// *** [이클립스 + git명령어 ] ***
		// 1. javaClass-SiSt 폴더 (교육원)
		//		ㄴ 바로 이클립스 실행....
		//			gitPro 자바프로젝트 생성
		// 2. GitHub
		//		javaPor 원격저장소 생성
		// 3. javaPro 원격저장소를 복제 (clone)
		// https://github.com/donggri1/javaPro1.git 주소를 반드시 먼저 복사.
//		 3-2 .C:\Users/user\git\javaPro1 로컬 저장소
//						ㄴ .git 폴더
		//				ㄴ	원격 저장소로부터 복제한 폴더,파일
		// 4. 충돌 처리 + merge
		
		//// 집 ///
		
		
	
	
	
	
	
	
	
	
	
	
	
	}

}

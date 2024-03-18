package days13;

public class trt {
	package days13;

	/**
	 * @author kenik
	 * @date 2024. 1. 17. - 오전 7:46:12
	 * @subject
	 * @content
	 */
	public class Ex01 {

		public static void main(String[] args) {
			// 1. Git 개요
			// 2. GitHub 계정 생성
			// 3. Git 설치 - https://git-scm.com/
			// 4. New Repository - javaPro
			// 5. Token : ghp_quyro0XXXXXXXXXXX
			// 6. E:\Class\SS20Class\Workspace\JavaClass-Home( 집 )
			// 6. E:\Class\SS20Class\Workspace\JavaClass-SiSt( 교육원 )
			// 7. Git 사용자 등록
			//    $ git config --global user.name "사용자이름"
			//    $ git config --global user.email "사용자이메일"
			// 7-2. $ git config user.name
			// 7-2. $ git config user.email
			// 7-2. $ git config -l

			// 11:02 수업 시작~
			// 8. 원격 저장소 등록 확인.
			// $ git remote -v
			// fatal: not a git repository (or any of the parent directories): .git

			// 9. 로컬 저장소 생성
			// $ git init
			// Initialized empty Git repository in E:/Class/SS20Class/Workspace/JavaClas
			//  s-SiSt/.git/

			// 10.ls
			// user@SIST14-CLASS5 MINGW64 /e/Class/SS20Class/Workspace/JavaClass-SiSt (main)
			// $ ls
			// Hello.class  Hello.java

			// 11. java project : gitPro
			// 11-2.   .gitignore 파일 확인     /.metadata/

			// 12. 깃 상태 확인
			// $ git status
			//	      On branch main
			//
			//	      No commits yet
			//
			//	      Untracked files:
			//	        (use "git add <file>..." to include in what will be committed)
			//	              .gitignore
			//	              Hello.java
			//	              gitPro/
			//
			//	      nothing added to commit but untracked files present (use "git add" to tra
			//	      ck)

			// 13. 다시 원격저장소 확인 -> 원격저장소 등록
			//   https://github.com/withkenik/javaPro.git
			// $ git remote add origin https://github.com/withkenik/javaPro.git
			// 13-2. 
			// $ git remote -v
			// origin  https://github.com/withkenik/javaPro.git (fetch)
			// origin  https://github.com/withkenik/javaPro.git (push)

			/*
	      $ git add -h
	      usage: git add [<options>] [--] <pathspec>...

	          -n, --dry-run         dry run
	          -v, --verbose         be verbose

	          -i, --interactive     interactive picking
	          -p, --patch           select hunks interactively
	          -e, --edit            edit current diff and apply
	          -f, --force           allow adding otherwise ignored files
	          -u, --update          update tracked files
	          --renormalize         renormalize EOL of tracked files (implies -u)
	          -N, --intent-to-add   record only the fact that the path will be adde
	      d later
	          -A, --all             add changes from all tracked and untracked file
	      s
	          --ignore-removal      ignore paths removed in the working tree (same
	      as --no-all)
	          --refresh             don't add, only refresh the index
	          --ignore-errors       just skip files which cannot be added because o
	      f errors
	          --ignore-missing      check if - even missing - files are ignored in
	      dry run
	          --sparse              allow updating entries outside of the sparse-ch
	      eckout cone
	          --chmod (+|-)x        override the executable bit of the listed files
	          --pathspec-from-file <file>
	                                read pathspec from file
	          --pathspec-file-nul   with --pathspec-from-file, pathspec elements ar
	      e separated with NUL character
			 */

			// 14. 스테이징 영역 추가
			// $ git add .
			/*
	      $ git status
	      On branch main

	      No commits yet

	      Changes to be committed:
	        (use "git rm --cached <file>..." to unstage)
	              new file:   .gitignore
	              new file:   Hello.java
	              new file:   gitPro/.classpath
	              new file:   gitPro/.gitignore
	              new file:   gitPro/.project
	              new file:   gitPro/src/gitPro/Sample.java
			 */

			// 15.  로컬 저장소( git directory ) 추가      
			//	      $ git commit -m "first javaPro commit"
			//	      [main (root-commit) 92acfbd] first javaPro commit
			//	       6 files changed, 46 insertions(+)
			//	       create mode 100644 .gitignore
			//	       create mode 100644 Hello.java
			//	       create mode 100644 gitPro/.classpath
			//	       create mode 100644 gitPro/.gitignore
			//	       create mode 100644 gitPro/.project
			//	       create mode 100644 gitPro/src/gitPro/Sample.java

			// 16. 원격 저장소 추가.
			//	      $ git push
			//	      fatal: The current branch main has no upstream branch.
			//	      To push the current branch and set the remote as upstream, use
			//
			//	          git push --set-upstream origin main
			//
			//	      To have this happen automatically for branches without a tracking
			//	      upstream, see 'push.autoSetupRemote' in 'git help config'.
			//
			//
			//	      user@SIST14-CLASS5 MINGW64 /e/Class/SS20Class/Workspace/JavaClass-SiSt (main)
			//	      $ git push --set-upstream origin main
			//	      Enumerating objects: 11, done.
			//	      Counting objects: 100% (11/11), done.
			//	      Delta compression using up to 8 threads
			//	      Compressing objects: 100% (7/7), done.
			//	      Writing objects: 100% (11/11), 1.13 KiB | 386.00 KiB/s, done.
			//	      Total 11 (delta 0), reused 0 (delta 0), pack-reused 0
			//	      To https://github.com/withkenik/javaPro.git
			//	       * [new branch]      main -> main
			//	      branch 'main' set up to track 'origin/main'.

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

			// 이클립스 + git 명령어 







		} // main

	} // class


}

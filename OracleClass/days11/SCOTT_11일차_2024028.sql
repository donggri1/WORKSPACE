--(수) 2/28 :DB모델링

1.이상현상
2.함수 종속성
3.정규화
------------
ㄱ.정규화 ?  이상 현상이 발생하지 않도록 하려면,
             관련 있는 속성들로만 릴레이션을 구성해야 하는데 
             이를 위해 필요한 것이 정규화
ㄴ.함수적 종속석(FD;Functional Dependency) 속성들 간의 관련성
    함수적 종속?
    emp 테이블
    empno(PK) ename     ename(Y)은 empno(X)에 함수적으로 종속된다.
       X        Y
    결정자  → 종속자
       X    →   Y

    empno -> ename
    empno -> hiredate
    empno -> job

    empno -> (ename,job,mgr,hiredate,sal,comm,deptno)
    
    (1) 완전 함수적 종속
        여러 개의 속성이 모여서 하나의 기본키(PK)를 이룰때 == 복합키
        복합키 전체에 어떤 속성이 종속적일 때 "완전 함수적 종속"이라고 한다.
        예)
        (고객ID + 이벤트번호)  ->      당첨여부
    (2) 부분 함수적 종속 (복합키)
        완전 함수 종속이 아니면 "부분 함수적 종속" 이라고 한다.
        예)
        (고객ID + 이벤트번호)  ->      고객이름 X
        고객ID   -> 고객이름
        
    (3) 이행 함수적 종속
        Y는 X에 함수적 종속이다.
        결정자         종속자
        X       ->      Y               Y   ->  Z       일때      X   ->   Z    
        empno   ->      deptno      deptno  ->   dname


3. 정규화 정의와 필요성
    (1) 제1 정규형( 1NF )
    릴레이션에 속한 모든 속성의 도메인이 원자 값(atomic value)으로만 구성되어 있으면 제1정규형에 속한다.
    
    도메인 ? 속성 하나가 가질 수 있는 모든 값의 집합을 해당 속성의 도메인(domain)이라 한다.
    예) 부서명 컬럼(속성) - 도메인( 영업부,생산부,총무부 )

    (2) 제2 정규형(2NF)
    릴레이션이 제1정규형에 속하고
    ,기본키가 아닌 모든 속성이 기본키에 완전 함수 종속되면 제2정규형에 속한다.
    "부분 함수 종속"을 제거해서 "완전 함수 종속" 으로 되면 우리는 제2정규형에 속한다
    복합키-> 속성
    예)    예 ㅣ 속성
        고객ID | DP
        
    (3) 제3 정규형
    =릴레이션이 제2정규형에 속하고, 기본키가 아닌 모든 속성이 기본키에 이행적 함수 종속이 되지 않으면 제3정규형에 속한다.
    , 기본키가 아닌 모든 속성이 기본키에 "이행적 함수 종속"이 되지 않으려면 수수행 한다.
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

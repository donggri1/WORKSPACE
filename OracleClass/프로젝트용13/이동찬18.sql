기내식자료,기프트카드자료 ,기프트카드사용자료
--중복되지않는 카드번호 만들려다보니까
--카드테이블을 만들수밖에없네요 
--핀번호도 랜덤입력 로넘 시퀀스이용해서 중복되지않는카드 생성


-- 첫 번째 행 삽입
INSERT INTO Customerc VALUES (
    1,                -- 문의사항고유번호
    '칭송',                        -- 유형
    '공항서비스',                  -- 분야
    '이',                         -- 승객 성
    '동찬',                       -- 승객 이름
    '(82) 10-1234-5678',          -- 전화번호
    'example@email.com',          -- 이메일주소
    '칭찬해요 ~',                  -- 제목
    '모두 너무 친절합니다',          -- 내용
    '1232-3456-7890-1323',         -- 스카이패스회원번호
    '34534534',                     -- 예약번호
    1,                            -- 이메일수신여부
    '서울',                        -- 도착도시
    '뉴욕',                        -- 출발도시
    TO_DATE('2024-03-10', 'YYYY-MM-DD'), -- 출발일자
    'KE123'                       -- 항공편명
);

-- 두 번째 행 삽입
INSERT INTO Customerc VALUES (
    2,                -- 문의사항고유번호
    '문의',                        -- 유형
    '기내식',                      -- 분야
    '김',                         -- 승객 성
    '영희',                       -- 승객 이름
    '(82) 10-2345-6789',          -- 전화번호
    'user2@example.com',          -- 이메일주소
    '기내식 관련 문의',            -- 제목
    '기내식 옵션이 무엇인가요?',   -- 내용
    '9012-3678-7890-1323',                       -- 스카이패스회원번호
    '12346786',                     -- 예약번호
    0,                            -- 이메일수신여부
    '도쿄',                        -- 도착도시
    '서울',                        -- 출발도시
    TO_DATE('2024-04-15', 'YYYY-MM-DD'), -- 출발일자
    'KE456'                       -- 항공편명
);

-- 세 번째 행 삽입
INSERT INTO Customerc VALUES (
    3,                -- 문의사항고유번호
    '불만',                        -- 유형
    '수화물',                      -- 분야
    '박',                         -- 승객 성
    '민수',                       -- 승객 이름
    '(82) 10-3456-7890',          -- 전화번호
    'user3@example.com',          -- 이메일주소
    '수화물 분실에 대한 불만',      -- 제목
    '짐을 받지 못했습니다',        -- 내용
    '9012-3456-2340-1323',                       -- 스카이패스회원번호
    '54367344',                     -- 예약번호
    1,                            -- 이메일수신여부
    '뉴욕',                        -- 도착도시
    '런던',                        -- 출발도시
    TO_DATE('2024-05-20', 'YYYY-MM-DD'), -- 출발일자
    'KE789'                       -- 항공편명
);

-- 네 번째 행 삽입
INSERT INTO Customerc VALUES (
    4,                -- 문의사항고유번호
    '제언',                        -- 유형
    '기타',                        -- 분야
    '최',                         -- 승객 성
    '지민',                       -- 승객 이름
    '(82) 10-4567-8901',          -- 전화번호
    'user4@example.com',          -- 이메일주소
    '기내 서비스 개선 제안',        -- 제목
    '기내 엔터테인먼트를 개선해주세요', -- 내용
    '9012-3456-7890-1323',                       -- 스카이패스회원번호
    '21346578',                     -- 예약번호
    0,                            -- 이메일수신여부
    '로스앤젤레스',                -- 도착도시
    '서울',                        -- 출발도시
    TO_DATE('2024-06-01', 'YYYY-MM-DD'), -- 출발일자
    'KE890'                       -- 항공편명
);

INSERT INTO Customerc VALUES (
    5,                -- 문의사항고유번호
    '불만',                        -- 유형
    '기내식',                      -- 분야
    '김',                         -- 승객 성
    '민준',                       -- 승객 이름
    '(82) 10-2345-6789',          -- 전화번호
    'user5@example.com',          -- 이메일주소
    '기내식 품질 개선 요청',         -- 제목
    '기내식의 맛과 질이 기대에 못 미쳤습니다.', -- 내용
    '1234-5678-9012-3456',        -- 스카이패스회원번호
    '87654321',                   -- 예약번호
    1,                            -- 이메일수신여부
    '도쿄',                        -- 도착도시
    '서울',                        -- 출발도시
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), -- 출발일자
    'KE453'                       -- 항공편명
);


--항공기
CREATE TABLE airplane (
    asnum varchar2(100) NOT NULL,
    AIRLINE VARCHAR(30) NULL,
    totalseat NUMBER(4) NOT NULL,
    TYPE VARCHAR(30) NULL,
    M_DATE DATE NULL,
    FCLA_COUNT NUMBER(3) NULL,
    PreCLA_COUNT NUMBER(3) NULL,
    NCLA_COUNT NUMBER(3) NULL,
    PRECLA_Features VARCHAR2(300) NULL,
    NCLA_Features VARCHAR2(300) NULL
);


INSERT INTO airplane  VALUES (
    'HL7553',
    '대한항공',
    276,
    'A330-300',
    TO_DATE('1999-04-16', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '프레스티지 클래스 우선 탑승, 추가 수하물 허용',
    '향상된 좌석 공간, 개인 엔터테인먼트 시스템',
    NULL
);



INSERT INTO airplane VALUES (
    'HL7554',
    '대한항공',
    276,
    'A330-300',
    TO_DATE('1999-01-04', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '프레스티지 클래스 전용 체크인, 라운지 이용 가능',
    '조절 가능한 헤드레스트, USB 충전 포트',
    NULL
);

INSERT INTO airplane VALUES (
    'HL7611',
    '대한항공',
    407,
    'A380-800',
    TO_DATE('2010-09-27', 'YYYY-MM-DD'),
    12,
    94,
    301,
    '프레스티지 클래스 셀프 체크인, 우선 탑승',
    '와이드 스크린 개인 모니터, 다리 공간 확장'
    ,'퍼스트클래스 최고의 서비스'
);


INSERT INTO airplane VALUES (
    'HL8348',
    '대한항공',
    146,
    'B737-8',
    TO_DATE('2019-04-18', 'YYYY-MM-DD'),
    0,
    8,
    138,
    '프레스티지 클래스 스위트, 고급 식사 옵션',
    '개인 엔터테인먼트, 더 넓은 좌석 및 다리 공간'
    ,NULL
);

INSERT INTO airplane VALUES (
    'HL8240',
    '대한항공',
    138,
    'B737-800',
    TO_DATE('2011-09-14', 'YYYY-MM-DD'),
    0,
    12,
    126,
    '프레스티지 클래스 스위트, 고급 식사 옵션',
    '개인 엔터테인먼트, 더 넓은 좌석 및 다리 공간'
    ,NULL
);

------

--좌석


------
-- 일등석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01A', 'HL7553', '01A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01B', 'HL7553', '01B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01C', 'HL7553', '01C', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02A', 'HL7553', '02A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02B', 'HL7553', '02B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02C', 'HL7553', '02C', '일등석');

-- 일반석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20A', 'HL7553', '20A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20B', 'HL7553', '20B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20C', 'HL7553', '20C', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21A', 'HL7553', '21A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21B', 'HL7553', '21B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21C', 'HL7553', '21C', '일반석');

-- 프레스티지석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10A', 'HL7553', '10A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10B', 'HL7553', '10B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10C', 'HL7553', '10C', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11A', 'HL7553', '11A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11B', 'HL7553', '11B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11C', 'HL7553', '11C', '프레스티지석');

-- 일등석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01D', 'HL7554', '01D', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01E', 'HL7554', '01E', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01F', 'HL7554', '01F', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02D', 'HL7554', '02D', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02E', 'HL7554', '02E', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02F', 'HL7554', '02F', '일등석');
-- 일반석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21A', 'HL7554', '21A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21B', 'HL7554', '21B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21C', 'HL7554', '21C', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22A', 'HL7554', '22A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22B', 'HL7554', '22B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22C', 'HL7554', '22C', '일반석');
-- 프레스티지석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11A', 'HL7554', '11A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11B', 'HL7554', '11B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11C', 'HL7554', '11C', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12A', 'HL7554', '12A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12B', 'HL7554', '12B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12C', 'HL7554', '12C', '프레스티지석');

-- 일등석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01G', 'HL7611', '01G', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01H', 'HL7611', '01H', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01I', 'HL7611', '01I', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02G', 'HL7611', '02G', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02H', 'HL7611', '02H', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02I', 'HL7611', '02I', '일등석');

-- 일반석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22A', 'HL7611', '22A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22B', 'HL7611', '22B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22C', 'HL7611', '22C', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23A', 'HL7611', '23A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23B', 'HL7611', '23B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23C', 'HL7611', '23C', '일반석');
-- 프레스티지석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12A', 'HL7611', '12A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12B', 'HL7611', '12B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12C', 'HL7611', '12C', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13A', 'HL7611', '13A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13B', 'HL7611', '13B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13C', 'HL7611', '13C', '프레스티지석');

-- 일등석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01A', 'HL8348', '01A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01B', 'HL8348', '01B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01C', 'HL8348', '01C', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02A', 'HL8348', '02A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02B', 'HL8348', '02B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02C', 'HL8348', '02C', '일등석');
-- 일반석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20A', 'HL8348', '20A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20B', 'HL8348', '20B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20C', 'HL8348', '20C', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21A', 'HL8348', '21A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21B', 'HL8348', '21B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21C', 'HL8348', '21C', '일반석');
-- 프레스티지석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10A', 'HL8348', '10A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10B', 'HL8348', '10B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10C', 'HL8348', '10C', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11A', 'HL8348', '11A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11B', 'HL8348', '11B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11C', 'HL8348', '11C', '프레스티지석');


-- 일등석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01A', 'HL8240', '01A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01B', 'HL8240', '01B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01C', 'HL8240', '01C', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02A', 'HL8240', '02A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02B', 'HL8240', '02B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02C', 'HL8240', '02C', '일등석');
-- 일반석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20A', 'HL8240', '20A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20B', 'HL8240', '20B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20C', 'HL8240', '20C', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21A', 'HL8240', '21A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21B', 'HL8240', '21B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21C', 'HL8240', '21C', '일반석');
-- 프레스티지석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10A', 'HL8240', '10A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10B', 'HL8240', '10B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10C', 'HL8240', '10C', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11A', 'HL8240', '11A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11B', 'HL8240', '11B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11C', 'HL8240', '11C', '프레스티지석');
--------
--식사메뉴

--------

-- 첫 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (1, '치킨 카레 라이스 - 온화한 향신료와 함께 제공되는 풍미 가득한 치킨 카레');

-- 두 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (2, '비건 스페셜 - 채식주의자를 위한 특별 준비된 신선한 야채와 곡물로 만든 식사');

-- 세 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (3, '스테이크와 감자 - 고급스러운 스테이크와 함께 제공되는 구운 감자');

-- 네 번째

INSERT INTO flight_meal (meal_code, menu) VALUES (4, '비빔밥- 새콤달콤 고추장과 어우러지는 각종 야채 밸런스잡힌 식사');

-- 다섯번째

INSERT INTO flight_meal (meal_code, menu) VALUES (5, '랍스터와 샌드위치 - 고급스러운 랍스터 함께 제공되는 구운 샌드위치');

-- 여섯번째

INSERT INTO flight_meal (meal_code, menu) VALUES (6, '돈까스- 경양식 돈까스와 샐러드');

-- 일곱번째

INSERT INTO flight_meal (meal_code, menu) VALUES (7, ' 바비큐 - 달콤한 소스와 어우러진 풍성한 식사 ');

---
--기프트카드 생성

---

INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '1234-5678-9012-3456',       -- 카드 번호
    '축하합니다!',               -- 메시지
    123456,                      -- PIN 번호
    '홍길동',                    -- 수령인
    '010-1234-5678',             -- 수령인 전화번호
    '김철수',                    -- 발송인
    '010-8765-4321',             -- 발송인 전화번호
    500000                       -- 금액 (50만원)
);



INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '6654-5678-9012-3456',       -- 카드 번호
    '축하합니다!',               -- 메시지
    576555,                      -- PIN 번호
    '김명선',                    -- 수령인
    '010-1234-5678',             -- 수령인 전화번호
    '김철수',                    -- 발송인
    '010-8765-4321',             -- 발송인 전화번호
    100000                       -- 금액 (50만원)
);


INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '0988-5678-9012-3456',       -- 카드 번호
    '축하합니다!',               -- 메시지
    678977,                      -- PIN 번호
    '이동찬',                    -- 수령인
    '010-1234-5678',             -- 수령인 전화번호
    '김철수',                    -- 발송인
    '010-8765-4321',             -- 발송인 전화번호
    50000                       -- 금액 (50만원)
);


INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '4646-5678-9012-3456',       -- 카드 번호
    '축하합니다!',               -- 메시지
    234533,                      -- PIN 번호
    '이경석',                    -- 수령인
    '010-1234-5678',             -- 수령인 전화번호
    '김철수',                    -- 발송인
    '010-8765-4321',             -- 발송인 전화번호
    200000                       -- 금액 (50만원)
);


INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '7686-5678-9012-3456',       -- 카드 번호
    '축하합니다!',               -- 메시지
    765755,                      -- PIN 번호
    '권석호',                    -- 수령인
    '010-1234-5678',             -- 수령인 전화번호
    '김철수',                    -- 발송인
    '010-8765-4321',             -- 발송인 전화번호
    400000                       -- 금액 (50만원)
);
INSERT INTO CARD_USE VALUES (1,'등록',TO_DATE('2024-03-07','YYYY-MM-DD'),500000,'1234-5678-9012-3456');
INSERT INTO CARD_USE VALUES (2,'등록',TO_DATE('2024-03-07','YYYY-MM-DD'),200000,'0988-5678-9012-3456');
INSERT INTO CARD_USE VALUES (3,'등록',TO_DATE('2024-03-07','YYYY-MM-DD'),50000,'1234-5678-9012-3456');
INSERT INTO CARD_USE VALUES (4,'등록',TO_DATE('2024-03-07','YYYY-MM-DD'),200000,'4646-5678-9012-3456');
INSERT INTO CARD_USE VALUES (5,'등록',TO_DATE('2024-03-07','YYYY-MM-DD'),400000,'7686-5678-9012-3456');
----

----
-- CARD_TABLE 생성
SELECT *
FROM CARD_TABLE;
INSERT INTO card_table VALUES ( 1,'1234-3435-1234-4320');
INSERT INTO card_table VALUES ( 2,'5678-3456-8970-4320');
INSERT INTO card_table VALUES ( 3,'9898-1254-6789-5454');
INSERT INTO card_table VALUES ( 4,'3083-3852-6789-1342');
INSERT INTO card_table VALUES ( 5,'2342-1534-1900-5589');
INSERT INTO card_table VALUES ( 6,'8909-1254-9808-5467');
INSERT INTO card_table VALUES ( 7,'2353-1254-8774-7777');


CREATE SEQUENCE customercseq
START WITH 6;
CREATE SEQUENCE flight_mealseq
START WITH 4;
CREATE SEQUENCE tr_dc_giftcard
START WITH 2;
CREATE SEQUENCE   tr_dc_giftcard;
CREATE SEQUENCE SEQ_LOB
START WITH 4;
CREATE SEQUENCE  DC_giftcard_01
START WITH 8;
------------
-----------


-- 고객의 말씀 조회
-- 고객의 말씀 조회

EXEC dc_customerc_01(5);

CREATE OR REPLACE PROCEDURE dc_customerc_01
(
    pQ_num NUMBER
)
IS
    vE_check VARCHAR2(20);
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_num = pQ_NUM;

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('해당 번호가 존재하지 않습니다.');
        ELSE
            FOR vrow IN (SELECT *   
                        FROM customerc
                        WHERE Q_num = pQ_NUM)
            LOOP
                IF  vrow.e_check =1 THEN 
                      vE_check  :='허가';
                ELSE 
                    vE_check :='거부';
                END IF;
            
                DBMS_OUTPUT.PUT_LINE('Q_num: ' || vrow.Q_num);
                DBMS_OUTPUT.PUT_LINE('Type: ' || vrow.type);
                DBMS_OUTPUT.PUT_LINE('Field: ' || vrow.Field);
                DBMS_OUTPUT.PUT_LINE('First Name: ' || vrow.F_NAME);
                DBMS_OUTPUT.PUT_LINE('Last Name: ' || vrow.L_NAME);
                DBMS_OUTPUT.PUT_LINE('Phone Number: ' || vrow.P_NUM);
                DBMS_OUTPUT.PUT_LINE('Email: ' || vrow.Email);
                DBMS_OUTPUT.PUT_LINE('Title: ' || vrow.title);
                DBMS_OUTPUT.PUT_LINE('Content: ' || vrow.content);
                DBMS_OUTPUT.PUT_LINE('SP Number: ' || vrow.SP_NUM);
                DBMS_OUTPUT.PUT_LINE('Renumber: ' || vrow.renum);
                DBMS_OUTPUT.PUT_LINE('E Check: ' ||vE_check );
                DBMS_OUTPUT.PUT_LINE('City Arr: ' || vrow.city_arr);
                DBMS_OUTPUT.PUT_LINE('Start City: ' || vrow.start_city);
                DBMS_OUTPUT.PUT_LINE('Arrival Date: ' || TO_CHAR(vrow.arr_date, 'YYYY-MM-DD'));
                DBMS_OUTPUT.PUT_LINE('Flights: ' || vrow.Flights);
            END LOOP;
        END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.PUT_LINE('해당 번호가 존재하지 않습니다.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다: ' );
END;

-- 고객의 말씀 입력

CREATE OR REPLACE PROCEDURE dc_customerc_02
(
        ptype VARCHAR2,    pField VARCHAR2,
    pF_NAME VARCHAR2,    pL_NAME VARCHAR2,    pP_NUM VARCHAR2,
    pEmail VARCHAR2,    ptitle VARCHAR2,    pcontent varchar2,
    pSP_NUM VARCHAR2,    prenum VARCHAR2,    pe_check NUMBER,
    pcity_arr VARCHAR2,    pstart_city VARCHAR2,    parr_date DATE ,
    pFlights VARCHAR2
)
IS
    vnum number ;
BEGIN
     vnum := customercseq.NEXTVAL ;

    INSERT INTO customerc
    VALUES(  vnum  ,
    ptype ,pField ,pF_NAME ,pL_NAME ,pP_NUM ,pEmail ,ptitle ,pcontent ,pSP_NUM ,prenum ,
    pe_check ,pcity_arr ,pstart_city ,parr_date  ,pFlights  );

--EXCEPTION
END;


--고객의말씀 생성 -입력
BEGIN 
    dc_customerc_02(
    '칭송', '공항서비스', '이', '동찬', '(82) 10-1234-5678',
    'example@email.com', '칭찬해요 ~', '모두 너무 친절합니다',
    '1232-3456-7890-1323', '34534534', 1,
    '서울', '뉴욕', TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
    );
    END;

-- 고객의 말씀 수정

CREATE OR REPLACE PROCEDURE dc_customerc_03
(
     pQ_num NUMBER ,    ptype VARCHAR2,    pField VARCHAR2,
    pF_NAME VARCHAR2,    pL_NAME VARCHAR2,    pP_NUM VARCHAR2,
    pEmail VARCHAR2,    ptitle VARCHAR2,    pcontent varchar2,
    pSP_NUM VARCHAR2,    prenum VARCHAR2,    pe_check NUMBER,
    pcity_arr VARCHAR2,    pstart_city VARCHAR2,    parr_date DATE ,
    pFlights VARCHAR2
)
IS
    v_count NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_NUM = pQ_num;
    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('해당하는 레코드를 찾을 수 없습니다.');
        ELSE
            UPDATE customerc
            SET  
            type= ptype ,Field = pField ,F_NAME = pF_NAME ,L_NAME = pL_NAME ,P_NUM =pP_NUM 
            ,Email= pEmail ,title = ptitle ,content = pcontent ,SP_NUM = pSP_NUM ,renum = prenum ,
            e_check = pe_check ,city_arr = pcity_arr ,start_city = pstart_city 
            ,arr_date = parr_date  ,Flights = pFlights
            WHERE Q_NUM = pQ_NUM;
    END IF;
--EXCEPTION
END;

--고객의 말씀 수정 -입력

CALL dc_customerc_03(
     1,   '칭송',    '공항서비스',
     '이',   '호통',    '(82) 10-1234-5678',
     'example@email.com',    '칭찬해요 ~',    '모두 너무 친절합니다',
   '1232-3456-7890-1323',    '34534534',    1,
     '서울',     '뉴욕',     TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
);



END;

-- 삭제 프로시저
CREATE OR REPLACE PROCEDURE dc_customerc_04
(
    pq_num NUMBER
)
IS
    v_count NUMBER;
BEGIN
    
    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_NUM = pq_num;

   
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, '해당 번호가 존재하지 않습니다..');
    ELSE
       
        DELETE FROM customerc
        WHERE Q_NUM = pq_num;
        
        DBMS_OUTPUT.PUT_LINE('레코드가 삭제되었습니다.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다 ' );
END;
-- 고객의말씀 DELETE -입력

EXEC dc_customerc_04(3);

--기내식 조회 쿼리 
CREATE OR REPLACE PROCEDURE dc_flight_meal_01
(
    pmeal_code NUMBER
)
IS
    v_count NUMBER;
BEGIN
  
    SELECT COUNT(*)
    INTO v_count
    FROM flight_meal
    WHERE meal_code = pmeal_code;

   
    IF v_count = 0 THEN
         DBMS_OUTPUT.PUT_LINE('해당 번호가 존재하지 않습니다.');
    ELSE
       
        FOR vrow IN (SELECT *
                     FROM flight_meal
                     WHERE meal_code = pmeal_code)
        LOOP
            DBMS_OUTPUT.PUT_LINE('meal_code: ' || vrow.meal_code);
            DBMS_OUTPUT.PUT_LINE('menu: ' || vrow.menu);
            DBMS_OUTPUT.PUT_LINE('MENU_PDF: vrow.menu_pdf' );
        END LOOP;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다 ' );
END;

EXEC dc_flight_meal_01(4);

--기내식 작성 쿼리 
-- 매개변수 BLOB 로그에있다면 자동저장

CREATE OR REPLACE PROCEDURE dc_flight_meal_02
(
    pmenu VARCHAR2,
    pmenu_pdf VARCHAR2
)
IS
    vmeal_code flight_meal.meal_code%TYPE;
BEGIN

    SELECT flight_mealseq.NEXTVAL INTO vmeal_code FROM dual;

    INSERT INTO flight_meal(meal_code, menu) VALUES(vmeal_code, pmenu);
    
    FLIGHT_meal_BLOB_INSERT(vmeal_code,pmenu_pdf);
    
    DBMS_OUTPUT.PUT_LINE('기내식 : '|| pmenu|| '가 생성되었습니다.');
    
EXCEPTION
    WHEN OTHERS THEN
        -- 오류 발생 시 메시지 출력
        DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다 ' );
END;

EXECUTE dc_flight_meal_02('아이스크림','meal.htm');


--기내식 blob 입력

CREATE SEQUENCE SEQ_LOB
START WITH 8;

CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\E\Class\Workspace\OracleClass';


--EXEC FLIGHT_meal_BLOB_INSERT('meal.htm');


CREATE OR REPLACE PROCEDURE FLIGHT_meal_BLOB_INSERT
( 
pmeal_code number,
V_FILENAME IN VARCHAR2
)
IS
    V_LOCATOR_BLOB  BLOB;
    
    V_SOURCE_DATA_FILE BFILE := BFILENAME('BLOB_DIR', V_FILENAME);
    
    V_DEST_OFFSET    NUMBER := 1;
    V_SRC_OFFSET      NUMBER := 1;
    
BEGIN
         
         UPDATE flight_meal
         SET  
         menu_pdf =  empty_blob()
         WHERE meal_code = pmeal_code
         RETURNING MENU_PDF INTO V_LOCATOR_BLOB;
         
         DBMS_LOB.OPEN(V_SOURCE_DATA_FILE, 
                                  DBMS_LOB.LOB_READONLY);
                                  
         DBMS_LOB.LOADBLOBFROMFILE(V_LOCATOR_BLOB,
                                                      V_SOURCE_DATA_FILE,
                                                      DBMS_LOB.GETLENGTH(V_SOURCE_DATA_FILE),
                                                      V_DEST_OFFSET,
                                                      V_SRC_OFFSET
                                                      );
                                                      
         DBMS_LOB.CLOSE(V_SOURCE_DATA_FILE);
         
         COMMIT;
         
         DBMS_OUTPUT.PUT_LINE('이미지 입력 성공!!!');
         
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('이미지 입력 실패!!!');
END;



--기내식 수정쿼리


CREATE OR REPLACE PROCEDURE dc_flight_meal_03
(
     pmeal_code flight_meal.meal_code%TYPE 
     ,pmenu VARCHAR2
    )
IS
    vcount number;
BEGIN
  SELECT COUNT(*)
  INTO vcount
  FROM flight_meal
  WHERE  meal_code = pmeal_code;
  
  IF vcount =0 THEN
  DBMS_OUTPUT.PUT_LINE('해당 번호가 존재하지 않습니다.');
  ELSE
    
                UPDATE flight_meal
                SET  
                menu =pmenu
                WHERE meal_code = pmeal_code;
    END IF;
    --EXCEPTION
END;

EXECUTE dc_flight_meal_03(1,'아이스크림');


--기내식 삭제쿼리


CREATE OR REPLACE PROCEDURE dc_flight_meal_04
(
    pmeal_code flight_meal.meal_code%TYPE
)
IS
    vcount number;
BEGIN
  SELECT COUNT(*)
  INTO vcount
  FROM flight_meal
  WHERE  meal_code = pmeal_code;
  
    IF VCOUNT = 0 THEN
     DBMS_OUTPUT.PUT_LINE('해당 번호가 존재하지 않습니다.');
    
    ELSE
        DELETE FROM flight_meal 
        WHERE meal_code = pmeal_code;
    END IF;
  
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다 ');
END;


exec dc_flight_meal_04(4);

--기프트 카드 생성쿼리
--기프트 카드 생성쿼리

--기프트 카드 생성쿼리
--기프트 카드 생성쿼리

--기프트 카드 생성쿼리
--기프트 카드 생성쿼리





CREATE TABLE card_table (
    card_code   NUMBER PRIMARY KEY,
    card_number VARCHAR2(19) 
);


CREATE OR REPLACE FUNCTION dc_giftcard_03 RETURN VARCHAR2 IS
    v_card_number VARCHAR2(19);
    v_count NUMBER; 
BEGIN

    LOOP
        v_card_number := 
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999)));
        SELECT COUNT(*)
        INTO v_count
        FROM card_table
        WHERE card_number = v_card_number;

        EXIT WHEN v_count = 0;
    END LOOP;
    
    RETURN v_card_number;
--EXCEPTION
    
END;



CREATE OR REPLACE PROCEDURE dc_giftcard_02
(
    Pmessage VARCHAR2,
    PRecipient VARCHAR2,
    PRecipient_PNUM VARCHAR2,
    PSENDER VARCHAR2,
    PSENDER_PNUM VARCHAR2,
    Pamount NUMBER
)
IS
    VCARD_NUM VARCHAR2(19);
    VPIN_NUM NUMBER(6);
    v_card_number VARCHAR2(19);
    v_card_code number;
BEGIN

    v_card_number := dc_giftcard_03;
    v_card_code := DC_giftcard_01.NEXTVAL;

    INSERT INTO card_table  VALUES (v_card_code,v_card_number);
    
    DBMS_OUTPUT.PUT_LINE('생성된 카드 번호: ' || v_card_number);



    SELECT FLOOR(DBMS_RANDOM.VALUE(100000, 999999)) INTO VPIN_NUM FROM dual;

    SELECT CARD_NUMBER
    INTO VCARD_NUM
    FROM (
        SELECT CARD_NUMBER
        FROM CARD_TABLE
        ORDER BY DBMS_RANDOM.VALUE
    )
    WHERE ROWNUM = 1;

    INSERT INTO giftcard
    VALUES (VCARD_NUM, Pmessage, VPIN_NUM, PRecipient, PRecipient_PNUM, PSENDER, PSENDER_PNUM, Pamount);
END;

EXEC DC_GIFTCARD_02('고마워','이동찬','01020893028','오동찬','01023938474',500000);


SELECT *
FROM GIFTCARD;

SELECT*
FROM card_table;

DELETE CARD_TABLE WHERE 1=1;
DELETE GIFTCARD WHERE 1=1;
-- 카드 금액 업데이트


CREATE OR REPLACE TRIGGER tr_dc_giftcard_01
BEFORE INSERT ON payrefund
FOR EACH ROW
DECLARE 
    notenough EXCEPTION;
    vamount giftcard.AMOUNT%TYPE;
    vPIN_NUM giftcard.pin_num%TYPE;
BEGIN

    IF :NEW.pmethod = '기프트카드' THEN
    
    SELECT AMOUNT,PIN_NUM INTO vamount,VPIN_NUM
    FROM GIFTCARD 
    WHERE  CARD_NUM = :NEW.GIFTCARDNUMBER;
            IF vPIN_NUM = :NEW.PIN_NUM   THEN 
            DBMS_OUTPUT.PUT_LINE('핀번호 일치!');
            
                        IF vamount<:NEW.cost   THEN
                            RAISE_APPLICATION_ERROR(-20002, '잔액이 부족합니다.');
                          
                            
                        ELSE
                            UPDATE GIFTCARD
                            SET
                            AMOUNT = vamount - :NEW.cost 
                            WHERE CARD_NUM = :NEW.GIFTCARDNUMBER;
                            DBMS_OUTPUT.PUT_LINE( '기프트카드사용완료 이용전 잔액 : '|| VAMOUNT);
                        END IF;
            ELSE
                RAISE_APPLICATION_ERROR(-20000, '핀번호 불일치.');
               
            END IF;
    END IF;
--EXCEPTION

END;


exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'할인','기프트카드',1, '1234-5678-9012-3456',123456);
exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'할인','기프트카드',1, '1234-5678-9012-3456',126556);    -- 핀넘버 불일치

SELECT *
FROM SEAT_NUM;



-- 좌석번호 생성

CREATE OR REPLACE PROCEDURE DC_SEAT_NUM
(
    pasnum       VARCHAR2,
    pseat_num    VARCHAR2,
    pseat_grade  VARCHAR2
)
IS
    vseat_code VARCHAR2(20);
BEGIN
     vseat_code := pasnum||'-'||pseat_num;

    INSERT INTO SEAT_NUM(SEAT_CODE,asnum,seat_num,seat_grade) VALUES(vseat_code,pasnum,pseat_num,pseat_grade);
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('오류가 발생했습니다' );
END;


EXEC DC_SEAT_NUM('HL7553','03A','일반석');






--기내식 blob 입력



CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\E\Class\Workspace\OracleClass';


EXEC FLIGHT_meal_BLOB_INSERT('meal.htm');


CREATE OR REPLACE PROCEDURE FLIGHT_meal_BLOB_INSERT
(V_FILENAME IN VARCHAR2)
IS
    V_LOCATOR_BLOB  BLOB;
    
    V_SOURCE_DATA_FILE BFILE := BFILENAME('BLOB_DIR', V_FILENAME);
    
    V_DEST_OFFSET    NUMBER := 1;
    V_SRC_OFFSET      NUMBER := 1;
    
BEGIN
         INSERT INTO flight_meal(MEAL_CODE, MENU_PDF)
         VALUES(11, EMPTY_BLOB() )
         RETURNING MENU_PDF INTO V_LOCATOR_BLOB;
         DBMS_LOB.OPEN(V_SOURCE_DATA_FILE, 
                                  DBMS_LOB.LOB_READONLY);
         DBMS_LOB.LOADBLOBFROMFILE(V_LOCATOR_BLOB,
                                                  V_SOURCE_DATA_FILE,
                                                  DBMS_LOB.GETLENGTH(V_SOURCE_DATA_FILE),
                                                  V_DEST_OFFSET,
                                                  V_SRC_OFFSET
                                                  );
         DBMS_LOB.CLOSE(V_SOURCE_DATA_FILE);
         COMMIT;
         DBMS_OUTPUT.PUT_LINE('이미지 입력 성공!!!');
         
         
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('이미지 입력 실패!!!');
END;


-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
-- 이벤트 테이블
-------------------------------------------------------
-------------------------------------------------------
테이블 덮어쓰기 해주셔야합니다.

경품  컬럼 수정 

응모자 테이블 ENTRYS 생성

EVNENT EPOSTER blob 추가
	  evname100-> 200 으로수정 등등

CREATE TABLE Event (
    Evnum number(4) NOT NULL PRIMARY KEY,
    Evcat varchar2(100) NOT NULL,
    Evname varchar2(200) NOT NULL,
    stdate date NOT NULL,
    endate date NOT NULL,
    AdminID varchar2(100) NOT NULL,
    Eposter blob NULL
);


CREATE TABLE Winner (
    Key number(8) NOT NULL,
    Wingrade varchar2(100) NOT NULL,
    phoneNumber varchar2(100) NOT NULL,
    UserID varchar2(100) NOT NULL,
    Evnum number(4) NOT NULL
);
CREATE TABLE entrys (
    Key number(8) PRIMARY KEY,
    phoneNumber varchar2(100) NOT NULL,
    UserID varchar2(100) NOT NULL,
    Evnum number(4) NOT NULL
);

CREATE TABLE Prize (
    Keynum  number(4) PRIMARY KEY,
    Evnum number(4) NOT NULL,
    Price1 VARCHAR2(30) NOT NULL,
    countnum NUMBER(4) NOT NULL,
    GRADE NUMBER(4) DEFAULT NULL
);
ALTER TABLE Prize ADD CONSTRAINT FK_Event_TO_Prize_1 FOREIGN KEY (Evnum)
REFERENCES Event (Evnum) on delete cascade;




-- 데이터 삽입
INSERT INTO Event VALUES (1, '응모', '아이폰을찾아라', TO_DATE('2024-03-10', 'YYYY-MM-DD')
, TO_DATE('2024-03-28', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (2, '응모', '음식점 이벤트', TO_DATE('2024-03-10', 'YYYY-MM-DD')
, TO_DATE('2024-03-25', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (3, '마일리지', '문화 이벤트', TO_DATE('2024-03-01', 'YYYY-MM-DD')
, TO_DATE('2024-03-06', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (4, '경험', '체육 이벤트', TO_DATE('2024-02-25', 'YYYY-MM-DD')
, TO_DATE('2024-03-01', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (5, '응모', '봄맞이 이벤트', TO_DATE('2024-02-20', 'YYYY-MM-DD')
, TO_DATE('2024-02-25', 'YYYY-MM-DD'), '#admin001', NULL);

SELECT *
FROM EVENT;
--데이터 위너



INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (1, 1, '갤럭시', 1, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (2, 1, '아이폰', 2, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (3, 1, '샤오미', 3, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (4, 2, '문화상품권 100만원', 2, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (5, 2, '대한항공 상품권 50만원', 5, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (6, 2, '쌍용 상품권 5천원', 10, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (7, 3, '마일리지 500000점', 1, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (8, 3, '마일리지 300000점', 3, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (9, 3, '마일리지 100000점', 5, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (10, 4, '대한항공 인턴', 5, 1);


INSERT INTO flightuser VALUES ('user006', '이', '준호', 'Lee', 'JunHo', 'password123', TO_DATE('1988-06-25', 'YYYY-MM-DD'), 'Male', 'user006@example.com', '01067890123', 'Korea', '3456-7890-1234-5678');
INSERT INTO flightuser VALUES ('user007', '정', '수민', 'Jung', 'SuMin', 'pass456', TO_DATE('1992-09-30', 'YYYY-MM-DD'), 'Female', 'user007@example.com', '01078901234', 'Korea', '8901-2345-6789-0123');
INSERT INTO flightuser VALUES ('user008', '이', '시우', 'Lee', 'SiWoo', 'securepass', TO_DATE('1986-03-17', 'YYYY-MM-DD'), 'Male', 'user008@example.com', '01089012345', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user009', '박', '진영', 'Park', 'JinYoung', 'mypassword', TO_DATE('1995-07-08', 'YYYY-MM-DD'), 'Male', 'user009@example.com', '01090123456', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user010', '최', '수진', 'Choi', 'SuJin', 'p@ssw0rd', TO_DATE('1991-02-14', 'YYYY-MM-DD'), 'Female', 'user010@example.com', '01001234567', 'Korea', '0123-4567-8901-2345');
INSERT INTO flightuser VALUES ('user011', '김', '태영', 'Kim', 'TaeYoung', 'password123', TO_DATE('1989-10-05', 'YYYY-MM-DD'), 'Male', 'user011@example.com', '01012345678', 'Korea', '5678-9012-3456-7890');
INSERT INTO flightuser VALUES ('user012', '이', '수빈', 'Lee', 'SuBin', 'pass456', TO_DATE('1994-11-26', 'YYYY-MM-DD'), 'Female', 'user012@example.com', '01023456789', 'Korea', '9012-3456-7890-1234');
INSERT INTO flightuser VALUES ('user013', '박', '민준', 'Park', 'MinJun', 'securepass', TO_DATE('1984-08-12', 'YYYY-MM-DD'), 'Male', 'user013@example.com', '01034567890', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user014', '손', '지원', 'Son', 'JiWon', 'mypassword', TO_DATE('1983-12-31', 'YYYY-MM-DD'), 'Female', 'user014@example.com', '01045678901', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user015', '장', '성우', 'Jang', 'SungWoo', 'p@ssw0rd', TO_DATE('1982-05-17', 'YYYY-MM-DD'), 'Male', 'user015@example.com', '01056789012', 'Korea', '0123-4567-8901-2345');
INSERT INTO flightuser VALUES ('user016', '김', '영희', 'Kim', 'YoungHee', 'password123', TO_DATE('1987-09-22', 'YYYY-MM-DD'), 'Female', 'user016@example.com', '01067890123', 'Korea', '3456-7890-1234-5678');
INSERT INTO flightuser VALUES ('user017', '이', '민수', 'Lee', 'MinSoo', 'pass456', TO_DATE('1983-04-14', 'YYYY-MM-DD'), 'Male', 'user017@example.com', '01078901234', 'Korea', '8901-2345-6789-0123');
INSERT INTO flightuser VALUES ('user018', '장', '미영', 'Jang', 'MiYoung', 'securepass', TO_DATE('1990-12-01', 'YYYY-MM-DD'), 'Female', 'user018@example.com', '01089012345', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user019', '오', '준호', 'Oh', 'JunHo', 'mypassword', TO_DATE('1988-08-30', 'YYYY-MM-DD'), 'Male', 'user019@example.com', '01090123456', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user020', '배', '수진', 'Bae', 'SuJin', 'p@ssw0rd', TO_DATE('1992-03-07', 'YYYY-MM-DD'), 'Female', 'user020@example.com', '01001234567', 'Korea', '0123-4567-8901-2345');


---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------


CREATE SEQUENCE DC_SEQEVE
START WITH 8;

CREATE SEQUENCE DCDRAW;

SELECT DC_SEQEVE.currval
FROM DUAL;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------



--EXEC EVENT_BLOB_INSERT('1','meal.htm');


CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\E\Class\Workspace\OracleClass';
-- 생성과 동시에 pdf파일도 입력되게하는 업데이트 프로시저 생성
CREATE OR REPLACE PROCEDURE EVENT_BLOB_INSERT
(
pevnum number,
V_FILENAME IN VARCHAR2

)
IS
    V_LOCATOR_BLOB  BLOB;
    
    V_SOURCE_DATA_FILE BFILE := BFILENAME('BLOB_DIR', V_FILENAME);
    
    V_DEST_OFFSET    NUMBER := 1;
    V_SRC_OFFSET      NUMBER := 1;
BEGIN
         UPDATE event
         SET  
         eposter =  empty_blob()
         WHERE EVNUM = PEVNUM
         RETURNING eposter INTO V_LOCATOR_BLOB;
         DBMS_LOB.OPEN(V_SOURCE_DATA_FILE, 
                                  DBMS_LOB.LOB_READONLY);
         DBMS_LOB.LOADBLOBFROMFILE(V_LOCATOR_BLOB,
                                              V_SOURCE_DATA_FILE,
                                              DBMS_LOB.GETLENGTH(V_SOURCE_DATA_FILE),
                                              V_DEST_OFFSET,
                                              V_SRC_OFFSET
                                              );
         DBMS_LOB.CLOSE(V_SOURCE_DATA_FILE);
         COMMIT;
         DBMS_OUTPUT.PUT_LINE('이미지 입력 성공!!!');
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('이미지 입력 실패!!!');
END;

-- 
CREATE OR REPLACE PROCEDURE DC_EVENT
(   pEvcat varchar2,
    pEvname varchar2,
    pstdate date,
    pendate date,
    pAdminID varchar2,
    pEposter varchar2
) 
IS
    vevnum number;
BEGIN
   
    SELECT DC_SEQEVE.NEXTVAL INTO vevnum FROM dual;
    INSERT INTO Event VALUES (vevnum, pEvcat, pEvname, pstdate, pendate, pAdminID, NULL);       
    EVENT_BLOB_INSERT(vevnum, pEposter);

EXCEPTION
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('이벤트 추가 중 오류 발생 ' );
END;

-- 이벤트 생성 

BEGIN
    DC_EVENT
    ('콘서트', '2024 음악축제', '2024-04-15', '2024-04-17', '#admin001', 'meal.htm');
END;


-- 카테고리 선택하여 진행중인 이벤트확인
-- 카테고리 선택하여 진행중인 이벤트확인
-- 카테고리 선택하여 진행중인 이벤트확인
CREATE OR REPLACE PROCEDURE SELEVENT(
    pcategory IN VARCHAR2
)
IS
    vdate DATE;
BEGIN
    vdate := SYSDATE;

    FOR event_rec IN (SELECT * FROM Event WHERE Evcat LIKE '%' || pcategory || '%'
    AND stdate <= vdate AND endate >= vdate)
    LOOP
    
        DBMS_OUTPUT.PUT_LINE('이벤트 번호: ' || event_rec.Evnum);
        DBMS_OUTPUT.PUT_LINE('이벤트 항목: ' || event_rec.Evcat);
        DBMS_OUTPUT.PUT_LINE('이벤트 이름: ' || event_rec.Evname);
        DBMS_OUTPUT.PUT_LINE('시작일: ' || TO_CHAR(event_rec.stdate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('종료일: ' || TO_CHAR(event_rec.endate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('관리자 아이디: ' || event_rec.AdminID);
    END LOOP;
END;


EXEC SELEVENT('할인');

-- 종료된 이벤트 코드 확인
-- 종료된 이벤트 코드 확인
-- 종료된 이벤트 코드 확인

CREATE OR REPLACE PROCEDURE ENDEDEVENT
IS
    vdate VARCHAR2(50);
BEGIN
    vdate := SYSDATE;

    FOR event_rec IN (SELECT * FROM Event WHERE endate < vdate)
    LOOP
        DBMS_OUTPUT.PUT_LINE('이벤트 번호: ' || event_rec.Evnum);
        DBMS_OUTPUT.PUT_LINE('이벤트 이름: ' || event_rec.Evname);
        DBMS_OUTPUT.PUT_LINE('종료일: ' || TO_CHAR(event_rec.endate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('이벤트 상태: 종료됨');
        
    END LOOP;
END;

EXEC ENDEDEVENT;




----------
----------
------------------------
----------
--------------

CREATE SEQUENCE KeySequence;

CREATE OR REPLACE PROCEDURE EnterEvent (
    pUserID IN VARCHAR2,
    pPhoneNumber IN VARCHAR2,
    pEventNum IN Event.Evnum%TYPE
) AS

    vcount number;
BEGIN
       
       
    SELECT COUNT(*) INTO vcount FROM entrys WHERE evnum=pEventNum AND 
    USERID = puserid ;

    
    IF vcount >=1
    THEN
        DBMS_OUTPUT.PUT_LINE('이미 응모하셨습니다.');
    ELSE
        INSERT INTO entrys (Key, PhoneNumber, UserID, Evnum)
        VALUES (KeySequence.NEXTVAL, pPhoneNumber, pUserID, pEventNum);
            DBMS_OUTPUT.PUT_LINE('이벤트 응모가 완료되었습니다.');
    END IF;    

    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('이벤트 응모 중 오류가 발생했습니다');
END;

BEGIN
    EnterEvent('user006', '01067890123', 1);
    EnterEvent('user007', '01078901234', 1);
    EnterEvent('user008', '01089012345', 1);
    EnterEvent('user009', '01090123456', 1);
    EnterEvent('user010', '01001234567', 1);
    EnterEvent('user011', '01067890123', 2);
    EnterEvent('user012', '01078901234', 2);
    EnterEvent('user013', '01089012345', 2);
    EnterEvent('user014', '01090123456', 2);
    EnterEvent('user015', '01001234567', 2);
    EnterEvent('user016', '01067890123', 2);
    EnterEvent('user017', '01078901234', 2);
    EnterEvent('user018', '01089012345', 3);
    EnterEvent('user019', '01090123456', 3);
    EnterEvent('user020', '01001234567', 3);
    EnterEvent('user001', '01067890123', 3);
    EnterEvent('user002', '01078901234', 3);
    EnterEvent('user003', '01089012345', 3);
    EnterEvent('user004', '01090123456', 3);
    EnterEvent('user005', '01001234567', 4);
    COMMIT;
END;



---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
-- 경품추천
--응모자중 랜덤선택해서 WINNER로 이동
---------------------------------------------------


CREATE OR REPLACE PROCEDURE draweventwinners(
    p_evnum  event.evnum%TYPE
)
AS
    v_totalentries NUMBER;
    v_winnercount NUMBER;
    CURSOR v_prizes IS
        SELECT keynum, price1, countnum
        FROM prize
        WHERE evnum = p_evnum;
BEGIN
    SELECT COUNT(*)
    INTO v_totalentries
    FROM entrys
    WHERE evnum = p_evnum; -- 이벤트 응모자수
    
    FOR prizerecord IN v_prizes LOOP
        IF prizerecord.countnum >= v_totalentries THEN
            v_winnercount := v_totalentries;
        ELSE
            v_winnercount := prizerecord.countnum;
        END IF;
        
        FOR I IN 1..v_winnercount LOOP
            INSERT INTO winner (KEY, wingrade, phonenumber, userid, evnum)
            SELECT dcdraw.NEXTVAL, prizerecord.price1, E.phonenumber, E.userid, E.evnum
            FROM (
                SELECT KEY, phonenumber, userid, evnum
                FROM entrys
                WHERE evnum = p_evnum
                AND (KEY,evnum) NOT IN (SELECT KEY,evnum FROM winner)
                ORDER BY dbms_random.VALUE
            ) E
            WHERE ROWNUM = 1;
              COMMIT;
        END LOOP;
    END LOOP;
      dbms_output.put_line(p_evnum ||'번 이벤트의 당첨자가 추첨되었습니다.' );
    FOR  winnerrecord IN (SELECT * FROM winner WHERE evnum = p_evnum) LOOP
  
    dbms_output.put_line('당첨자 : ' || winnerrecord.userid || ', 상품 : ' ||winnerrecord.wingrade  || ' 축하드립니다 !!');
    
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error occurred ' );
        ROLLBACK;
END ;

exec DrawEventWinners(1);
exec DrawEventWinners(2);
exec DrawEventWinners(3);
exec DrawEventWinners(4);


SELECT *
FROM WINNER ;


CREATE OR REPLACE PROCEDURE SELWINNER
    ( pevnum number )
IS
    vwingrade varchar2(100);
    vphonenumber varchar2(30);
    vuserid     varchar2(20);

BEGIN


    FOR SELWIN IN(SELECT * FROM winner WHERE evnum = pevnum)
    LOOP 
    VENAME :=SUBSTR(SELWIN.userid,1,1 )||LPAD('*',LENGTH(SELWIN.userid)-2,'*')||
            SUBSTR(SELWIN.userid,LENGTH(U.USER_NAME),1) 
    
     DBMS_OUTPUT.PUT_LINE('상품이름 : ' || SELWIN.WINGRADE);
    DBMS_OUTPUT.PUT_LINE('고객 아이디 : ' || VENAME);
    DBMS_OUTPUT.PUT_LINE('고객 전화번호 : ' || SELWIN.PHONENUMBER);



    END LOOP; 

END;


--- 당첨자 조회 
--- 당첨자 조회 
--- 당첨자 조회 


CREATE OR REPLACE PROCEDURE SELWINNER
    ( pevnum NUMBER )
IS
    vwingrade VARCHAR2(100);
    vphonenumber VARCHAR2(30);
    vuserid VARCHAR2(20);
    vename VARCHAR2(20); -- 추가된 변수
    vnumber VARCHAR2(20);

BEGIN
    FOR SELWIN IN (SELECT * FROM winner WHERE evnum = pevnum)
    LOOP 
        -- 고객 아이디를 마스킹하여 vename 변수에 저장
        vename := 
        SUBSTR(SELWIN.userid, 1, 3) || LPAD('*', LENGTH(SELWIN.userid) - 4, '*')
        || SUBSTR(SELWIN.userid, -3);
        
        
        vnumber :=
        SUBSTR(SELWIN.PHONENUMBER, 1, 3) || LPAD('*', LENGTH(SELWIN.PHONENUMBER)-7 , '*')
        || SUBSTR(SELWIN.PHONENUMBER, -4);
        
        -- 출력
        DBMS_OUTPUT.PUT_LINE('상품이름 : ' || SELWIN.WINGRADE);
        DBMS_OUTPUT.PUT_LINE('고객 아이디 : ' || vename); -- 수정된 부분
        DBMS_OUTPUT.PUT_LINE('고객 전화번호 : ' || vnumber);
    END LOOP; 

END;

EXEC SELWINNER(1);











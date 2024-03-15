CREATE SEQUENCE seq_1;


-- 첫 번째 행 삽입
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- 문의사항고유번호
    '칭송',                        -- 유형
    '공항서비스',                  -- 분야
    '이',                         -- 승객 성
    '동찬',                       -- 승객 이름
    '(82) 10-1234-5678',          -- 전화번호
    'example@email.com',          -- 이메일주소
    '칭찬해요 ~',                  -- 제목
    '모두 너무 친절합니다',          -- 내용
    123456,                       -- 스카이패스회원번호
    'AB1234',                     -- 예약번호
    1,                            -- 이메일수신여부
    '서울',                        -- 도착도시
    '뉴욕',                        -- 출발도시
    TO_DATE('2024-03-10', 'YYYY-MM-DD'), -- 출발일자
    'KE123'                       -- 항공편명
);

-- 두 번째 행 삽입
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- 문의사항고유번호
    '문의',                        -- 유형
    '기내식',                      -- 분야
    '김',                         -- 승객 성
    '영희',                       -- 승객 이름
    '(82) 10-2345-6789',          -- 전화번호
    'user2@example.com',          -- 이메일주소
    '기내식 관련 문의',            -- 제목
    '기내식 옵션이 무엇인가요?',   -- 내용
    789012,                       -- 스카이패스회원번호
    'CD5678',                     -- 예약번호
    0,                            -- 이메일수신여부
    '도쿄',                        -- 도착도시
    '서울',                        -- 출발도시
    TO_DATE('2024-04-15', 'YYYY-MM-DD'), -- 출발일자
    'KE456'                       -- 항공편명
);

-- 세 번째 행 삽입
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- 문의사항고유번호
    '불만',                        -- 유형
    '수화물',                      -- 분야
    '박',                         -- 승객 성
    '민수',                       -- 승객 이름
    '(82) 10-3456-7890',          -- 전화번호
    'user3@example.com',          -- 이메일주소
    '수화물 분실에 대한 불만',      -- 제목
    '짐을 받지 못했습니다',        -- 내용
    345678,                       -- 스카이패스회원번호
    'EF9012',                     -- 예약번호
    1,                            -- 이메일수신여부
    '뉴욕',                        -- 도착도시
    '런던',                        -- 출발도시
    TO_DATE('2024-05-20', 'YYYY-MM-DD'), -- 출발일자
    'KE789'                       -- 항공편명
);

-- 네 번째 행 삽입
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- 문의사항고유번호
    '제언',                        -- 유형
    '기타',                        -- 분야
    '최',                         -- 승객 성
    '지민',                       -- 승객 이름
    '(82) 10-4567-8901',          -- 전화번호
    'user4@example.com',          -- 이메일주소
    '기내 서비스 개선 제안',        -- 제목
    '기내 엔터테인먼트를 개선해주세요', -- 내용
    901234,                       -- 스카이패스회원번호
    'GH3456',                     -- 예약번호
    0,                            -- 이메일수신여부
    '로스앤젤레스',                -- 도착도시
    '서울',                        -- 출발도시
    TO_DATE('2024-06-01', 'YYYY-MM-DD'), -- 출발일자
    'KE890'                       -- 항공편명
);



--항공기

INSERT INTO airplane  VALUES (
    'A320-200-001',
    '대한항공',
    180,
    'Airbus A320-200',
    TO_DATE('2015-05-20', 'YYYY-MM-DD'),
    12,
    48,
    120,
    '비즈니스 클래스 우선 탑승, 추가 수하물 허용',
    '향상된 좌석 공간, 개인 엔터테인먼트 시스템'
);



INSERT INTO airplane VALUES (
    'B737-800-002',
    '아시아나항공',
    160,
    'Boeing 737-800',
    TO_DATE('2018-03-15', 'YYYY-MM-DD'),
    8,
    40,
    112,
    '비즈니스 클래스 전용 체크인, 라운지 이용 가능',
    '조절 가능한 헤드레스트, USB 충전 포트'
);

INSERT INTO airplane VALUES (
    '787-9-003',
    '제주항공',
    250,
    'Boeing 787-9',
    TO_DATE('2020-07-30', 'YYYY-MM-DD'),
    30,
    70,
    150,
    '비즈니스 클래스 셀프 체크인, 우선 탑승',
    '와이드 스크린 개인 모니터, 다리 공간 확장'
);


INSERT INTO airplane VALUES (
    'A380-800-004',
    '에미레이트항공',
    500,
    'Airbus A380-800',
    TO_DATE('2012-08-01', 'YYYY-MM-DD'),
    14,
    76,
    410,
    '비즈니스 클래스 스위트, 고급 식사 옵션',
    '개인 엔터테인먼트, 더 넓은 좌석 및 다리 공간'
);


------

--좌석


------
-- 일등석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F1', 'A320-200-001', '01A', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F2', 'A320-200-001', '01B', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F3', 'A320-200-001', '01C', '일등석');

-- 일반석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E1', 'A320-200-001', '20A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E2', 'A320-200-001', '20B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E3', 'A320-200-001', '20C', '일반석');

-- 프레스티지석 좌석 추가
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P1', 'A320-200-001', '10A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P2', 'A320-200-001', '10B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P3', 'A320-200-001', '10C', '프레스티지석');



-- B737-800-002 항공기에 대한 좌석 추가
-- 일등석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F4', 'B737-800-002', '01D', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F5', 'B737-800-002', '01E', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F6', 'B737-800-002', '01F', '일등석');

-- 일반석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E4', 'B737-800-002', '21A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E5', 'B737-800-002', '21B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E6', 'B737-800-002', '21C', '일반석');

-- 프레스티지석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P4', 'B737-800-002', '11A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P5', 'B737-800-002', '11B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P6', 'B737-800-002', '11C', '프레스티지석');

-- 787-9-003 항공기에 대한 좌석 추가
-- 일등석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F7', '787-9-003', '01G', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F8', '787-9-003', '01H', '일등석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F9', '787-9-003', '01I', '일등석');

-- 일반석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E7', '787-9-003', '22A', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E8', '787-9-003', '22B', '일반석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E9', '787-9-003', '22C', '일반석');

-- 프레스티지석
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P7', '787-9-003', '12A', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P8', '787-9-003', '12B', '프레스티지석');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P9', '787-9-003', '12C', '프레스티지석');



--------
--식사메뉴

--------

-- 첫 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (1, '치킨 카레 라이스 - 온화한 향신료와 함께 제공되는 풍미 가득한 치킨 카레');

-- 두 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (2, '비건 스페셜 - 채식주의자를 위한 특별 준비된 신선한 야채와 곡물로 만든 식사');

-- 세 번째 식사 옵션 추가
INSERT INTO flight_meal (meal_code, menu) VALUES (3, '스테이크와 감자 - 고급스러운 스테이크와 함께 제공되는 구운 감자');




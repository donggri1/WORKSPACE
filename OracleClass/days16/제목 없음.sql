CREATE SEQUENCE seq_1;


-- ù ��° �� ����
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- ���ǻ��װ�����ȣ
    'Ī��',                        -- ����
    '���׼���',                  -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-1234-5678',          -- ��ȭ��ȣ
    'example@email.com',          -- �̸����ּ�
    'Ī���ؿ� ~',                  -- ����
    '��� �ʹ� ģ���մϴ�',          -- ����
    123456,                       -- ��ī���н�ȸ����ȣ
    'AB1234',                     -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-03-10', 'YYYY-MM-DD'), -- �������
    'KE123'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- ���ǻ��װ�����ȣ
    '����',                        -- ����
    '�⳻��',                      -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-2345-6789',          -- ��ȭ��ȣ
    'user2@example.com',          -- �̸����ּ�
    '�⳻�� ���� ����',            -- ����
    '�⳻�� �ɼ��� �����ΰ���?',   -- ����
    789012,                       -- ��ī���н�ȸ����ȣ
    'CD5678',                     -- �����ȣ
    0,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-04-15', 'YYYY-MM-DD'), -- �������
    'KE456'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- ���ǻ��װ�����ȣ
    '�Ҹ�',                        -- ����
    '��ȭ��',                      -- �о�
    '��',                         -- �°� ��
    '�μ�',                       -- �°� �̸�
    '(82) 10-3456-7890',          -- ��ȭ��ȣ
    'user3@example.com',          -- �̸����ּ�
    '��ȭ�� �нǿ� ���� �Ҹ�',      -- ����
    '���� ���� ���߽��ϴ�',        -- ����
    345678,                       -- ��ī���н�ȸ����ȣ
    'EF9012',                     -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-05-20', 'YYYY-MM-DD'), -- �������
    'KE789'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- ���ǻ��װ�����ȣ
    '����',                        -- ����
    '��Ÿ',                        -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-4567-8901',          -- ��ȭ��ȣ
    'user4@example.com',          -- �̸����ּ�
    '�⳻ ���� ���� ����',        -- ����
    '�⳻ �������θ�Ʈ�� �������ּ���', -- ����
    901234,                       -- ��ī���н�ȸ����ȣ
    'GH3456',                     -- �����ȣ
    0,                            -- �̸��ϼ��ſ���
    '�ν���������',                -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-06-01', 'YYYY-MM-DD'), -- �������
    'KE890'                       -- �װ����
);



--�װ���

INSERT INTO airplane  VALUES (
    'A320-200-001',
    '�����װ�',
    180,
    'Airbus A320-200',
    TO_DATE('2015-05-20', 'YYYY-MM-DD'),
    12,
    48,
    120,
    '����Ͻ� Ŭ���� �켱 ž��, �߰� ���Ϲ� ���',
    '���� �¼� ����, ���� �������θ�Ʈ �ý���'
);



INSERT INTO airplane VALUES (
    'B737-800-002',
    '�ƽþƳ��װ�',
    160,
    'Boeing 737-800',
    TO_DATE('2018-03-15', 'YYYY-MM-DD'),
    8,
    40,
    112,
    '����Ͻ� Ŭ���� ���� üũ��, ����� �̿� ����',
    '���� ������ ��巹��Ʈ, USB ���� ��Ʈ'
);

INSERT INTO airplane VALUES (
    '787-9-003',
    '�����װ�',
    250,
    'Boeing 787-9',
    TO_DATE('2020-07-30', 'YYYY-MM-DD'),
    30,
    70,
    150,
    '����Ͻ� Ŭ���� ���� üũ��, �켱 ž��',
    '���̵� ��ũ�� ���� �����, �ٸ� ���� Ȯ��'
);


INSERT INTO airplane VALUES (
    'A380-800-004',
    '���̷���Ʈ�װ�',
    500,
    'Airbus A380-800',
    TO_DATE('2012-08-01', 'YYYY-MM-DD'),
    14,
    76,
    410,
    '����Ͻ� Ŭ���� ����Ʈ, ��� �Ļ� �ɼ�',
    '���� �������θ�Ʈ, �� ���� �¼� �� �ٸ� ����'
);


------

--�¼�


------
-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F1', 'A320-200-001', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F2', 'A320-200-001', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F3', 'A320-200-001', '01C', '�ϵ');

-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E1', 'A320-200-001', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E2', 'A320-200-001', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E3', 'A320-200-001', '20C', '�Ϲݼ�');

-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P1', 'A320-200-001', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P2', 'A320-200-001', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P3', 'A320-200-001', '10C', '������Ƽ����');



-- B737-800-002 �װ��⿡ ���� �¼� �߰�
-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F4', 'B737-800-002', '01D', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F5', 'B737-800-002', '01E', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F6', 'B737-800-002', '01F', '�ϵ');

-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E4', 'B737-800-002', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E5', 'B737-800-002', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E6', 'B737-800-002', '21C', '�Ϲݼ�');

-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P4', 'B737-800-002', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P5', 'B737-800-002', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P6', 'B737-800-002', '11C', '������Ƽ����');

-- 787-9-003 �װ��⿡ ���� �¼� �߰�
-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F7', '787-9-003', '01G', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F8', '787-9-003', '01H', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('F9', '787-9-003', '01I', '�ϵ');

-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E7', '787-9-003', '22A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E8', '787-9-003', '22B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('E9', '787-9-003', '22C', '�Ϲݼ�');

-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P7', '787-9-003', '12A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P8', '787-9-003', '12B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('P9', '787-9-003', '12C', '������Ƽ����');



--------
--�Ļ�޴�

--------

-- ù ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (1, 'ġŲ ī�� ���̽� - ��ȭ�� ��ŷ�� �Բ� �����Ǵ� ǳ�� ������ ġŲ ī��');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (2, '��� ����� - ä�������ڸ� ���� Ư�� �غ�� �ż��� ��ä�� ��� ���� �Ļ�');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (3, '������ũ�� ���� - ��޽����� ������ũ�� �Բ� �����Ǵ� ���� ����');




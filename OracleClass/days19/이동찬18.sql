�⳻���ڷ�,����Ʈī���ڷ� ,����Ʈī�����ڷ�
--�ߺ������ʴ� ī���ȣ ������ٺ��ϱ�
--ī�����̺��� ������ۿ����׿� 
--�ɹ�ȣ�� �����Է� �γ� �������̿��ؼ� �ߺ������ʴ�ī�� ����


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
    '1232-3456-7890-1323',         -- ��ī���н�ȸ����ȣ
    '34534534',                     -- �����ȣ
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
    '9012-3678-7890-1323',                       -- ��ī���н�ȸ����ȣ
    '12346786',                     -- �����ȣ
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
    '9012-3456-2340-1323',                       -- ��ī���н�ȸ����ȣ
    '54367344',                     -- �����ȣ
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
    '9012-3456-7890-1323',                       -- ��ī���н�ȸ����ȣ
    '21346578',                     -- �����ȣ
    0,                            -- �̸��ϼ��ſ���
    '�ν���������',                -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-06-01', 'YYYY-MM-DD'), -- �������
    'KE890'                       -- �װ����
);

INSERT INTO Customerc VALUES (
    seq_1.NEXTVAL,                -- ���ǻ��װ�����ȣ
    '�Ҹ�',                        -- ����
    '�⳻��',                      -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-2345-6789',          -- ��ȭ��ȣ
    'user5@example.com',          -- �̸����ּ�
    '�⳻�� ǰ�� ���� ��û',         -- ����
    '�⳻���� ���� ���� ��뿡 �� ���ƽ��ϴ�.', -- ����
    '1234-5678-9012-3456',        -- ��ī���н�ȸ����ȣ
    '87654321',                   -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), -- �������
    'KE453'                       -- �װ����
);


--�װ���
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
    '�����װ�',
    276,
    'A330-300',
    TO_DATE('1999-04-16', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '������Ƽ�� Ŭ���� �켱 ž��, �߰� ���Ϲ� ���',
    '���� �¼� ����, ���� �������θ�Ʈ �ý���',
    NULL
);



INSERT INTO airplane VALUES (
    'HL7554',
    '�����װ�',
    276,
    'A330-300',
    TO_DATE('1999-01-04', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '������Ƽ�� Ŭ���� ���� üũ��, ����� �̿� ����',
    '���� ������ ��巹��Ʈ, USB ���� ��Ʈ',
    NULL
);

INSERT INTO airplane VALUES (
    'HL7611',
    '�����װ�',
    407,
    'A380-800',
    TO_DATE('2010-09-27', 'YYYY-MM-DD'),
    12,
    94,
    301,
    '������Ƽ�� Ŭ���� ���� üũ��, �켱 ž��',
    '���̵� ��ũ�� ���� �����, �ٸ� ���� Ȯ��'
    ,'�۽�ƮŬ���� �ְ��� ����'
);


INSERT INTO airplane VALUES (
    'HL8348',
    '�����װ�',
    146,
    'B737-8',
    TO_DATE('2019-04-18', 'YYYY-MM-DD'),
    0,
    8,
    138,
    '������Ƽ�� Ŭ���� ����Ʈ, ��� �Ļ� �ɼ�',
    '���� �������θ�Ʈ, �� ���� �¼� �� �ٸ� ����'
    ,NULL
);

INSERT INTO airplane VALUES (
    'HL8240',
    '�����װ�',
    138,
    'B737-800',
    TO_DATE('2011-09-14', 'YYYY-MM-DD'),
    0,
    12,
    126,
    '������Ƽ�� Ŭ���� ����Ʈ, ��� �Ļ� �ɼ�',
    '���� �������θ�Ʈ, �� ���� �¼� �� �ٸ� ����'
    ,NULL
);

------

--�¼�


------
-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01A', 'HL7553', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01B', 'HL7553', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01C', 'HL7553', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02A', 'HL7553', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02B', 'HL7553', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02C', 'HL7553', '02C', '�ϵ');

-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20A', 'HL7553', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20B', 'HL7553', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20C', 'HL7553', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21A', 'HL7553', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21B', 'HL7553', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21C', 'HL7553', '21C', '�Ϲݼ�');

-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10A', 'HL7553', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10B', 'HL7553', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10C', 'HL7553', '10C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11A', 'HL7553', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11B', 'HL7553', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-11C', 'HL7553', '11C', '������Ƽ����');

-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01D', 'HL7554', '01D', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01E', 'HL7554', '01E', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01F', 'HL7554', '01F', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02D', 'HL7554', '02D', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02E', 'HL7554', '02E', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02F', 'HL7554', '02F', '�ϵ');
-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21A', 'HL7554', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21B', 'HL7554', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21C', 'HL7554', '21C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22A', 'HL7554', '22A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22B', 'HL7554', '22B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22C', 'HL7554', '22C', '�Ϲݼ�');
-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11A', 'HL7554', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11B', 'HL7554', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11C', 'HL7554', '11C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12A', 'HL7554', '12A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12B', 'HL7554', '12B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12C', 'HL7554', '12C', '������Ƽ����');

-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01G', 'HL7611', '01G', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01H', 'HL7611', '01H', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01I', 'HL7611', '01I', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02G', 'HL7611', '02G', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02H', 'HL7611', '02H', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02I', 'HL7611', '02I', '�ϵ');

-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22A', 'HL7611', '22A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22B', 'HL7611', '22B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22C', 'HL7611', '22C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23A', 'HL7611', '23A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23B', 'HL7611', '23B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23C', 'HL7611', '23C', '�Ϲݼ�');
-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12A', 'HL7611', '12A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12B', 'HL7611', '12B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12C', 'HL7611', '12C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13A', 'HL7611', '13A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13B', 'HL7611', '13B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13C', 'HL7611', '13C', '������Ƽ����');

-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01A', 'HL8348', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01B', 'HL8348', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01C', 'HL8348', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02A', 'HL8348', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02B', 'HL8348', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02C', 'HL8348', '02C', '�ϵ');
-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20A', 'HL8348', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20B', 'HL8348', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20C', 'HL8348', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21A', 'HL8348', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21B', 'HL8348', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21C', 'HL8348', '21C', '�Ϲݼ�');
-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10A', 'HL8348', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10B', 'HL8348', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10C', 'HL8348', '10C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11A', 'HL8348', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11B', 'HL8348', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11C', 'HL8348', '11C', '������Ƽ����');


-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01A', 'HL8240', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01B', 'HL8240', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01C', 'HL8240', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02A', 'HL8240', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02B', 'HL8240', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02C', 'HL8240', '02C', '�ϵ');
-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20A', 'HL8240', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20B', 'HL8240', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20C', 'HL8240', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21A', 'HL8240', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21B', 'HL8240', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21C', 'HL8240', '21C', '�Ϲݼ�');
-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10A', 'HL8240', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10B', 'HL8240', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10C', 'HL8240', '10C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11A', 'HL8240', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11B', 'HL8240', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11C', 'HL8240', '11C', '������Ƽ����');
--------
--�Ļ�޴�

--------

-- ù ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (1, 'ġŲ ī�� ���̽� - ��ȭ�� ��ŷ�� �Բ� �����Ǵ� ǳ�� ������ ġŲ ī��');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (2, '��� ����� - ä�������ڸ� ���� Ư�� �غ�� �ż��� ��ä�� ��� ���� �Ļ�');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (3, '������ũ�� ���� - ��޽����� ������ũ�� �Բ� �����Ǵ� ���� ����');

-- �� ��°

INSERT INTO flight_meal (meal_code, menu) VALUES (4, '�����- ���޴��� ������� ��췯���� ���� ��ä �뷱������ �Ļ�');

-- �ټ���°

INSERT INTO flight_meal (meal_code, menu) VALUES (5, '�����Ϳ� ������ġ - ��޽����� ������ �Բ� �����Ǵ� ���� ������ġ');

-- ������°

INSERT INTO flight_meal (meal_code, menu) VALUES (6, '���- ���� ����� ������');

-- �ϰ���°

INSERT INTO flight_meal (meal_code, menu) VALUES (7, ' �ٺ�ť - ������ �ҽ��� ��췯�� ǳ���� �Ļ� ');

---
--����Ʈī�� ����

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
    '1234-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    123456,                      -- PIN ��ȣ
    'ȫ�浿',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    500000                       -- �ݾ� (50����)
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
    '6654-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    576555,                      -- PIN ��ȣ
    '���',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    100000                       -- �ݾ� (50����)
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
    '0988-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    678977,                      -- PIN ��ȣ
    '�̵���',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    50000                       -- �ݾ� (50����)
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
    '4646-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    234533,                      -- PIN ��ȣ
    '�̰漮',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    200000                       -- �ݾ� (50����)
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
    '7686-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    765755,                      -- PIN ��ȣ
    '�Ǽ�ȣ',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    400000                       -- �ݾ� (50����)
);
INSERT INTO CARD_USE VALUES (1,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),500000,'1234-5678-9012-3456');
INSERT INTO CARD_USE VALUES (2,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),200000,'0988-5678-9012-3456');
INSERT INTO CARD_USE VALUES (3,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),50000,'1234-5678-9012-3456');
INSERT INTO CARD_USE VALUES (4,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),200000,'4646-5678-9012-3456');
INSERT INTO CARD_USE VALUES (5,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),400000,'7686-5678-9012-3456');
----

----
-- CARD_TABLE ����
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
------------
-----------


-- ���� ���� ��ȸ
-- ���� ���� ��ȸ

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
        DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
        ELSE
            FOR vrow IN (SELECT *   
                        FROM customerc
                        WHERE Q_num = pQ_NUM)
            LOOP
                IF  vrow.e_check =1 THEN 
                      vE_check  :='�㰡';
                ELSE 
                    vE_check :='�ź�';
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
         DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ�: ' );
END;

-- ���� ���� �Է�

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


--���Ǹ��� ���� -�Է�
BEGIN 
    dc_customerc_02(
    'Ī��', '���׼���', '��', '����', '(82) 10-1234-5678',
    'example@email.com', 'Ī���ؿ� ~', '��� �ʹ� ģ���մϴ�',
    '1232-3456-7890-1323', '34534534', 1,
    '����', '����', TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
    );
    END;

-- ���� ���� ����

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
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� ���ڵ带 ã�� �� �����ϴ�.');
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

--���� ���� ���� -�Է�

CALL dc_customerc_03(
     1,   'Ī��',    '���׼���',
     '��',   'ȣ��',    '(82) 10-1234-5678',
     'example@email.com',    'Ī���ؿ� ~',    '��� �ʹ� ģ���մϴ�',
   '1232-3456-7890-1323',    '34534534',    1,
     '����',     '����',     TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
);



END;

-- ���� ���ν���
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
        RAISE_APPLICATION_ERROR(-20002, '�ش� ��ȣ�� �������� �ʽ��ϴ�..');
    ELSE
       
        DELETE FROM customerc
        WHERE Q_NUM = pq_num;
        
        DBMS_OUTPUT.PUT_LINE('���ڵ尡 �����Ǿ����ϴ�.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;
-- ���Ǹ��� DELETE -�Է�

EXEC dc_customerc_04(3);

--�⳻�� ��ȸ ���� 
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
         DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
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
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;

EXEC dc_flight_meal_01(4);

--�⳻�� �ۼ� ���� 


CREATE OR REPLACE PROCEDURE dc_flight_meal_02
(
    pmenu VARCHAR2
)
IS
    vmeal_code flight_meal.meal_code%TYPE;
BEGIN

    SELECT flight_mealseq.NEXTVAL INTO vmeal_code FROM dual;

    INSERT INTO flight_meal(meal_code, menu) VALUES(vmeal_code, pmenu);
EXCEPTION
    WHEN OTHERS THEN
        -- ���� �߻� �� �޽��� ���
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;


EXECUTE dc_flight_meal_02('���̽�ũ��');


--�⳻�� blob �Է�

CREATE SEQUENCE SEQ_LOB
START WITH 8;

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
         
         DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
         
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
END;



--�⳻�� ��������


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
  DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
  ELSE
    
                UPDATE flight_meal
                SET  
                menu =pmenu
                WHERE meal_code = pmeal_code;
    END IF;
    --EXCEPTION
END;

EXECUTE dc_flight_meal_03(1,'���̽�ũ��');


--�⳻�� ��������


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
     DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
    
    ELSE
        DELETE FROM flight_meal 
        WHERE meal_code = pmeal_code;
    END IF;
  
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ');
END;


exec dc_flight_meal_04(4);

--����Ʈ ī�� ��������
--����Ʈ ī�� ��������

--����Ʈ ī�� ��������
--����Ʈ ī�� ��������

--����Ʈ ī�� ��������
--����Ʈ ī�� ��������


CREATE SEQUENCE  DC_giftcard_01
START WITH 8;
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

DECLARE
    v_card_number VARCHAR2(19);
    v_card_code number;
BEGIN

    v_card_number := dc_giftcard_03;
    v_card_code := DC_giftcard_01.NEXTVAL;

    INSERT INTO card_table  VALUES (v_card_code,v_card_number);
    
    DBMS_OUTPUT.PUT_LINE('������ ī�� ��ȣ: ' || v_card_number);
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
BEGIN
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

EXEC DC_GIFTCARD_02('����','�̵���','01020893028','������','01023938474',500000);


SELECT *
FROM GIFTCARD;

SELECT*
FROM card_table;

DELETE CARD_TABLE WHERE 1=1;
DELETE GIFTCARD WHERE 1=1;
-- ī�� �ݾ� ������Ʈ


CREATE OR REPLACE TRIGGER tr_dc_giftcard_01
BEFORE INSERT ON payrefund
FOR EACH ROW
DECLARE 
    notenough EXCEPTION;
    vamount giftcard.AMOUNT%TYPE;
    vPIN_NUM giftcard.pin_num%TYPE;
BEGIN

    IF :NEW.pmethod = '����Ʈī��' THEN
    
    SELECT AMOUNT,PIN_NUM INTO vamount,VPIN_NUM
    FROM GIFTCARD 
    WHERE  CARD_NUM = :NEW.GIFTCARDNUMBER;
            IF vPIN_NUM = :NEW.PIN_NUM   THEN 
            DBMS_OUTPUT.PUT_LINE('�ɹ�ȣ ��ġ!');
            
                        IF vamount<:NEW.cost   THEN
                            RAISE_APPLICATION_ERROR(-20002, '�ܾ��� �����մϴ�.');
                          
                            
                        ELSE
                            UPDATE GIFTCARD
                            SET
                            AMOUNT = vamount - :NEW.cost 
                            WHERE CARD_NUM = :NEW.GIFTCARDNUMBER;
                            DBMS_OUTPUT.PUT_LINE( '����Ʈī����Ϸ� �̿��� �ܾ� : '|| VAMOUNT);
                        END IF;
            ELSE
                RAISE_APPLICATION_ERROR(-20000, '�ɹ�ȣ ����ġ.');
               
            END IF;
    END IF;
--EXCEPTION

END;


exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',123456);
exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',126556);    -- �ɳѹ� ����ġ

SELECT *
FROM SEAT_NUM;



-- �¼���ȣ ����

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
    DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ�' );

END;


EXEC DC_SEAT_NUM('HL7553','03A','�Ϲݼ�');






--�⳻�� blob �Է�



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
         
         DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
         
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
END;





























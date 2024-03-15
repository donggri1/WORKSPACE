CREATE OR REPLACE FUNCTION uf_update_table
(
    p_id IN NUMBER,
    p_new_value IN VARCHAR2
)
RETURN VARCHAR2
IS
    v_update_date DATE;
BEGIN
    -- ������Ʈ�ϱ� ���� ���� ��¥�� ��������
    SELECT SYSDATE INTO v_update_date FROM DUAL;

    -- ���̺� ������Ʈ
    UPDATE tbl_emp
    SET your_column = p_new_value
    , update_date = v_update_date
    WHERE id = p_id;

    COMMIT;

    RETURN '������Ʈ�� ���������� ����Ǿ����ϴ�.';
--EXCEPTION
END;
/

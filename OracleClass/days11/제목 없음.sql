CREATE OR REPLACE FUNCTION uf_update_table
(
    p_id IN NUMBER,
    p_new_value IN VARCHAR2
)
RETURN VARCHAR2
IS
    v_update_date DATE;
BEGIN
    -- 업데이트하기 전에 현재 날짜를 가져오기
    SELECT SYSDATE INTO v_update_date FROM DUAL;

    -- 테이블 업데이트
    UPDATE tbl_emp
    SET your_column = p_new_value
    , update_date = v_update_date
    WHERE id = p_id;

    COMMIT;

    RETURN '업데이트가 성공적으로 수행되었습니다.';
--EXCEPTION
END;
/

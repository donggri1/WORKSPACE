
CREATE OR REPLACE PROCEDURE DrawWinners (
    p_EventNum IN Event.Evnum%TYPE
) AS
    v_EventStartDate Event.stdate%TYPE;
    v_EventEndDate Event.endate%TYPE;
    v_CurrentDate DATE := SYSDATE;
    v_EntryCount NUMBER;
    v_WinnerCount NUMBER;
BEGIN
    SELECT stdate, endate INTO v_EventStartDate, v_EventEndDate
    FROM Event
    WHERE Evnum = p_EventNum;
    
    IF v_CurrentDate BETWEEN v_EventStartDate AND v_EventEndDate THEN
        -- 이벤트 기간 내에 응모한 회원 수 가져오기
        SELECT COUNT(*) INTO v_EntryCount
        FROM entry
        WHERE Evnum = p_EventNum;
        
        -- 이벤트 상금 수 가져오기
        SELECT COUNT(*) INTO v_WinnerCount
        FROM Prize
        WHERE Evnum = p_EventNum;
        
        -- 응모한 회원 수가 상금 수보다 많은지 확인
        IF v_EntryCount >= v_WinnerCount THEN
            -- 상금 수만큼 랜덤하게 당첨자 선정
            FOR i IN 1..v_WinnerCount LOOP
                INSERT INTO Winner (Key, Wingrade, phoneNumber, UserID, Evnum)
                SELECT KeySequence2.NEXTVAL, '상금 ' || i, f.PHONENUMBER, f.USERID, e.Evnum
                FROM (
                    SELECT phoneNumber, UserID
                    FROM entry
                    WHERE Evnum = p_EventNum
                    ORDER BY DBMS_RANDOM.VALUE
                ) f
                JOIN (SELECT Evnum FROM dual CONNECT BY LEVEL <= v_WinnerCount) e
                ON ROWNUM = 1;
            END LOOP;
        ELSE
            DBMS_OUTPUT.PUT_LINE('응모한 회원 수가 상금 수보다 적습니다.');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('이벤트 기간이 아닙니다.');
    END IF;
END;





        SELECT  *
        FROM Prize
        WHERE Evnum = 1;


CREATE OR REPLACE PROCEDURE DrawEventWinners(
    p_Evnum IN Event.Evnum%TYPE
)
AS
    v_TotalEntries NUMBER;
    v_Prizes CURSOR  FOR
        SELECT Keynum, Price1, countnum
        FROM Prize
        WHERE Evnum = p_Evnum;
    v_WinnerCount NUMBER;
BEGIN
    -- Get total number of entries for the specified event
    
    
    
    SELECT COUNT(*)
    INTO v_TotalEntries
    FROM entry
    WHERE Evnum = p_Evnum;
    
    -- Loop through each prize for the event
    FOR PrizeRecord IN v_Prizes LOOP
        -- Determine number of winners for the prize
        IF PrizeRecord.countnum >= v_TotalEntries THEN
            v_WinnerCount := v_TotalEntries;
        ELSE
            v_WinnerCount := PrizeRecord.countnum;
        END IF;
        
        -- Select random winners for the prize
        FOR i IN 1..v_WinnerCount LOOP
            INSERT INTO Winner (Key, Wingrade, phoneNumber, UserID, Evnum)
            SELECT e.Key, PrizeRecord.Price1, e.phoneNumber, e.UserID, e.Evnum
            FROM (
                SELECT Key, phoneNumber, UserID, Evnum
                FROM entry
                WHERE Evnum = p_Evnum
                ORDER BY DBMS_RANDOM.VALUE
            ) e
            WHERE ROWNUM = 1;
        END LOOP;
    END LOOP;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Winners for event ' || p_Evnum || ' have been drawn successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
        ROLLBACK;
END DrawEventWinners;
/


CREATE SEQUENCE DCDRAW;


exec DrawEventWinners(1);
exec DrawEventWinners(2);
exec DrawEventWinners(3);
exec DrawEventWinners(4);



SELECT *
from WINNER;
CREATE OR REPLACE PROCEDURE DrawEventWinners(
    p_Evnum  Event.Evnum%TYPE
)
AS
    v_TotalEntries NUMBER;
    v_WinnerCount NUMBER;
    CURSOR v_Prizes IS
        SELECT Keynum, Price1, countnum
        FROM Prize
        WHERE Evnum = p_Evnum;
BEGIN
    SELECT COUNT(*)
    INTO v_TotalEntries
    FROM entry
    WHERE Evnum = p_Evnum; -- 이벤트 응모자수
    
    FOR PrizeRecord IN v_Prizes LOOP
        IF PrizeRecord.countnum >= v_TotalEntries THEN
            v_WinnerCount := v_TotalEntries;
        ELSE
            v_WinnerCount := PrizeRecord.countnum;
        END IF;
        
        FOR i IN 1..v_WinnerCount LOOP
            INSERT INTO Winner (Key, Wingrade, phoneNumber, UserID, Evnum)
            SELECT DCDRAW.NEXTVAL, PrizeRecord.Price1, e.phoneNumber, e.UserID, e.Evnum
            FROM (
                SELECT Key, phoneNumber, UserID, Evnum
                FROM entry
                WHERE Evnum = p_Evnum
                AND (KEY,EVNUM) NOT IN (SELECT KEY,EVNUM FROM WINNER)
                ORDER BY DBMS_RANDOM.VALUE
            ) e
            WHERE ROWNUM = 1;
              COMMIT;
        END LOOP;
    END LOOP;

  
    DBMS_OUTPUT.PUT_LINE(p_Evnum ||'번 이벤트의 당첨자가 추첨되었습니다.' );
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred ' );
        ROLLBACK;
END ;












    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Winners for event 1 have been drawn successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
        ROLLBACK;
END DrawEvent1Winners;
/



        IF v_EntryCount >= v_WinnerCount THEN
            FOR i IN 1..v_WinnerCount LOOP
                INSERT INTO Winner 
                (Key, Wingrade, phoneNumber, UserID, Evnum)
                SELECT KeySequence2.NEXTVAL, '상품 ' 
                || i, f.PHONENUMBER
                , f.USERID, p_EventNum
                FROM (
                    SELECT phoneNumber, UserID
                    FROM entry
                    WHERE Evnum = p_EventNum
                    ORDER BY DBMS_RANDOM.VALUE
                ) f
                WHERE ROWNUM = 1;
            END LOOP;
        ELSE
            DBMS_OUTPUT.PUT_LINE('응모한 회원 수가 상금 수보다 적습니다.');
        END IF;
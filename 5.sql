CREATE DATABASE new;
USE new;
 CREATE TABLE SAILORS(
      SID VARCHAR(6) PRIMARY KEY,
      SNAME CHAR(25),
     RATING FLOAT,
     AGE INT);



 INSERT INTO SAILORS (SID,SNAME,RATING,AGE)
    VALUES ('76843','NEIL',3.9,45),
     ('740689','NAVEEN',4.2,32),
     ('76743','BOB',4.5,32);


CREATE TABLE BOATS(
     BID VARCHAR(6) PRIMARY KEY,
     BNAME CHAR(25),
     COLOUR CHAR(10)
     );

  INSERT INTO BOATS (BID,BNAME,COLOUR)
     VALUES ('101','DHYAN','RED'),
     ('106','BEN','YELLOW'),
    ('103','DEV','BLUE');

CREATE TABLE RESERVES(
    SID VARCHAR(6),
     BID VARCHAR(6),
     DAY DATE
    );


  INSERT INTO RESERVES (SID,BID,DAY)
    VALUES ('76743','101','2021/01/10'),
    ('76843','106','2021/01/11'),
     ('76743','103','2021/01/10'),
    ('76843','103','2021/01/11');
    select A.SID,A.SNAME,A.RATING,A.AGE FROM SAILORS AS A
    INNER JOIN RESERVES AS R ON A.SID=R.SID AND R.BID=101;
    
    select B.BNAME FROM RESERVES AS R 
    INNER JOIN BOATS AS B ON 
    B.BID=R.BID 
    INNER JOIN SAILORS AS S
    ON R.SID=S.SID AND S.SNAME='BOB';
    
    SELECT A.SID , A.SNAME
     FROM RESERVES AS C
     INNER JOIN RESERVES AS D ON C.SID <> D.SID AND C.DAY=D.DAY
     INNER JOIN SAILORS AS A ON D.SID=A.SID;
     

   

CREATE TABLE ORGANIZAITONS
(
  UNIQUE_ID        VARCHAR(200) NOT NULL COMMENT '대표값',
  DEPARTMENT       VARCHAR(200) NOT NULL COMMENT '부서명',
  UNIQUE_ID_PARENT VARCHAR(200) NOT NULL COMMENT '상위대표값',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '조직도';

ALTER TABLE ORGANIZAITONS
  ADD CONSTRAINT FK_ORGANIZAITONS_TO_ORGANIZAITONS
    FOREIGN KEY (UNIQUE_ID_PARENT)
    REFERENCES ORGANIZAITONS (UNIQUE_ID);

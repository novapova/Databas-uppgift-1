DROP TABLE IF EXISTS Tbl_Bok, Tbl_Författare, Tbl_Bokhandel, Tbl_HarBok;



CREATE TABLE Tbl_Författare(
    Fo_ID INT PRIMARY KEY,
    Fo_Namn VARCHAR(100) NOT NULL
);
CREATE TABLE Tbl_Bok(
    Bok_ID INT PRIMARY KEY,
    Bok_Titel VARCHAR(100) NOT NULL,
    Bok_Sidor INT NOT NULL,
    Bok_skriven INT REFERENCES Tbl_Författare(Fo_ID)
);

CREATE TABLE Tbl_Bokhandel(
    Bh_ID INT PRIMARY KEY,
    Bh_namn VARCHAR(100) NOT NULL
);

CREATE TABLE Tbl_HarBok(
    HB_bokhandel INT,
    HB_bok INT,
    PRIMARY KEY (HB_bok, HB_bokhandel),
    FOREIGN KEY (HB_bokhandel) REFERENCES tbl_bokhandel(Bh_ID),
    FOREIGN KEY (HB_bok) REFERENCES tbl_bok(Bok_ID)
);

insert into tbl_författare (fo_namn, fo_id)
    values ('Gabrielle Zevin', '1'),
    ('Suzanne Collins', '2'),
    ('Mark Sullivan', '3'),
    ('Majgull Axelsson', '4');

insert into tbl_bok (bok_titel, Bok_Sidor, bok_skriven, bok_id)
    values ('Imorgon och imorgon och imorgon', '356', '1', '1'),
            ('Under en brinnande himmel', '631', '3', '2'),
            ('Sunrise of the reaping', '487', '2', '3'),
            ('Aprilhäxan', '267', '4', '4');



insert into tbl_bokhandel (bh_namn, bh_id)
    values ('Akademibokhandeln', '1'),
    ('Hörnet', '2');

insert into tbl_harbok (hb_bok, hb_bokhandel)
    values (1, 2),(1,1),(2, 2), (3,1), (3,2), (4,1);
DROP TABLE IF EXISTS Tbl_Bok, Tbl_Författare, Tbl_Bokhandel, Tbl_HarBok;



CREATE TABLE Tbl_Författare(
    Fo_ID INT PRIMARY KEY,
    Fo_Namn VARCHAR(100) NOT NULL
);
CREATE TABLE Tbl_Bok(
    Bok_ID INT PRIMARY KEY,
    Bok_Titel VARCHAR(100) NOT NULL,
    Bok_Sidor INT NOT NULL,
    Bok_skriven INT,
    FOREIGN KEY(Bok_skriven) REFERENCES Tbl_Författare(Fo_ID) on delete set null
);

CREATE TABLE Tbl_Bokhandel(
    Bh_ID INT PRIMARY KEY,
    Bh_namn VARCHAR(100) NOT NULL
);

CREATE TABLE Tbl_HarBok(
    HB_bokhandel INT,
    HB_bok INT,
    PRIMARY KEY (HB_bok, HB_bokhandel),
    FOREIGN KEY (HB_bokhandel) REFERENCES tbl_bokhandel(Bh_ID) on delete cascade ,
    FOREIGN KEY (HB_bok) REFERENCES tbl_bok(Bok_ID) on delete cascade
);

insert into tbl_författare (fo_namn, fo_id)
    values ('Gabrielle Zevin', 1),
    ('Suzanne Collins', 2),
    ('Mark Sullivan', 3),
    ('Majgull Axelsson', 4);

insert into tbl_bok (bok_titel, Bok_Sidor, bok_skriven, bok_id)
    values ('Imorgon och imorgon och imorgon', '356', (select Fo_ID from tbl_författare where fo_namn = 'Gabrielle Zevin'), 1),
            ('Under en brinnande himmel', '631', (select Fo_ID from tbl_författare where fo_namn = 'Mark Sullivan'), 2),
            ('Sunrise of the reaping', '487', (select Fo_ID from tbl_författare where fo_namn = 'Suzanne Collins'), 3),
            ('Aprilhäxan', '267', (select Fo_ID from tbl_författare where fo_namn = 'Majgull Axelsson'), 4);



insert into tbl_bokhandel (bh_namn, bh_id)
    values ('Akademibokhandeln', 1),
    ('Hörnet', 2);


insert into tbl_harbok (hb_bok, hb_bokhandel)
    select tbl_bok.bok_id, tbl_bokhandel.bh_id
    from tbl_bok, tbl_bokhandel
    where tbl_bokhandel.bh_namn = 'Akademibokhandeln'
    and tbl_bok.bok_titel in ('Under en brinnande himmel', 'Sunrise of the reaping');

insert into tbl_harbok (hb_bok, hb_bokhandel)
    select tbl_bok.bok_id, tbl_bokhandel.bh_id
    from tbl_bok, tbl_bokhandel
    where tbl_bokhandel.bh_namn = 'Hörnet'
    and tbl_bok.bok_titel in ('Imorgon och imorgon och imorgon', 'Sunrise of the reaping')

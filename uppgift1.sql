DROP TABLE IF EXISTS Tbl_Bok, Tbl_Författare, Tbl_Bokhandel, Tbl_HarBok;



CREATE TABLE Tbl_Författare(
    Fo_ID SERIAL PRIMARY KEY,
    Fo_Namn VARCHAR(100) NOT NULL
);
CREATE TABLE Tbl_Bok(
    Bok_ID SERIAL PRIMARY KEY,
    Bok_Titel VARCHAR(100) NOT NULL,
    Bok_Sidor INT NOT NULL,
    Bok_skriven INT REFERENCES Tbl_Författare(Fo_ID)
);

CREATE TABLE Tbl_Bokhandel(
    Bh_ID SERIAL PRIMARY KEY,
    Bh_namn VARCHAR(100) NOT NULL
);

CREATE TABLE Tbl_HarBok(
    HB_bokhandel INT,
    HB_bok INT,
    PRIMARY KEY (HB_bok, HB_bokhandel),
    FOREIGN KEY (HB_bokhandel) REFERENCES tbl_bokhandel(Bh_ID),
    FOREIGN KEY (HB_bok) REFERENCES tbl_bok(Bok_ID)
);

insert into tbl_bok (bok_titel, Bok_Sidor)
    values ('Imorgon och imorgon och imorgon', '356'),
            ('Under en brinnande himmel', '631'),
            ('Sunrise of the reaping', '487'),
            ('Aprilhäxan', '267');

);
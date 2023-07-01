CREATE TABLE "events" (
  "idevent" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "date" date NOT NULL,
  "nom" varchar(40) NOT NULL,
  "description" text
);

CREATE TABLE "creneau" (
  "idcreneau" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "datedebut" timestamp NOT NULL UNIQUE,
  "datefin" timestamp NOT NULL UNIQUE,
  "description" text NOT NULL
);

CREATE TABLE "staff" (
  "idstaff" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "idrefetu" integer NOT NULL UNIQUE,
  "idrefrole" integer NOT NULL
);

CREATE TABLE "role" (
  "idrole" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nomrole" varchar(20) NOT NULL
);

CREATE TABLE "etudiants" (
  "idetu" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "login" varchar(10) UNIQUE NOT NULL,
  "email" varchar(50),
  "idrefgroupe" integer NOT NULL,
  "token" varchar(50) UNIQUE NOT NULL,
  "prenom" varchar(15) NOT NULL,
  "nom" varchar(30) NOT NULL UNIQUE,
  "profilepic" varchar(80)
);

CREATE TABLE "groupe" (
  "idgroupe" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nomgroupe" varchar(2) UNIQUE NOT NULL
);

CREATE TABLE "reservationactivite" (
  "idresa" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "idrefetu" integer NOT NULL,
  "datedebut" timestamp NOT NULL,
  "datefin" timestamp NOT NULL,
  "description" varchar(255) NOT NULL,
  "nombreetu" integer NOT NULL
);

CREATE TABLE "condition" (
  "idcondition" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nomcondition" varchar(20) UNIQUE NOT NULL
);

CREATE TABLE "annonces" (
  "idannonce" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "idreftype" integer NOT NULL,
  "nom" varchar(25) NOT NULL,
  "description" text NOT NULL,
  "image" varchar(50) NOT NULL,
  "prix" integer NOT NULL,
  "stock" integer NOT NULL,
  "datecreation" date NOT NULL,
  "idrefcondition" integer NOT NULL,
  "idrefetu" integer NOT NULL,
  "idrefetatannonce" integer NOT NULL
);

CREATE TABLE "type" (
  "idtype" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nomtype" varchar(20) UNIQUE NOT NULL
);

CREATE TABLE "etatannonce" (
  "idetat" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nometat" varchar(20) UNIQUE NOT NULL
);

CREATE TABLE "etatreservation" (
  "idetat" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "nometat" varchar(40) UNIQUE NOT NULL
);

CREATE TABLE "reservation" (
  "idreservation" SERIAL NOT NULL UNIQUE PRIMARY KEY,
  "idrefannonce" integer NOT NULL,
  "idrefetatreservation" integer NOT NULL,
  "idrefetu" integer NOT NULL,
  "datecreation" timestamp NOT NULL
);

COMMENT ON COLUMN "events"."nom" IS 'Nom de l"évènement';

COMMENT ON COLUMN "events"."description" IS 'Description de l"évènement';

COMMENT ON COLUMN "role"."nomrole" IS 'Nom du rôle';

COMMENT ON COLUMN "etudiants"."login" IS 'Nom du login';

COMMENT ON COLUMN "groupe"."nomgroupe" IS 'Nom du groupe';

COMMENT ON COLUMN "reservationactivite"."description" IS 'Description de l"activité';

COMMENT ON COLUMN "condition"."nomcondition" IS 'Nom de la condition';

COMMENT ON COLUMN "type"."nomtype" IS 'Nom du type';

ALTER TABLE "staff" ADD FOREIGN KEY ("idrefetu") REFERENCES "etudiants" ("idetu") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "staff" ADD FOREIGN KEY ("idrefrole") REFERENCES "role" ("idrole") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "etudiants" ADD FOREIGN KEY ("idrefgroupe") REFERENCES "groupe" ("idgroupe") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "reservationactivite" ADD FOREIGN KEY ("idrefetu") REFERENCES "etudiants" ("idetu") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "annonces" ADD FOREIGN KEY ("idreftype") REFERENCES "type" ("idtype") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "annonces" ADD FOREIGN KEY ("idrefcondition") REFERENCES "condition" ("idcondition") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "annonces" ADD FOREIGN KEY ("idrefetatannonce") REFERENCES "etatannonce" ("idetat") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "annonces" ADD FOREIGN KEY ("idrefetu") REFERENCES "etudiants" ("idetu") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "reservation" ADD FOREIGN KEY ("idrefannonce") REFERENCES "annonces" ("idannonce") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "reservation" ADD FOREIGN KEY ("idrefetatreservation") REFERENCES "etatreservation" ("idetat") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "reservation" ADD FOREIGN KEY ("idrefetu") REFERENCES "etudiants" ("idetu") ON DELETE RESTRICT ON UPDATE CASCADE;

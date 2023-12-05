CREATE TABLE soorten (
    id integer PRIMARY KEY,
    soort text 
);


CREATE TABLE geschikt_voor_kinderen (
    id integer REFERENCES soorten PRIMARY KEY,
    yn BOOLEAN
);

CREATE TABLE honden (
    id integer PRIMARY KEY,
    naam text,
    soort integer REFERENCES soorten,
    geslacht BOOLEAN
);

CREATE TABLE leeftijd (
    id integer REFERENCES honden PRIMARY KEY,
    leeftijd_in_mensen_jaren integer CHECK (leeftijd_in_mensen_jaren > 0)
);

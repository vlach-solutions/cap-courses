namespace solutions.vlach;
using { managed, cuid } from '@sap/cds/common';

@cds.odata.valuelist
entity Kurse : cuid, managed {    
    inhalt: Association to Inhalte;
    start: Date;
    ende: Date;
    trainer: Association to Trainers;
    buchungen  : Composition of many Bookings on buchungen.kurs = $self;
}

@cds.odata.valuelist
entity Teilnehmer : cuid, managed {    
    vorname: String(50);
    nachname: String(50);
    buchungen: Association to many Bookings on buchungen.teilnehmer = $self;
}

@cds.odata.valuelist
entity Inhalte : cuid, managed {
    bezeichnung: String(50);
    inhalt: String(50);
}

@cds.odata.valuelist
entity Trainers : cuid, managed {
    vorname: String(50);
    nachname: String(50);    
    kurse: Association to many Kurse on kurse.trainer = $self;
}

entity Bookings : cuid, managed {
    kurs: Association to Kurse;
    teilnehmer: Association to Teilnehmer;    
}
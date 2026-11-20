
using { CourseService } from './courses-service';

// ==========================================
// CONTENTS
// ==========================================

annotate CourseService.Contents with @(
    UI.LineItem: [
        { Value: bezeichnung },
        { Value: inhalt }
    ],

    UI.FieldGroup #General: {
        Data: [
            { Value: bezeichnung },
            { Value: inhalt }
        ]
    },

    UI.Facets: [{
        $Type: 'UI.ReferenceFacet',
        Label: 'Inhalt',
        Target: '@UI.FieldGroup#General'
    }]
);

// ==========================================
// PARTICIPANTS
// ==========================================

annotate CourseService.Participants with @(
    UI.LineItem: [
        { Value: vorname },
        { Value: nachname }
    ],

    UI.FieldGroup #General: {
        Data: [
            { Value: vorname },
            { Value: nachname }
        ]
    },

    UI.Facets: [{
        $Type: 'UI.ReferenceFacet',
        Label: 'Teilnehmer',
        Target: '@UI.FieldGroup#General'
    }]
);

// ==========================================
// TRAINERS
// ==========================================

annotate CourseService.Trainers with @(
    UI.LineItem: [
        { Value: vorname },
        { Value: nachname }
    ],

    UI.FieldGroup #General: {
        Data: [
            { Value: vorname },
            { Value: nachname }
        ]
    },

    UI.Facets: [{
        $Type: 'UI.ReferenceFacet',
        Label: 'Trainer',
        Target: '@UI.FieldGroup#General'
    }]
);

// ==========================================
// COURSE
// ==========================================

annotate CourseService.Course with @(
    UI.LineItem: [
        { Value: inhalt.bezeichnung, Label: 'Kurs' },
        { Value: start, Label: 'Beginn' },
        { Value: ende, Label: 'Ende' },
        { Value: trainer.nachname, Label: 'Trainer' }
    ],

    UI.FieldGroup #General: {
        Data: [
            { Value: inhalt_ID, Label: 'Kursinhalt' },
            { Value: start },
            { Value: ende },
            { Value: trainer_ID, Label: 'Trainer' }
        ]
    },

    UI.Facets: [
        {
            $Type: 'UI.ReferenceFacet',
            Label: 'Kursdaten',
            Target: '@UI.FieldGroup#General'
        },
        {
            $Type: 'UI.ReferenceFacet',
            Label: 'Buchungen',
            Target: 'buchungen/@UI.LineItem'
        }
    ]
);

// ==========================================
// BOOKINGS
// ==========================================

annotate CourseService.Bookings with @(
    UI.LineItem: [
        { Value: kurs_ID, Label: 'Kurs-ID' },
        { Value: teilnehmer.vorname, Label: 'Vorname' },
        { Value: teilnehmer.nachname, Label: 'Nachname' }
    ],

    UI.FieldGroup #General: {
        Data: [
            { Value: kurs_ID, Label: 'Kurs' },
            { Value: teilnehmer_ID, Label: 'Teilnehmer' }
        ]
    },

    UI.Facets: [{
        $Type: 'UI.ReferenceFacet',
        Label: 'Buchung',
        Target: '@UI.FieldGroup#General'
    }]
);

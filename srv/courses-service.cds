using { solutions.vlach as vv } from '../db/schema';
service CourseService @(path: '/courseservice') {
    entity Course as projection on vv.Kurse;
    entity Participants as projection on vv.Teilnehmer;
    entity Contents     as projection on vv.Inhalte;
    entity Trainers     as projection on vv.Trainers;
    entity Bookings     as projection on vv.Bookings;    
}

    annotate CourseService.Course      with @odata.draft.enabled;
    annotate CourseService.Participants with @odata.draft.enabled;
    annotate CourseService.Contents     with @odata.draft.enabled;
    annotate CourseService.Trainers     with @odata.draft.enabled;
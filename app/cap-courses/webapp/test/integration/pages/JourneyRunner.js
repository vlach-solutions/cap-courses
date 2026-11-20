sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"capcourses/test/integration/pages/CourseList.gen",
	"capcourses/test/integration/pages/CourseObjectPage.gen",
	"capcourses/test/integration/pages/BookingsObjectPage.gen"
], function (JourneyRunner, CourseListGenerated, CourseObjectPageGenerated, BookingsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('capcourses') + '/test/flp.html#app-preview',
        pages: {
			onTheCourseListGenerated: CourseListGenerated,
			onTheCourseObjectPageGenerated: CourseObjectPageGenerated,
			onTheBookingsObjectPageGenerated: BookingsObjectPageGenerated
        },
        async: true
    });

    return runner;
});


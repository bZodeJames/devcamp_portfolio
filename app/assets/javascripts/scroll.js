//Main navigation scroll spy for shadow
$(window).scroll(function () {
    var y = $(window).scrollTop();
    if (y > 45) {
        $("#header").addClass('--not-top');
    } else {
        $("#header").removeClass('--not-top');
    }
});

$(window).scroll(function () {
    var y = $(window).scrollTop();
    if (y > 45) {
        $("#expand-menu").addClass('--not-top');
    } else {
        $("#expand-menu").removeClass('--not-top');
    }
});
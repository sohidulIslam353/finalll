'use strict';
$(document).ready(function() {
    //====================Searching JS===========
    $("#search-field").keyup(function () {
        var srch = $(this).val().trim().toLowerCase();
        $("table tr").hide()
            .filter(function () {
                return $(this).html().trim().toLowerCase().indexOf(srch) != -1;
            }).show();
    });

    var total_mails= parseInt($('#primary table tr').length) + parseInt($('#social table tr').length) + parseInt($('#promotions table tr').length);
    $(".email_count").text(total_mails);

    var rowCount3=$(".active table tr").length;
    $("#email_page_count").text(rowCount3);


    $(".starred_mail").hide();
    $("#more_items").on('click',function () {
        $(".starred_mail").slideToggle();
        $("#more_items").find('.ti-angle-down,.ti-angle-up').toggleClass("ti-angle-up").toggleClass("ti-angle-down");
    });
    $(".select-all").on("change",function () {
        $(".mail .show tr td [type='checkbox']").prop('checked', $(this).prop("checked"));
        if ($(this).prop("checked")) {
            $(".mail .show  table tr").addClass("mail_tr_background");
        } else {
            $(".mail .show.active  table tr").removeClass("mail_tr_background");
        }
        return false;
    });




    $(".select-all1,.select-all1 span").on('click', function () {
        $(".select-all").prop('checked', true);
        $(".mail .show tr td [type='checkbox']").prop('checked', true);
        $(".mail .show table tr").addClass("mail_tr_background");
    });


    $('.mail tr td [type="checkbox"]').on('change', function () {
        var chkall=0;
        $(this).closest('tr').toggleClass("mail_tr_background");
        $('.mail .show tr td [type="checkbox"]').each(function () {
            if ($(this).prop("checked")) {
            } else {
                chkall=1;
                return;
            }
        });
        if(chkall==1){
            $(".select-all").prop("checked", false);
        }else{
            $(".select-all").prop("checked", true);
        }
    });

    $("#primary2,#social2,#promotions2").on('click', function () {
        $("input:checkbox").prop('checked', false);
        $(".mail .show table tr").removeClass("mail_tr_background");
        $(this).parent().find()
    });


    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var y = $(".tab-pane.active").find("table tr").length;

        $("#email_page_count").text(y);
        if(y=='0'){
            $("#mail_count_from").text(0);
        }
        else{
            $("#mail_count_from").text(1);
        }

    });



    $('#inbox_leftmenu').delay(9000).addClass('sidebar-left-hidden');
    $('.custom-control-input').hide();


    $("#select-none").on('click', function () {
        $("input:checkbox").prop('checked', false);
        $(".mail .show table tr").removeClass("mail_tr_background")
    });
    $("#refresh_inbox").on('click', function () {
        $(location).attr('href', '#');
    });

    $('.mail tr td .ti-star').on('click', function () {
        $(this).toggleClass("text-warning");
        return false;
    });
    $('.email_view_body .ti-star').on('click', function () {
        $(this).toggleClass("text-warning");
        return false;
    });


    $("#delete_mail").on("click", function () {
        $('table tr').has('input[type="checkbox"]:checked').remove();
        $('.select-all').prop('checked', false);
        var total_mails= parseInt($('#primary table tr').length) + parseInt($('#social table tr').length) + parseInt($('#promotions table tr').length);

        $(".email_count").text(total_mails);
        var rowCount3=$(".active table tr").length;
        $("#email_page_count").text(rowCount3);
        if(rowCount3=='0'){
            $("#mail_count_from").text(0);
        }


    });

    $(".sent_to_mailview").on("click",function () {
        $(location).attr('href','email_view.html');
        return false;
    });
//------- --------email view -----
    $(".reply_box").on("click",function(){
        $(this).addClass("summernote_email_replay");
        $('.summernote_email_replay').summernote({
            height: 70
        });
        $(".note-editable").focus();
    });

//======================= compose=====================
    if ($.fn.summernote !== undefined) {
        $('.multi_summernote').summernote({
            height: 300
        });
    }
    $(".note-toolbar button").removeClass('btn-default').addClass('btn-secondary');

    // ========================End of compose==================

    // =========================email view=============================
    $(".reply_box").on("click",function () {
        $(".note-toolbar button").removeClass('btn-default').addClass('btn-secondary');
    });

    // =========================End of email view============================

    if (typeof Choices === "function") {
        new Choices('#choices-text-email-filter', {
            editItems: true,
            removeItemButton: true,
            regexFilter: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
        });
    }
});
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
    window.print();
    document.body.innerHTML = originalContents;
}
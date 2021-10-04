/*
* Covers the page and pulls data from database, matching the values
*
* */
var universityID=[];
$.ajax({
    type: "POST",
    url: "../php/compare.php",
    data: {data : universityID},
    cache: false,

    success: function(){
        alert("Ajax package packed o7");
    }
});
$('input#compare-btn').on('click', function (){
    if($('input[type=\"checkbox\"]#universityID').is(':checked')){
        var universityID=$('input[type=\"checkbox\"]#universityID').val();
    }
    if($.trim(name)!=''){
        $.post('main.php',{})
    }
})
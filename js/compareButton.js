/*
document.body.onclick= function(e){
    e=window.event? event.srcElement: e.target;
    if(e.className && e.className.indexOf('compare-checkbox')!=-1)alert('hohoho');
 }
 */
$( '.compare-checkbox' ).on( "click", function() {
    if($(this).prop("checked") == true){
      $(this).closest('tr').addClass('selected-row');
      //alert("IT WORKS");
    }else if($(this).prop("checked") == false){
      $(this).closest('tr').removeClass('selected-row');
    //alert("IT STOPS");
    }
    if($( ".compare-checkbox:checked" ).length > 1)
    {
      $('#compare-btn').prop('hidden', false);
    }
    else
    {
      $('#compare-btn').prop('hidden', true);
    }  
  });

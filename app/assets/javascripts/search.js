$(document).ready(function() {  
  $('.search_form').submit(function() {

    var first_station;
    var last_station; 

    first_station = $(this).find('#from');
    last_station = $(this).find('#to');

    console.log(first_station);

    if ( first_station.val() == last_station.val() ) {
      alert('Выберите конечную станцию');
      return false;
    }
  });
});
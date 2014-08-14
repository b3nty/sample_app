$(function(){
  
  var note = $('#note'),
    ts = new Date(2014, 7, 17, 21, 30),
    newYear = true;
  
  if((new Date()) > ts){
    // The new year is here! Count towards something else.
    // Notice the *1000 at the end - time must be in milliseconds
    ts = (new Date()).getTime() + 60*24*60*60*1000;
    newYear = false;
  }
    
  $('#countdown').countdown({
    timestamp : ts,
    callback  : function(days, hours, minutes, seconds){
      
      var message = "";
      
      message += days + " day" + ( days==1 ? '':'s' ) + ", ";
      message += hours + " hour" + ( hours==1 ? '':'s' ) + ", ";
      message += minutes + " minute" + ( minutes==1 ? '':'s' ) + " and ";
      message += seconds + " second" + ( seconds==1 ? '':'s' ) + " <br />";
      
      if(newYear){
        message += "left until the new year!";
      }
      else {
        message += "left to 60 days from now!";
      }
      
      note.html(message);
    }
  });
  
});

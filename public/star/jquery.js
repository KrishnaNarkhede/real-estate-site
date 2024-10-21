$(document).ready(function(){
    $("#HOME").click(function(){
      $("#description").show();
      $("#gallery").show();
      $("#location").show();
      $("#travel").show();
      $("#more").show();
    });
});

$(document).ready(function(){
    $("#LOCATION").click(function(){
      $("#description").hide();
      $("#gallery").hide();
      $("#location").show();
      $("#travel").hide();
      $("#more").hide();
    });
});

$(document).ready(function(){
    $("#WAYTOTRAVEL").click(function(){
      $("#description").hide();
      $("#gallery").hide();
      $("#location").hide();
      $("#travel").show();
      $("#more").hide();
    });
});

$(document).ready(function(){
    $("#MORE").click(function(){
      $("#description").hide();
      $("#gallery").hide();
      $("#location").hide();
      $("#travel").hide();
      $("#more").SHOW();
    });
});



$(document).ready(function(){
$("#signin").click(function () { 
    $("#signin").html("<b>LOG IN</b>");
    
});
});


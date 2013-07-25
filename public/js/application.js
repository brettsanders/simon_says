$(document).ready(function(){
  $('a#get_color').on('click',function(){
    $.post('/color',function(response){
      console.log(response)
      $("ul#color_me li").eq(response.cell).css("background-color", response.color)
    })
  })
});

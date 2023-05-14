
$(".progress-bar").each(function() {
    each_bar_width = $(this).attr('aria-valuenow');
    $(this).width(each_bar_width + '%');
});

//  }  
// });
setInterval(function(){

}, 30);
let bar = document.getElementsByClassName("progreso")[0]
let fondo = document.getElementsByClassName("barra")[0]

bar.getElementsByClassName.width = bar.clientWidth+1+"px"

if (bar.clientWidth >= fondo.clientWidth) {
    bar.getElementsByClassName.width = 1+"px";
    
}
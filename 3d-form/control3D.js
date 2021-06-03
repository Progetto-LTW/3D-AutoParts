
/////////////////////// ANIMAZIONI X FORM 

$(document).ready(function(){
    // mouse hover 
    $("#img1").mouseenter( () => {
        $(".first-img-txt").animate({left:'0'},300);
    });
    $(".first-img-txt").mouseleave( () => {
        $(".first-img-txt").animate({left:'-100%'},10);
    });

    $("#img2").mouseenter( () => {
        $(".second-img-txt").animate({left:'0'},300);
    });
    $(".second-img-txt").mouseleave( () => {
        $(".second-img-txt").animate({left:'200%'},10);
    });


    //transizioni al click  <---
    $(".first-img-txt").click( () => {

        $(".no-file").toggle();

        $(".first-img").animate({left: '0'});
        $("#img2").animate({left: '0'});

    });

  

    //transizioni al click  --->
    $(".second-img-txt").click( () => {
        $(".first-img").animate({left: '45%'});
        $("#img2").animate({left: '100%'});
        $(".second-img-txt").animate({left:'200%'})
        
        $(".no-file").toggle('4000');

    });

});

////////////animazioni mobile

$(document).ready(function (){
    $(".no-file").toggle();

    $("#t-mob").click( function() {
        $("#t-mob").toggleClass('active');
        $(".yes-file").toggle();
        $(".no-file").toggle();
    });
    
    
});


///////////////////////////VALIDAZIONE FORM "HO GIA I FILE"

function valida3D_1(){
    if(document.formSI.nome.value == ""){
        alert('inserisci il tuo nome');
        return false;
    }

    if(document.formSI.cognome.value == ""){
        alert('inserisci il tuo cognonome');
        return false;
    }

    if(document.formSI.email.value == ""){
        alert('inserisci la tua email');
        return false;
    } 

    var fileinput = document.getElementById('3d_file');
    var filepath = fileinput.value;
    var estensioni = /(\.gltf|\.glb)$/i ;
    if(fileinput.value==""){
        alert("inserisci un file da stampare");
        return false;
    }
    if(!estensioni.exec(filepath)){
        alert("Scusa, questo file non è accettato. Inserisci un estensione corretta (.gltf o .glb)");
        fileinput.value='';
        return false;
    }
    
    
};


        
// /////////////////////////VALIDAZIONE FORM "NON HO ANCORA I FILE"

function valida3D_2(){
    if(document.formNO.nome.value == ""){
        alert('inserisci il tuo nome');
        return false;
    }

    if(document.formNO.cognome.value == ""){
        alert('inserisci il tuo cognonome');
        return false;
    }


    var IMGinput = document.getElementById('prjct_img');
    var filepath = IMGinput.value;
    var estensioni = /(\.jpg|\.png|\.bmp|\.svg|\.JPG|\.PNG|\.BMP|\.SVG)$/ ;
    if(IMGinput.value==""){
        alert("inserisci un immagine per prendere spunto");
        return false;
    }
    if(!estensioni.exec(filepath)){
        alert("Scusa, quest'estensione non è accettata. Inserisci un file d'immagine con estensione corretta (.jpg .png .bmp .SVG)");
        IMGinput.value='';
        return false;
    }
    
    
};
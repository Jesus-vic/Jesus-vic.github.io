(function(window, document, JSON){
    'use strict';
    var url='ws://'+window.location.host+'/WebServicesPrueba/chat';
    var ws = new WebSocket(url);
    
    var mensajes = document.getElementById('mensajes');
    var boton = document.getElementById('btnEnviar');
    var nombre = document.getElementById('usuario');
    var mensaje = document.getElementById('mensaje');
    
    
    ws.onopen=onOpen;
  
    ws.onclose=onClose;
    
   
    ws.onmessage=onMessage;

    boton.addEventListener('click',enviar);
    
    
    function onOpen(){
        console.log("conectado");
    }
    function onClose(){
        console.log("desconectado");
    }
    
   
    function enviar(){
        
        var msg={
            nombre:nombre.value,
            mensaje:mensaje.value     
        };
       
        ws.send(JSON.stringify(msg));       
    }

    function onMessage(evt){
        var objetoJS=JSON.parse(evt.data);
        var msg = 'Nombre :'+objetoJS.nombre+ ' dice :'+objetoJS.mensaje;
        mensajes.innerHTML+='<br\>'+msg;
    }
    
    
})(window, document, JSON);



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  
  <link href="RESOURCES/css/styles_chatbot.css" rel="stylesheet" type="text/css"/>
  
    <title>ChatBot</title>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
 
</head>
<body onload="init()">
    <div id="main">
 
    <h2>ChatBot</h2>
 
        <div id="msg">
            <div id="robot">
            <div class="bot"></div>
            <h3>Aco ChatBot</h3>
            </div>
    </div>
 
    <div class="input">
        <input type="text" id="msg_send" placeholder="New Message"> <button class="send" id="reply">Send <i class="fas fa-paper-plane"></i></button>
    </div>
</div>
 
 
    https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js
 
 
</body>

<script type="text/javascript">
function init() {
    let res_elm = document.createElement("div");
    res_elm.innerHTML="Hello Myself Aco, How can I help you?" ;
    res_elm.setAttribute("class","left");
 
    document.getElementById('msg').appendChild(res_elm);
}
 
 
document.getElementById('reply').addEventListener("click", async (e) => {
    e.preventDefault();
 
    var req = document.getElementById('msg_send').value ;
 
    if (req == undefined || req== "") {
 
    }
    else{
     
        var res = "";
        await axios.get(`https://api.monkedev.com/fun/chat?msg=${req}`).then(data => {
            res = JSON.stringify(data.data.response)
        })
           
        let data_req = document.createElement('div');
        let data_res = document.createElement('div');
 
        let container1 = document.createElement('div');
        let container2 = document.createElement('div');
 
        container1.setAttribute("class","msgCon1");
        container2.setAttribute("class","msgCon2");
 
        data_req.innerHTML = req ;
        data_res.innerHTML = res ;
 
 
        data_req.setAttribute("class","right");
        data_res.setAttribute("class","left");
 
        let message = document.getElementById('msg');
 
         
        message.appendChild(container1);
        message.appendChild(container2);
 
        container1.appendChild(data_req);
        container2.appendChild(data_res);
 
        document.getElementById('msg_send').value = "";
 
    function scroll() {
        var scrollMsg = document.getElementById('msg')
        scrollMsg.scrollTop = scrollMsg.scrollHeight ;
    }
    scroll();
 
    }
 
 
    });
</script>
</html>

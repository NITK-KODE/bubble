// 
let button = document.querySelector('.submit_control');
let chatroom = document.querySelector('.chatroom');
let form = document.querySelector('.form_control');



let body = document.querySelector('.body_control');
chatroom.scrollTop = chatroom.scrollHeight;
button.disabled = true;

const handleInput = (event) => {
    if(body.value === ''){
        button.disabled = true;
    }else{
        button.disabled = false;
    }
};

body.oninput = handleInput;



form.addEventListener('ajax:success' , ()=>{
    body.value='';
    chatroom.scrollTop = chatroom.scrollHeight;

})



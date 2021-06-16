import consumer from "./consumer"


  function getcookie(name = '') {
    let cookies = document.cookie;
    let cookiestore = {};
    
    cookies = cookies.split(";");
    
    if (cookies[0] == "" && cookies[0][0] == undefined) {
        return undefined;
    }
    
    cookies.forEach(function(cookie) {
        cookie = cookie.split(/=(.+)/);
        if (cookie[0].substr(0, 1) == ' ') {
            cookie[0] = cookie[0].substr(1);
        }
        cookiestore[cookie[0]] = cookie[1];
    });
    
    return (name !== '' ? cookiestore[name] : cookiestore);
}



consumer.subscriptions.create({channel:"ChatChannel" ,  id:getcookie('project') } , {
  connected() {
    // Called when the subscription is ready for use on the server

  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    if (data['body'] === ''){
      
    }else{
      this.appendLine(data);

    }
    
  },

  appendLine(data) {
 
    const html = this.createLine(data);
    const element = document.querySelector(".chatroom");
    element.insertAdjacentHTML("beforeend", html);
  },

  createLine(data) {
    return `
    <div class="message_box">
    <div class="message_wrapper">
        <div class="message_sender">
            <p>${data["sender"]}</p> 

         </div>
         <div class="message_body">
             <p>
                 ${data["body"]}

             </p>
         </div>
    </div>
   
</div>
    `
  }
});

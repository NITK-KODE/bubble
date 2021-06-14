import consumer from "./consumer"

consumer.subscriptions.create({channel:"ChatChannel" ,  room:"main" } , {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("conncted");
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

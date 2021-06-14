class MessageController < ApplicationController

    def create
        filtered_params = message_params()
        message = Message.new(filtered_params) 
        message.member_id = Current.member.id
        if(message.save)
            ActionCable.server.broadcast("chat_main" , {sender: message.member.name , body: message.body})
        else
            
            redirect_to root_path
        end
    end

    private
    def message_params
        message = params.require(:message).permit(:body)
        
    end
end

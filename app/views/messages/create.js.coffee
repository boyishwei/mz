<% if @message.errors.any? %>
  $("#error-msg").html ""
  $("#error-msg").append """
   <% if @message.errors.any? %>
   <div class="alert alert-danger alert-dismissible" role="alert">
     <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
       <% @message.errors.messages.each do |key, messages| %>
         <% messages.each do |msg| %>
          <%= msg %><br>
         <% end %>
       <% end %>  
   </div> 
   <% end %>
  """
<% else %>
  alert "你给我们的消息，我们已经收到了\n我们将尽快与你联系，稍后片刻！:)"
  $("#message_phone").val ""
  $("#message_email").val ""
  $("#message_message").val ""
  $("#msgModal").modal "hide"
<% end %>

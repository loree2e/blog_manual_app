require "rubygems"
require "sinatra"

get '/' do  
  form = "      <form action='/reverse'>
        <input type='text' name='text'>
        <input type='submit'>
      </form>"
  "
  <html>
     <style><!-- Include CSS code here -->
     </style>
    <body>
    #{form + form}
    </body>
   </html>
  "
end

get '/reverse' do
  params[:text].reverse
end
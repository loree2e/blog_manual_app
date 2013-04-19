require "rubygems"
require "sinatra" 
count = 0
get '/' do  
  
"
  <html>
  	<!-- Include CSS code here -->
     <style>
     #comment-form {
		text-shadow: 5px 5px 5px #FF0000;
		background-color:yellow;
		-moz-box-shadow: 10px 10px 5px #888888; /* Firefox 3.6 and earlier */
		box-shadow: 10px 10px 5px #888888;
		padding-top:5px;
		padding-bottom:5px;
		padding-right:10px;
		padding-left:10px;
		border-style:inset;
		border-width:5px;
		transition: background-color 1s;
		-webkit-transition: background-color 1s;
		-moz-transition: background-color 1s;
		-o-transition: background-color 1s;
		-ms-transition: background-color 1s;
		}
		.comment-form:hover{
		background:#FFB200;}
		.comment-form:active{
		background-color: CornflowerBlue ;
	}
     </style>
    <body>
      <form id='comment-form' action='/return_blog_post'>
        <input type='text' name='answer'>
        <input type='submit'>
      </form>
    </body>
   </html>
  "
end

get '/return_blog_post' do
  	text = params[:answer]
  	count = text.length
  	text + count.to_s + Time.now.to_s
  	#count = text.length
end


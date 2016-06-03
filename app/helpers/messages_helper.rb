module MessagesHelper
	def show_unread(arg)
		hash={true=>"нет",false=>"да"}
		a=hash[arg]	
	end
end

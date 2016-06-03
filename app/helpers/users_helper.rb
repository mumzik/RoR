module UsersHelper
	def user_options(selected)
		options_for_select(User.all.map{ |u| [u.login, u.id] }, selected)
	end

	def sex_options(selected)
		bad_habbits={0=>"м",1=>"ж" }
		options_for_select(bad_habbits.map { |k, v| [v, k]}, selected)
	end

	def show_sex(arg)
		hash={"0"=>"м","1"=>"ж"}
		a=hash[arg]	
	end


end

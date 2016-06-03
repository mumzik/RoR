module FormsHelper
	def living_options(selected)
		livings={0=>"своя квартира",1=>"съемная квартира",2=>"с родителями",3=>"общежитие"}
		options_for_select(livings.map { |k, v| [v, k]}, selected)
	end

	def bad_habbit_options(selected)
		bad_habbits={0=>"курение",1=>"алкоголь",2=>"наркотики", 3=>"нет" }
		options_for_select(bad_habbits.map { |k, v| [v, k]}, selected)
	end

	def target_options(selected)
		targets={0=>"пообщаться",1=>"стать друзьями",2=>"встречаться",3=>"ищу супруга(у)"}
		options_for_select(targets.map { |k, v| [v, k]}, selected)
	end

	def show_habbits(arg)
		hash={"0"=>"курение","1"=>"алкоголь","2"=>"наркотики", "3"=>"нет"}
		a=hash[arg]	
	end

	def show_living(arg)
		hash={"0"=>"своя квартира","1"=>"съемная квартира","2"=>"с родителями","3"=>"общежитие"}
		a=hash[arg]	
	end

	def show_target(arg)
		hash={"0"=>"пообщаться","1"=>"стать друзьями","2"=>"встречаться","3"=>"ищу супруга(у)"}
		a=hash[arg]	
	end
end

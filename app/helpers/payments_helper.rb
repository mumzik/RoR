module PaymentsHelper
def service_type_options(selected)
		service_types={0=>"оплата звонков", 1=>"платные смайлы", 2=>"изменение логина"}
		options_for_select(service_types.map { |k, v| [v, k]}, selected)
	end

	def show_type(arg)
		hash={"0"=>"оплата звонков", "1"=>"платные смайлы", "2"=>"изменение логина"}
		a=hash[arg]	
	end
end

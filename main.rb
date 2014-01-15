require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
	text.scan(/\d{2,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_mit_ip_addresses(text)
	text.scan(/[18]{2}\.\d{1,3}\.\d{1,3}\.\d{1,2}/)
end

def non_mit_ip_addresses(text)
	text.scan(/\d{3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end 

def valid_phone_numbers(text)
	text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(text)
	new_text = text.scan(/[6-8]\d{2}\-/).uniq
	new_text.each do |num|
		num.slice!('-')
	end
	return new_text

end

def email_addresses(text)
	text.scan(/\w{0,}\@\w{0,}\.\w{0,}/)
end

def zip_codes(text)
	text.scan(/\b\d{5}\b/)
end

def hex_colors(text)
	text.scan(/\h{6}/)
end
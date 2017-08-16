def change_hashes(money)
	change = Hash[:quarters, 0, :dimes, 0, :nickels, 0, :pennies, 0]
	coin_values = Hash[25, :quarters, 10, :dimes, 5, :nickels, 1, :pennies]

	coin_values.keys.each do |coin|
    
		while money >= coin
			change[coin_values[coin]] += 1
			money -= coin
		end
	end
  change
end

def change_string(big_ol_change_hash)

 	quarter_num = big_ol_change_hash[:quarters].to_i

 	if quarter_num == 1
 		quarterpl = "quarter"
 	else
 		quarterpl = "quarters"
 	end

 	dime_num = big_ol_change_hash[:dimes].to_i

 	if dime_num == 1
 		dimepl = "dime"
 	else
 		dimepl = "dimes"
 	end

 	nickel_num = big_ol_change_hash[:nickels].to_i

 	if nickel_num == 1
 		nickelpl = "nickel"
 	else
 		nickelpl = "nickels"
 	end

 	penny_num = big_ol_change_hash[:pennies].to_i

 	if penny_num == 1
 		pennypl = "penny"
 	else
 		pennypl = "pennies"
 	end

 	"#{quarter_num} #{quarterpl}, #{dime_num} #{dimepl}, #{nickel_num} #{nickelpl}, and #{penny_num} #{pennypl}"

end
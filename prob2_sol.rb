arr=[8,1,5,9,3,4,2]
targetval=4
pairs = 0
hsh=Hash.new
arr.each do|num|
	hsh[num]=true
end

arr.each do |num|
	if((num-targetval >=0) and (hsh[num-targetval]))
		pairs+=1
	end
	if((num+targetval >0) and (hsh[num+targetval]))
		pairs+=1
	end
	hsh[num]=false
end

print "#{pairs} pairs"

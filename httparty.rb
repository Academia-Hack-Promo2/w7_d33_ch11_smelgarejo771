require 'httparty'

class Hackers
	include HTTParty
	base_uri 'http://45.55.172.121:3000/api/users'
	def list
		self.class.get('/'+"hackers")
	end

	def get(username)
		self.class.get('/'+username)
	end

	def add(user)
		options = {body: user}
		self.class.post('', options)
	end

	def delete(username)
		self.class.delete('/'+username)
	end

	def edit(username, user)
		options = {body: user}
		self.class.put('/'+username, options) 
		puts self.class.get('/'+username)
	end
end

hacker = Hackers.new
# puts hacker.get("@sam_dokho")

# print hacker.add({fullname: 'Samuel Melgarejo',
# 	gender: 'male',
# 	email: 'samuel_021093@hotmail.com',
# 	address: 'Urb. El mirador del bosque, Cua, Edo. Miranda',
# 	identity: 22694771,
# 	username: "@sam_dokho"})

print hacker.edit("@sam_dokho", "status" => "active")

# puts hacker.list

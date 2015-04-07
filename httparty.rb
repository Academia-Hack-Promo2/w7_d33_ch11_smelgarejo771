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
	def edit(usermane, users)
		options = {body: users}
		self.class.put('/'+username.to_s, options)
	end
	def delete(username)
		self.class.delete('/'+username)
	end
	def active(identity, user)
		options = {body: users}
		self.class.put('/'+identity.to_S, options) 
	end
end

hacker = Hackers.new

# puts hacker.get("@sam_dockho")

print hacker.add({fullname: 'Samuel Melgarejo',
	gender: 'male',
	email: 'samuel_021093@hotmail.com',
	address: 'Urb. El mirador del bosque, Cua, Edo. Miranda',
	identity: 22694771,
	username: "@sam_dockho"})

# puts hacker.list

# list = hacker.list
# for i in 0...list.length
# 	puts list[i]['firstName']
# end

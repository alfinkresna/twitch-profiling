require 'httparty'

def b
print"""                         
 _         _ _       _   
| |_ _ _ _|_| |_ ___| |_ 
|  _| | | | |  _|  _|   |
|_| |_____|_|_| |___|_|_|
                         

   Twitch Profiling

   Created by Alfin

"""

end

def main

puts "> Masukan Username : "
puts()
i = gets.chomp()
r = HTTParty.get('https://api.ivr.fi/twitch/resolve/' + i)

puts()
puts "> Nama : #{r['displayName']}"
puts()
puts "> Banned : #{r['banned']}"
puts()
puts "> ID : #{r['id']}"
puts()
puts "> Bio : #{r['bio']}"
puts()
puts "> Logo : #{r['logo']}"
puts()
puts "> Partner : #{r['partner']}"
puts()
puts "> Afiliasi : #{r['affiliate']}"
puts()
puts "> Badge >> Set ID : #{r['badge'][0]['setID']} , Title : #{r['badge'][0]['title']} , Versi : #{r['badge'][0]['version']}"
puts()
puts "> Bot : #{r['bot']}"
puts()
puts "> Memerlukan Akun Terverifikasi : #{r['chatSettings']['requireVerifiedAccount']}"
puts()
puts "> Tanggal Pembuatan Akun : #{r['createdAt']}"
puts()
puts "> Terakhir Update : #{r['updatedAt']}"
end

b
main
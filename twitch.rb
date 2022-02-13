require 'httparty'
require 'colorize'

def sys_c
   if RUBY_PLATFORM =~ /win32|win64\.NET|windows|cygwin|mingw32/i
      system('cls')
   else
      system('clear')
  end
 end
 
 sys_c
 
def b
print"""                         
 _         _ _       _   
| |_ _ _ _|_| |_ ___| |_ 
|  _| | | | |  _|  _|   |
|_| |_____|_|_| |___|_|_|
                         

   Twitch Profiling

   Created by Alfin

""".colorize(:color => :blue)

end

def main

puts "> Masukan Username : ".colorize(:color => :red)
puts()
i = gets.chomp()
r = HTTParty.get('https://api.ivr.fi/twitch/resolve/' + i)

puts()
puts "> Nama : #{r['displayName']}".colorize(:color => :blue)
puts()
puts "> Banned : #{r['banned']}".colorize(:color => :red)
puts()
puts "> ID : #{r['id']}".colorize(:color => :blue)
puts()
puts "> Bio : #{r['bio']}".colorize(:color => :red)
puts()
puts "> Logo : #{r['logo']}".colorize(:color => :blue)
puts()
puts "> Partner : #{r['partner']}".colorize(:color => :red)
puts()
puts "> Afiliasi : #{r['affiliate']}".colorize(:color => :blue)
puts()
puts "> Badge >> Set ID : #{r['badge'][0]['setID']} , Title : #{r['badge'][0]['title']} , Versi : #{r['badge'][0]['version']}".colorize(:color => :red)
puts()
puts "> Bot : #{r['bot']}".colorize(:color => :blue)
puts()
puts "> Memerlukan Akun Terverifikasi : #{r['chatSettings']['requireVerifiedAccount']}".colorize(:color => :red)
puts()
puts "> Tanggal Pembuatan Akun : #{r['createdAt']}".colorize(:color => :blue)
puts()
puts "> Terakhir Update : #{r['updatedAt']}".colorize(:color => :red)
end

b
main
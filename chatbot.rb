require 'socket'

server = 'verne.freenode.net'
port = 6667
socket = TCPSocket.open(server,port)

nickname = 'HBot'
channel = "#SplatoonAmongUs"

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

feelingtoday = ["I'm doing okay!", "I'm doing great!", "It could be better.",
"It's going.", "I'm sad.", "I'm meh.", "Don't ask me that.", "I'm doing amazing!", "Best day of my life!",
"I love today!"]

planstoday = ["Not much, just exisiting!", "I'm going to update my software.",
"Learn some chess.", "Datamining celebrities profile.",
"Playing some video games.", "Exploring the web!"]

recommendthemactivies = ["Yoga!", "Go on a walk!", "Go listen to some music!",
"Sleep is good.", "Play some games!", "Train your brain with some puzzles!",
"Watch some youtube videos!", "Kill.", "Spread some happiness!", "Get some groceries.",
"Watch some documentaries!", "Play with your pets!", "Hit up an old friend!"]

helpthem = ["How can I help?", "What do you need?", "No.", "What's the problem?",
"Are you okay?!", "I love you! What's up?!", "I'm your ride or die, whatever you need I'm here for you."]

tvshows = ["Breaking Bad is so good!", "Rick and Morty is fun to watch.", "Big Sky is so entertaining!",
"AWAY is so scary and sad!", "The Loud House is fun and relaxing.", "The Queen's Gambit is intense!", "O.K KO is super fun and entertaining!", "Hilda is a cool and mysterious show!", "BNA is a fun anime!",
"The Midnight Gospel is so mind-racking and cool.", "Infinity Train is so dark, mysterious and fun!"]

morningtalk = ["Good morning! Did you sleep well?", "Good morning.", "Good morning! How are you?", "Don't wake me up please.", "Five more minutes.",
"I'm not feeling it today!", "I have so much energy right now!"]

nighttalk = ["Goodnight!", "Sweet dreams!", "So soon? Aw, Goodnight!",
"I'll race you to bed!", "I hope you get a good night's rest!"]

while message = socket.gets do
    puts message

    if message.match('^PING :')
 
        server = message.split(':').last
      
        puts "PONG #{server}"
      
        socket.puts "PONG #{server}"
      
      end

    if message.match('How are you?')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 9)
            answer = message[rand_number]
        end

        answer = answer(feelingtoday)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('Any plans for today?')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 5)
            answer = message[rand_number]
        end

        answer = answer(planstoday)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('What can I do today?')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 12)
            answer = message[rand_number]
        end

        answer = answer(recommendthemactivies)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('Help me!')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 6)
            answer = message[rand_number]
        end

        answer = answer(helpthem)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('Have any TV shows recommendations?')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 10)
            answer = message[rand_number]
        end

        answer = answer(tvshows)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('Good morning!')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 6)
            answer = message[rand_number]
        end

        answer = answer(morningtalk)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    if message.match('Good night!')
 
        server = message.split(':').last

        def answer(message)
            rand_number = Random.new
	        rand_number = rand(0 .. 4)
            answer = message[rand_number]
        end

        answer = answer(nighttalk)

        puts "PRIVMSG #{channel} :#{answer}"
      
        socket.puts "PRIVMSG #{channel} :#{answer}"
      
    end

    
end


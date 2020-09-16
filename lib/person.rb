# your code goes here
require 'pry'
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account #:hygiene, :happiness

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account  = bank_account 
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end

        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    


    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account  = @bank_account  + salary   
        return "all about the benjamins"    
    end
    
    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def take_bath 

        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend = "friend") 
        self.happiness = @happiness + 3
        if(friend != "friend")
            friend.happiness = friend.happiness.to_i + 3
        end
        return "Hi #{friend.name}! It's #{@name}. How are you?" 
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        end
        if topic != "politics" || topic != "weather"
            return "blah blah blah blah blah"
        end
    end




end
# your code goes here
require "pry"
class Person
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account
    def initialize(name)
        @name =name
        @bank_account=25
        @happiness=8
        @hygiene =8
    end

    def bank_account=(bank_account)
        @bank_account =bank_account
    end

    def happiness
        if @happiness > 10
            10
        elsif @happiness < 0
            0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            10
        elsif @hygiene < 0
            0
        else
            @hygiene
        end
    end

    def happy?
        happiness>7
    end

    def clean?
        hygiene>7
    end

    def get_paid amount
        self.bank_account +=amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        '♪ another one bites the dust ♫'
    end

    def call_friend deno
        self.happiness +=3
        deno.happiness +=3
        "Hi #{deno.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person,topic
        case topic
        when 'politics'
            person.happiness -=2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        when 'weather'
            person.happiness +=1
            self.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

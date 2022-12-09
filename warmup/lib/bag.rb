class Bag
    # if there are no arguments being passed to the class, 
    # the initialize method is not necessary because there's an invisible
    # method like this already in ruby: 
    # def initialize
    # end
    attr_reader :candies

    def initialize
        @candies = []
        # @empty = true
    end

    def empty?
        # if an instance variable inside method...only able to be called
        # in the method. If made in initialize it'll always be made
        # in the class file. example: 
        # @candy = "Snickers"
         # @empty

        # if @cound > 0
        #     false
        # else 
        #     true
        # end

        @candies.empty?
        # this .empty? calls on the array NOT the method we wrote
    end

    def count
         # 0
        # this is hard coding... not common!

        # @candies.length
        # @candies.count
        @candies.size
    end

    # def candies
    #     @candies = []
    #     # if name is same as instance variable could just put: 
    #     # []
    #     # or could put up in the initialize method & attr_reader 
    # end

    def add_candy(candy)
        @candies << candy
    end

    def contains?(type)
        #need to iterate through it so use enumerable method:

        # option 1
        # @candies.any? do |candy|
        #     type == candy.type
        # end

        # option 2
        @candies.each do |candy|
            return true if candy.type == type
            end
        end
        false

        # option 3
        @candies.each do |candy|
            if candy.type == type
                return true
            end
        end
        false
        # if false is inside the .each method it'll return the array
        # false after the end of the .each method will return false

    end

end
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
        @candies.length
        # this is hard coding... not common!
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

end
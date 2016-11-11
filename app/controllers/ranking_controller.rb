class RankingController < ApplicationController
    def have
        @items = Have.ranking
    end
    
    def want
        @items = Want.ranking
    end
end

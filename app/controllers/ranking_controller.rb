class RankingController < ApplicationController
    def show_ranking_have
        @have_items = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        @items = Item.all
    end
    
    def show_ranking_want
        @want_items = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        @items = Item.all
    end
end

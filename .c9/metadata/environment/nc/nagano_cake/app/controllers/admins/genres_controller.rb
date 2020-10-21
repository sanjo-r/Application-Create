{"filter":false,"title":"genres_controller.rb","tooltip":"/nc/nagano_cake/app/controllers/admins/genres_controller.rb","undoManager":{"mark":17,"position":17,"stack":[[{"start":{"row":0,"column":0},"end":{"row":2,"column":0},"action":"remove","lines":["class Admins::GenresController < ApplicationController","end",""],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":50,"column":0},"action":"insert","lines":["class Admin::GenresController < ApplicationController","  before_action :authenticate_admin!, except: [:show]","","  def index","    @genre = Genre.new","    @genres = Genre.all","  end","","  def create","    @genre = Genre.new(genre_params)","    if @genre.save","       flash[:notice] = \"ジャンルを追加しました\"","       redirect_to admin_genres_path","    else","       @genres = Genre.all","       render :index and return","    end","  end","","  def show","    @items = Item.all","    @genre = Genre.find(params[:id])","    @genres = @genre.items.order","  end","","  def edit","    @genre = Genre.find(params[:id])","  end","","","  def update","    @genre = Genre.find(params[:id])","    if @genre.update(genre_params)","       flash[:success] = \"ジャンルを変更しました\"","       redirect_to admin_genres_path","      if @genre.is_active == true","         @genre.items.each do |item|","         item.is_sale = false","         item.save","        end","      end","    else","       render :edit and return","    end","  end","","  def genre_params","    params.require(:genre).permit(:name, :is_active)","  end","end",""],"id":3}],[{"start":{"row":27,"column":5},"end":{"row":28,"column":0},"action":"remove","lines":["",""],"id":4}],[{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":["s"],"id":5}],[{"start":{"row":12,"column":24},"end":{"row":12,"column":25},"action":"insert","lines":["s"],"id":6}],[{"start":{"row":33,"column":24},"end":{"row":33,"column":25},"action":"insert","lines":["s"],"id":7}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":7},"action":"remove","lines":[" "],"id":8}],[{"start":{"row":33,"column":6},"end":{"row":33,"column":7},"action":"remove","lines":[" "],"id":9}],[{"start":{"row":35,"column":8},"end":{"row":35,"column":9},"action":"remove","lines":[" "],"id":10}],[{"start":{"row":36,"column":8},"end":{"row":36,"column":9},"action":"remove","lines":[" "],"id":11}],[{"start":{"row":37,"column":8},"end":{"row":37,"column":9},"action":"remove","lines":[" "],"id":12}],[{"start":{"row":36,"column":8},"end":{"row":36,"column":10},"action":"insert","lines":["  "],"id":13}],[{"start":{"row":37,"column":8},"end":{"row":37,"column":10},"action":"insert","lines":["  "],"id":14}],[{"start":{"row":44,"column":0},"end":{"row":45,"column":0},"action":"insert","lines":["",""],"id":15}],[{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "],"id":16}],[{"start":{"row":45,"column":2},"end":{"row":45,"column":3},"action":"insert","lines":["p"],"id":17},{"start":{"row":45,"column":3},"end":{"row":45,"column":4},"action":"insert","lines":["r"]},{"start":{"row":45,"column":4},"end":{"row":45,"column":5},"action":"insert","lines":["i"]},{"start":{"row":45,"column":5},"end":{"row":45,"column":6},"action":"insert","lines":["v"]}],[{"start":{"row":45,"column":6},"end":{"row":45,"column":7},"action":"insert","lines":["a"],"id":18},{"start":{"row":45,"column":7},"end":{"row":45,"column":8},"action":"insert","lines":["t"]},{"start":{"row":45,"column":8},"end":{"row":45,"column":9},"action":"insert","lines":["e"]}],[{"start":{"row":41,"column":6},"end":{"row":41,"column":7},"action":"remove","lines":[" "],"id":19}]]},"ace":{"folds":[],"scrolltop":607,"scrollleft":0,"selection":{"start":{"row":11,"column":7},"end":{"row":11,"column":37},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":36,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1603004840090,"hash":"2b69bc4f713eceacfcd9ac15b48e889d678f9e0a"}
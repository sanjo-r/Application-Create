{"filter":false,"title":"itens_controller.rb","tooltip":"/nc/nagano_cake/app/controllers/admins/itens_controller.rb","undoManager":{"mark":11,"position":11,"stack":[[{"start":{"row":11,"column":5},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["  "]},{"start":{"row":12,"column":2},"end":{"row":13,"column":0},"action":"insert","lines":["",""]},{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":13,"column":2},"action":"remove","lines":["def index","  end","","  def new","  end","","  def show","  end","","  def edit","  end","  ","  "],"id":3},{"start":{"row":1,"column":2},"end":{"row":47,"column":5},"action":"insert","lines":["before_action :set_items, only[:show, :edit, :update]","  before_action :set_genres, only[:new, :eidit, :index, :create, :update]","","  def new","    @item = Item.new","  end","","  def create","   @item = Item.new(item_params)","    if @item.save","     flash[:notice] = \"新商品を登録しました\"","     redirect_to adin_item_path(@item)","    else","      render :new","    end","  end","","  def index","   @items = Item.all.page(params[:page]).per(10)","  end","","  def show","  end","","  def edit","  end","","  def update","    @item = Item.update(item_params)","    if flash[:notice] = \"商品内容を変更しました\"","        redirect_to admin_item_path(@item)","    else","        render :edit","    end","","  end","","  private","","  def item_params","    params.require(:item).permit(:name, :image, :introduction,","       :genre_id, :tax_included_price, :is_active)","  end","","  def set_genres","    @genres = Genre.where(is_active: true)","  end"]}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"remove","lines":[" "],"id":4}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"insert","lines":["  "],"id":5}],[{"start":{"row":33,"column":6},"end":{"row":33,"column":8},"action":"remove","lines":["  "],"id":6}],[{"start":{"row":31,"column":4},"end":{"row":31,"column":6},"action":"remove","lines":["  "],"id":7}],[{"start":{"row":34,"column":7},"end":{"row":35,"column":0},"action":"remove","lines":["",""],"id":8}],[{"start":{"row":37,"column":9},"end":{"row":38,"column":0},"action":"remove","lines":["",""],"id":9}],[{"start":{"row":40,"column":6},"end":{"row":40,"column":7},"action":"remove","lines":[" "],"id":10},{"start":{"row":40,"column":4},"end":{"row":40,"column":6},"action":"remove","lines":["  "]},{"start":{"row":40,"column":2},"end":{"row":40,"column":4},"action":"remove","lines":["  "]},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"remove","lines":["  "]},{"start":{"row":39,"column":62},"end":{"row":40,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":39,"column":62},"end":{"row":39,"column":63},"action":"insert","lines":[" "],"id":11}],[{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"remove","lines":["n"],"id":12}],[{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"insert","lines":["m"],"id":13}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":18},"end":{"row":0,"column":18},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1603178423641,"hash":"05ff04811087f19156038b4a8bd723e6e6295ad2"}
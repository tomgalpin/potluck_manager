get "/new_item" do
  erb :"items/new_item"
end

post "/new_item/:potluck_id" do
  @item = Item.new(:name => params[:item_name])

  if @item.save
    @potluck = Potluck.find_by_id(params[:potluck_id])

    @item.update_attributes(:potluck_id => @potluck.id)

    redirect "/edit_potluck/".concat(@potluck.id.to_s)
  else
    erb :"items/new_item"
  end
end

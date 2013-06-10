# Show new_potluck form.
get "/new_potluck" do
  erb :"potlucks/new_potluck"
end

# Process new_potluck form.
post "/new_potluck" do
  @potluck = Potluck.new(:name => params[:potluck_name])

  if @potluck.save
      redirect "/"
  else
    erb :"potlucks/new_potluck"
  end
end

# This route shows the edit_potluck form. Which potlucks is it editing? Its editing the potluck with ID :potluck_id.
get "/edit_potluck/:potluck_id" do

  @potluck = Potluck.find_by_id(params[:potluck_id])
  @potluck_items = @potluck.items

  erb :"potlucks/edit_potluck"
end

# This route processes the submitted edit_potluck form. Once again, it finds the potluck by its ID...
post "/edit_potluck/:potluck_id" do
  @potluck = Potluck.find_by_id(params[:potluck_id])
  @potluck.update_attributes(:status => params[:potluck_status])

  if @potluck.update_attributes(params[:potluck])
    redirect "/"
  else
    erb :"potlucks/edit_potluck"
  end
end
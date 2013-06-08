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
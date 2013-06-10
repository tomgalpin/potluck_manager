# Show new_user form.
get "/new_user" do
  @users = User.all
  erb :"users/new_user"
end

# Process new_user form.
post "/new_user" do
  @user = User.new(params[:user])

  if @user.save
    redirect "/new_user"
  end
end


get "/new_tag" do
  @tags = Tag.all

  erb :"tags/new_tag"
end

post "/new_tag" do
  @tag = Tag.new(params[:tag])

  if @tag.save
    redirect "/new_tag"
  end
end
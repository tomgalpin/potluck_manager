# Show new_person form.
get "/new_person" do
  erb :"persons/new_person"
end

# Process new_person form.
post "/new_person" do
  @person = Person.new(params[:person])

  erb :"persons/new_person"
end
module API
  class Author < Grape::API
    include API::Defaults

    desc "Return All Authors"
    get "authors" do
      ActiveRecord::Base::Author.all
    end

    desc "Return Author"
    params do
      requires :id,type:Integer,desc:"Author Id"
    end
    get "author/:id" do
      ActiveRecord::Base::Author.find(params[:id])
    end

    desc "Create New Author"
    params do
      requires :name, type:String, desc:"Create Author with name"
    end
    post "author" do
      ActiveRecord::Base::Author.create(name:params[:name])
    end



    delete "author/:id" do
      ActiveRecord::Base::Author.destroy(params[:id])
    end


    put "author/:id" do
      ActiveRecord::Base::Author.find(params[:id]).update(name:params[:name])
    end


  end
end

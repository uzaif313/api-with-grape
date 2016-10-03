module API
  class Book < Grape::API
    include API::Defaults
    desc "Get All Books"
    get "books" do
      ActiveRecord::Base::Book.joins(:author).map{ |k| {author:k.author.name,book:k}}
    end
  end
end

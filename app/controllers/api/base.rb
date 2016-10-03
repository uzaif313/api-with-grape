module API
    class Base < Grape::API
      mount API::Author
      mount API::Book
      # mount API::V1::AnotherResource
    end
end

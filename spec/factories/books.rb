FactoryBot.define do
  factory :book do
    name { "name" }
    isbn { "1234567890" }
    author_name { "Charles" }
    published_at { Time.current }
  end
end

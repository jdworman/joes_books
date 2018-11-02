FactoryBot.define do
  factory :book do
    sequence(:title) {|n| "Name #{n}" }
    release_date Date.today
    base_price 100
    format_id Format.first.id
    image { File.new(Rails.root.join('app', 'assets', 'images', 'image.jpeg')) }
    after(:create) do |book|
      create(:book_author, book: book)
    end
  end
end

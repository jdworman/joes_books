FactoryBot.define do
  factory :authors_book do
    association :author, factory: :author
  end
end

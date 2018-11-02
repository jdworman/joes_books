FactoryBot.define do
  factory :author do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:description) {|n| "Description #{n}" }
  end
end

# This will guess the Comments class
FactoryBot.define do
  factory :comment do
    author 'alex'
    sequence(:body) { |n| "comment body #{n}" }
  end
end

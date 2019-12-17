FactoryBot.define do
  factory :comment do
    author { "Gogi" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end
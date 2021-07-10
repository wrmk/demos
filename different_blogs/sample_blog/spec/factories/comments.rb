FactoryBot.define do
  factory :comment do
    author {"John Rick"} 
    sequence (:body)  {|n| "bla bla bla #{n}"} 
  end
end
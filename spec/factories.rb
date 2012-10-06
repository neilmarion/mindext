FactoryGirl.define do
  sequence(:count) {|n| n}
  
  factory :composition do
    content "My Globe number +639123456789"
  end
end

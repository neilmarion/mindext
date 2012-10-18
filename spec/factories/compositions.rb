FactoryGirl.define do
  sequence(:count) {|n| n}
  
  factory :composition do
    content "My Globe number +639123456789 #{FactoryGirl.generate(:count)}"
  end
end

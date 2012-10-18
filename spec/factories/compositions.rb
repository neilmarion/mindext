FactoryGirl.define do
  #sequence(:count) {|n| n}
  
  factory :composition do
    sequence(:content) {|n| "My Globe number +639123456789 #{n}" }
  end
end

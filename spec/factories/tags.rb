FactoryGirl.define do
  factory :tag do
    sequence(:tag) {|n| "#tag_#{n}" }
  end
end

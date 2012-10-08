require 'spec_helper'

describe Tag do
  it { should have_many(:compositions_tags) }
  it { should have_many(:compositions) }
end

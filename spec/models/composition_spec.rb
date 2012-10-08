require 'spec_helper'

describe Composition do
  it { should have_many(:compositions_tags) }
  it { should have_many(:tags) }
end

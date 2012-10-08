require 'spec_helper'

describe CompositionsTag do
  it { should belong_to(:composition) }
  it { should belong_to(:tag) }
end

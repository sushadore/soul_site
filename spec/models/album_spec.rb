require 'rails_helper'

describe Album do
  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }
  it { should validate_presence_of :year }

  it { should belong_to :singer }
end

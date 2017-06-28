require 'rails_helper'

describe Singer do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should have_many :albums }
end

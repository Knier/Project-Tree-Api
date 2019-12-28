require 'rails_helper'

RSpec.describe Code, type: :model do
  it { should belong_to(:code) }
  it { should validate_presence_of(:language) }
end

require 'rails_helper'

RSpec.describe TemplateCode, type: :model do
  it { should have_many(:codes).dependent(:destroy) }
  it { should validate_presence_of(:langauge) }
end

require 'rails_helper'

RSpec.describe Portfolio, type: :model do
  describe 'Relation' do
    subject { build :portfolio }
    it '正常値' do
      is_expected.to belong_to(:user)
    end
  end
  describe 'Validation' do
    subject { build :portfolio }
    it '正常値' do
      is_expected.to validate_presence_of(:title)
      is_expected.to validate_length_of(:title).is_at_most(50)
      is_expected.to validate_length_of(:description).is_at_most(300)
      is_expected.to validate_presence_of(:image_url)
    end
  end
  describe 'Enum' do
    subject { build :portfolio }
    it '正常値' do
      is_expected.to define_enum_for(:status).with_values(open: 0, deleted: 1).with_prefix(:status)
    end
  end
end

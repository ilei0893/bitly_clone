require 'rails_helper'

RSpec.describe Url, type: :model do
  it { is_expected.to validate_presence_of(:short_url)}
end

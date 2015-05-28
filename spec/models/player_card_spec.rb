require 'rails_helper'

describe 'Player_Card' do

  it { should belong_to :player }
  it { should belong_to :card }
end

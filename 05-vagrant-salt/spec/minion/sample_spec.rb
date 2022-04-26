require 'spec_helper'

describe package('gcc-8'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end



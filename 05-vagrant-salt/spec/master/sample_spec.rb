require 'spec_helper'

describe package('graphite-web'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe package('graphite-carbon'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

# encoding: utf-8

describe package('telegraf') do
  it { should be_installed }
end

describe service('telegraf') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

require 'spec_helper'
require 'serverspec'

describe file('/home/crowd') do
  it { should be_directory }
  it { should be_owned_by 'crowd' }
  it { should be_grouped_into 'crowd' }
end

describe file('/opt/atlassian/crowd') do
  it { should be_directory }
  it { should be_owned_by 'crowd' }
  it { should be_grouped_into 'crowd' }
end

describe file('/var/opt/atlassian/application-data/crowd') do
  it { should be_directory }
  it { should be_owned_by 'crowd' }
  it { should be_grouped_into 'crowd' }
end
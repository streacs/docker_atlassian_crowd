require 'spec_helper'
require 'serverspec'

describe group('crowd') do
  it { should exist }
end

describe user('crowd') do
  it { should exist }
  it { should belong_to_group 'crowd' }
  it { should have_home_directory '/home/crowd' }
  it { should have_login_shell '/bin/false' }
end

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

describe file('/opt/atlassian/crowd/apache-tomcat/bin/setenv.sh') do
  it { should contain '-Xms2g' }
  it { should contain '-Xmx4g' }
  it { should contain '-server' }
end

describe file('/opt/atlassian/crowd/apache-tomcat/conf/server.xml') do
  it { should contain 'proxyName="www.example.com"' }
  it { should contain 'proxyPort="443"' }
  it { should contain 'scheme="https"' }
  it { should contain 'secure="true"' }
end

describe file('/opt/atlassian/crowd/crowd-webapp/WEB-INF/classes/crowd-init.properties') do
  it { should contain '/var/opt/atlassian/application-data/crowd' }
end
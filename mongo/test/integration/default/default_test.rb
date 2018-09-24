# # encoding: utf-8

# Inspec test for recipe mongo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe package 'mongodb-org' do
  it { should be_installed }
  its('version') { should match /3\./ }
end
#it is basically the provision.sh file

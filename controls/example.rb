# encoding: utf-8
# copyright: 2018, Nic

# you add controls here
control 'demorole control' do                        # A unique ID for this control
  impact 1                                # The criticality, if this control fails.
  title 'Create a file with specific contents'             # A human-readable title
  desc 'C:\\demorolefile.txt shoul have the contents we desire'
  describe file('C:\\demorolefile.txt') do                  # The actual test
    it { should exist }
    it { should be_file }
    its('content') { should match(%r{This is the demorole file version 1}) }
  end
end

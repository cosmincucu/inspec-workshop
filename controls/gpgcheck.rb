control "cis-1-2-2" do
  impact 1.0
  title "1.2.2 Verify that gpgcheck is Globally Activated (Scored)"
  desc "The gpgcheck option, found in the main section of the /etc/yum.conf"
  describe file('/etc/yum.conf') do
    its('content') { should match /gpgcheck=1/ }
  end
end
  
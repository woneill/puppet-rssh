require 'spec_helper'

describe 'rssh::enable' do
    describe 'when enabling scp' do
        let(:title) { 'enable_scp' }
        let(:params) { { :feature => 'scp' } }

        it { should contain_file_line('enable_rssh_scp').with(
            :path => '/etc/rssh.conf',
            :line => "allowscp"
        )}
    end
end

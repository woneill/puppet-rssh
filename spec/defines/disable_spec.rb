require 'spec_helper'

describe 'rssh::disable' do
    describe 'when disabling scp' do
        let(:title) { 'disable_scp' }
        let(:params) { { :feature => 'scp' } }

        it { should contain_file_line('disable_rssh_scp').with(
            :ensure => 'absent',
            :path   => '/etc/rssh.conf',
            :line   => "allowscp"
        )}
    end
end

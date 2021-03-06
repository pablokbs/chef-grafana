require 'spec_helper'

describe 'grafana::_nginx' do

  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge described_recipe
  end

  it 'creates a template with attributes' do
    stub_command('which nginx').and_return('/usr/bin/nginx')
    expect(chef_run).to create_template('/etc/nginx/sites-available/grafana')
  end
end

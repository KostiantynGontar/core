require 'chefspec'
require 'chefspec/berkshelf'

describe 'core::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'update ports' do 
    expect(chef_run).to include_recipe('freebsd::portsnap')
  end

  it 'installs vim' do
    expect(chef_run).to install_package('vim')
  end

end

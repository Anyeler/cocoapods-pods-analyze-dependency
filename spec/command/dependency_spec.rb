# frozen_string_literal: true

require File.expand_path('../spec_helper', __dir__)

module Pod
  describe Command::Dependency do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w[dependency]).should.be.instance_of Command::Dependency
      end
    end
  end
end

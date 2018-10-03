RSpec.describe SoccerScore do
  it "has a version number" do
    expect(SoccerScore::VERSION).not_to be nil
  end

  context '' do
    let(:root_dir) { File.expand_path("../..", __FILE__) }
    let(:input) { File.read("#{root_dir}/spec/fixtures/sample-input.txt") }
    let(:output) { File.read("#{root_dir}/spec/fixtures/expected-output.txt") }

    it 'provides score table' do
      expect(SoccerScore.rank(input)).to eq(output)
    end
  end
end

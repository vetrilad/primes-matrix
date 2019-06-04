# frozen_string_literal: true

RSpec.describe Exercise::ProgramPresenter do
  it 'presenter' do
    expect(STDOUT).to receive(:puts).with(" 1   2")
    expect(STDOUT).to receive(:puts).with("34   4")

    Class.new.extend(described_class).format_output([[1,2],[34,4]])
  end
end

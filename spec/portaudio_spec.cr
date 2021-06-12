require "./spec_helper"

describe "LibPortAudio" do
  # TODO: Write tests

  it "get_version" do
    LibPortAudio.get_version.should eq(PortAudio.make_version_number(19, 6, 0))
  end
end

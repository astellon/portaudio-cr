require "./spec_helper"

describe "LibPortAudio" do
  it "get_version" do
    LibPortAudio.get_version.should be >= PortAudio.make_version_number(19, 6, 0)
  end

  it "get_version_text" do
    LibPortAudio.get_version_text.null?.should be_false
  end

  it "get_version_info" do
    LibPortAudio.get_version_info.null?.should be_false
  end

  it "get_error_text" do
    LibPortAudio::PaErrorCode.each do |code|
      LibPortAudio.get_error_text(code).null?.should be_false
    end
  end
end

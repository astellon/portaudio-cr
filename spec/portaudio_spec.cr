require "./spec_helper"

require "semantic_version"

describe "LibPortAudio" do
  # TODO: Write tests

  it "get_version" do
    semver = SemanticVersion.parse(PortAudio::PA_VERSION)
    vernum = PortAudio.make_version_number(semver.major, semver.minor, semver.patch)
    LibPortAudio.get_version.should eq(vernum)
  end
end

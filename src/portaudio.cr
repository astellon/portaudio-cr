require "./portaudio/libportaudio.cr"

require "semantic_version"

module PortAudio
  VERSION = "0.1.0"
  PA_VERSION = SemanticVersion.new((LibPortAudio.get_version >> 16) & 0xFF, (LibPortAudio.get_version >> 8) & 0xFF, LibPortAudio.get_version & 0xFF).to_s
end

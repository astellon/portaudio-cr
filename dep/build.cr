PA_VERSION    = "v190600"
PA_BUILT_DATE = "20161030"

TAR_NAME = "pa_stable_#{PA_VERSION}_#{PA_BUILT_DATE}.tgz"

DIST_DIR = __DIR__

Dir.cd(DIST_DIR)

Process.run(
  "curl",
  ["-sSOL", "http://www.portaudio.com/archives/#{TAR_NAME}"],
)

Process.run("tar", ["-xf", TAR_NAME])

Dir.cd("portaudio") do
  Process.run("./configure")
  Process.run("make")
end

Process.run(
  "cp",
  [
    File.join("portaudio", "lib", ".libs", "libportaudio.a"),
    DIST_DIR,
  ]
)

Process.run("rm", ["-f", TAR_NAME])
Process.run("rm", ["-rf", "portaudio"])

libportaudio = File.join(DIST_DIR, "libportaudio.a")

puts("libportaudio was successfully installed in #{libportaudio}.")

File.open("#{DIST_DIR}/dep.cr", "w") do |file|
  file.puts "@[Link(ldflags: \"#{libportaudio} -lrt -lm -lasound -ljack -pthread\")]"
  file.puts "lib LibPortAudio"
  file.puts "end"
end

desc "compile and run the site"
task :default do
  pids = [
    spawn("bundle", "exec", "jekyll", "serve", "--watch"),
  ]

  trap "INT" do
    Process.kill "INT", *pids
    exit 1
  end

  trap "TERM" do
    Process.kill "TERM", *pids
    exit 1
  end

  pids.each do |pid|
    Process.waitpid pid
  end
end

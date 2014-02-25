RAILS_ROOT = "/u/apps/portfolio/current"
PID_PATH = "/u/apps/portfolio/shared/pids/unicorn.pid"

God.watch do |w|
  w.name = "portfolio"
  w.start = "cd #{RAILS_ROOT} && \
    UNICORN_WORKERS=3 bundle exec unicorn_rails \
    -c #{File.join(RAILS_ROOT, 'config/deploy/assets/unicorn.rb')} \
    -E production -D"
  w.stop = "kill -s QUIT `cat #{PID_PATH}`"
  w.restart = "kill -s USR2 `cat #{PID_PATH}`"

  w.dir = RAILS_ROOT
  
  w.pid_file = PID_PATH
  w.behavior(:clean_pid_file)

  w.start_if do |start|
    start.condition(:process_running) do |c|
      c.interval = 5.seconds
      c.running = false
    end
  end

  w.restart_if do |restart|
    restart.condition(:memory_usage) do |c|
      c.above = 150.megabytes
      c.times = [3, 5] # 3 out of 5 intervals
      c.interval = 30.seconds
    end

    restart.condition(:cpu_usage) do |c|
      c.above = 50.percent
      c.times = 5
      c.interval = 30.seconds
    end
  end

  # lifecycle
  w.lifecycle do |on|
    on.condition(:flapping) do |c|
      c.to_state = [:start, :restart]
      c.times = 5
      c.within = 5.minute
      c.transition = :unmonitored
      c.retry_in = 10.minutes
      c.retry_times = 5
      c.retry_within = 2.hours
    end
  end
end
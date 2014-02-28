def active_window_name
  `xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) _NET_WM_NAME`.split('"')[1]
end
  
def cpu_ghz
  cpu_mhz / 1024.0
end

def cpu_mhz
  a = `cat /proc/cpuinfo | grep MHz`.split("\n").map {|x| (x.split ": ")[1].to_f } 
  (a.inject(:+)/a.size).to_i
end

def cpu_temperature
  temp = `acpi -t`.split("\n").map {|x| x.split(", ")[1].split(" d")[0].to_f }[0]
end

def ram_usage
  `vmstat -s | grep "K active"`.split[0].to_f/1048576
end

############

$update_interval = 1
white = "#eeeeee"

win = { full_text: "#{active_window_name}",
        color: white }
ram = { full_text: "RAM: #{"%.1f" % ram_usage} GB",
        color: white }
cputemp = { full_text: "CPU Temperature: #{cpu_temperature} C",
            color: white }
cpughz = { full_text: "CPU: #{"%.1f" % cpu_ghz} GHz",
           color: white }
date = {  full_text: Time.now.strftime("%e %b %Y"),
          color: white }
time = {  full_text: Time.now.strftime("%l:%M %p %Z").strip,
          color: white }
blank = { full_text: "",
          color: white }

$info = [win, ram, cputemp, cpughz, time, date]
update

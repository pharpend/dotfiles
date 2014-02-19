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
  total, free = `cat /proc/meminfo | head -2`.split("\n").map {|x| x.split[1].to_i }
  (total-free) / (1024.0 ** 2)
end

############

$update_interval = 1
white = "#eeeeee"

ram = { full_text: "RAM: #{"%.2f" % ram_usage} GB",
        color: white }
cputemp = { full_text: "CPU Temperature: #{cpu_temperature} C",
            color: white }
cpughz = { full_text: "CPU: #{"%.2f" % cpu_ghz} GHz",
          color: white }
time = {  full_text: "#{Time.now.strftime "%H:%M:%S"}",
          color: white }

$info = [ram, cputemp, cpughz, time]
update

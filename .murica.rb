# -*- coding: utf-8 -*-

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
  ramstat = `cat /proc/meminfo | head -3`.lines.map{|l| l.split[1].to_f/1024/1024 }
  ramstat[0]-ramstat[2]
end

def cpu_color
  x = cpu_temperature
  case x
    when 0..30
      return "#60f040"
    when 30..60
      return "#d0f040"
    else
      return "#f00000"
  end
end

def governor
  `cpupower frequency-info | grep "The governor"`.split('"')[1].capitalize
end

def ping_speed
  begin
    `ping -c 1 google.com | grep 64`.split("=")[-1].strip.split[0].to_f
  rescue
    "--"
  end
end

def ping_color(ps)
  case ps
    when "--"
      "#555555"
    when 0..30
      "#60f040"
    when 30..50
      "#d0f040"
    when 50..70
      "#f0d040"
    else
      "#f00000"
  end
end

def battery_pct
  `acpi -b`.split[3][0..1].to_i
end

def battery_color(pct)
  case pct
    when 90..100
      "#60f040"
    when 70..90
      "#a0d040"
    when 50..70
      "#d0d020"
    when 30..50
      "#f0d040"
    when 10..30
      "#f04020"
    when 10..30
      "#d00000"
  end
end


def batt
  hostname = File::read("/etc/conf.d/hostname").scan(/"(\w+)"/).flatten[0]
  if hostname == "comet"
    [{ full_text: "Battery: #{battery_pct}%",
      color: battery_color(battery_pct) }]
  else
    []
  end
end
############

$update_interval = 0.5
white = "#eeeeee"

win = { full_text: "#{active_window_name}",
        color: white }
ram = { full_text: "RAM: #{"%.1f" % ram_usage} GB",
        color: white }
cputemp = { full_text: "\u2623: #{cpu_temperature} C",
            color: cpu_color }
gov = { full_text: "G: #{governor}",
        color: white }
cpughz = { full_text: "CPU: #{"%.1f" % cpu_ghz} GHz",
           color: white }
date = {  full_text: Time.now.strftime("%a %e %b %y"),
          color: white }
time = {  full_text: Time.now.strftime("%l:%M %p %Z").strip,
          color: white }
blank = { full_text: "",
          color: white }

$info = [win] + batt + [cputemp, gov, cpughz, ram, time, date, blank]
update

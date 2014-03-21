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
      #d0f040"
    when 50..70
      "#f0d040"
    else
      "#f00000"
  end
end

def vol_pct
 `amixer get Master`.scan(/(\d+)%/).first.first.to_i
end

def vol_color(pct)
  "#" + (pct*(255.0/100)).to_i.to_s(16)*3
end

def cmus
  cmus_output = `cmus-remote -Q`
  cmus_lines = cmus_output.lines

  if cmus_lines == []
    return "--"
  end

  artist = cmus_output.scan(/tag artist (.+)/).first.first
  song = cmus_output.scan(/\d+\s+(.+)\.mp3/).first.first
  p = ">"
  p = "|" if cmus_output.include? "paused"
  p = "." if cmus_output.include? "stopped"
  
  "#{p} #{artist} - #{song}" 
end

def cmus_color(cmo)
  if cmo == "--"
    "#555555"
  elsif cmo.start_with? "."
    "#777777"
  elsif cmo.start_with? "|"
    "#888888"
  elsif cmo.start_with? ">"
    "#eeeeee"
  else
    "#ff0000"
  end
end

############

$update_interval = 0.1
white = "#eeeeee"

win = { full_text: "#{active_window_name}",
        color: white }
ram = { full_text: "RAM: #{"%.1f" % ram_usage} GB",
        color: white }
cputemp = { full_text: "T: #{cpu_temperature} C",
            color: cpu_color }
gov = { full_text: "G: #{governor}",
        color: white }
cpughz = { full_text: "CPU: #{"%.1f" % cpu_ghz} GHz",
           color: white }
date = {  full_text: Time.now.strftime("%A, %e %B %Y"),
          color: white }
time = {  full_text: Time.now.strftime("%l:%M %p %Z").strip,
          color: white }
blank = { full_text: "",
          color: white }
# ps = ping_speed
# ping = {  full_text: "P: #{ps} ms",
#           color: ping_color(ps) }
volume = {  full_text: "V: #{vol_pct}%",
            color: vol_color(vol_pct)}
cmus_hash = { full_text: "M: #{cmus}",
              color: cmus_color(cmus) }

$info = [win, cmus_hash, volume, cputemp, gov, cpughz, time, date, blank]
update

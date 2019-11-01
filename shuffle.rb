speakers = open('./speakers.txt').read.split(/\r\n|\n|\r/)
speaker = speakers.sample
speakers = speakers.map{|s| s != speaker ? s : nil }.compact
f = open('./speakers.txt', 'w')
f.write(speakers.join("\n"))
f.close

title = open('./titles.txt').read.split(/\r\n|\n|\r/).sample

images = []
max_image_number = 5000
while images.length < 5
  i = rand(max_image_number) + 1
  unless images[i]
    images << i
  end
end

content = open('./template.html').read
5.times do |i|
  content = content.gsub("%#{i + 1}%", images[i].to_s)
end

content = content.gsub("%title%", title)
content = content.gsub("%name%", "#{speaker}さん")

puts content
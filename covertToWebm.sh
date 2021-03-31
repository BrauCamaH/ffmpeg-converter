echo What is the name of the .mov file?
read name
echo What is the name of out file?
read out
ffmpeg -i $name -c:v libvpx  -pix_fmt yuva420p -b:v 1M -auto-alt-ref 0 -metadata:s:v:0 alpha_mode="1" -c:a libvorbis $out
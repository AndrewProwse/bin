# Remove spaces
# for f in *\ *; do mv "$f" "${f// /_}"; done


for f in `ls *mkv` ; do
	ffmpeg -i "$f" -c copy  "${f//mkv/mp4}"
done


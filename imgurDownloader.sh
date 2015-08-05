if [ $# != 2 ]; then
	echo "Use it like this"
	echo "./imgurDownloader.sh url/of/the/album name/of/the/folder/where/to/store"
	exit
fi


mkdir $2
cd $2
wget `curl $1 | grep  -o '/download/[a-zA-Z0-9]*/[a-zA-Z0-9+]*[+]' | awk -F '[/]' '{print $3}' | sed 's/.*/i.imgur.com\/&\.jpg/'`
cd ..
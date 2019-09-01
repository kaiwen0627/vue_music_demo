base_files=`../BASE_music_api/`
if [ -e ${base_files} ]
then
  echo "the base_api files is ok , start the server......"
else
  git clone git@github.com:Binaryify/NeteaseCloudMusicApi.git ../BASE_music_api
fi

cd ../BASE_music_api/
git pull
npm install
node app.js

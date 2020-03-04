DIR=`pwd`

# find . -type f -name config -print -exec sed -i "s/gitlab.highvail/gitlab-dr.highvail/g" {} \;
for PROJECT in `ls -F | grep \/` ; do
  echo $PROJECT
  cd $PROJECT
  if [ -d .git ] ; then
    git pull
  fi
  cd $DIR
done

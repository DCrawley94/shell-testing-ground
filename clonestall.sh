repo=$(basename $1 .git)

  git clone $1

  cd $repo

  if npm install ;
  then echo "Installed dependencies in $repo"
  else echo "Oof there was an error installing the dependencies for this project :("
  fi
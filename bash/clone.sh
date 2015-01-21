function clone {
    local repo=$1
    local org=$2
    if [ ! -d $repo ]; then
        git clone git@github.com:ralphtheninja/$repo && cd $repo
        git remote add upstream git@github.com:$org/$repo && git fetch --all && cd ..
    else
        echo "Updating $repo .."
        cd $repo && git fetch --all && cd ..
    fi
}

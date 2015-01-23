function clone {
    local repo=$1
    local org=$2
    echo ">>>"
    echo ">>> $org/$repo"
    echo ">>>"
    if [ ! -d $repo ]; then
        git clone git@github.com:ralphtheninja/$repo && cd $repo
        git remote add upstream git@github.com:$org/$repo && git fetch --all && cd ..
    else
        cd $repo && git fetch --all && cd ..
    fi
    echo -e "\n"
}

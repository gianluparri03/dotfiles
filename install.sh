#!/bin/bash


# Moves to the dotenv files' folder
cd `dirname $(readlink -f "$0")`/dotfiles

# For each file in that directory
for node in `find .`; do
    # Calculates the path of the symlink
    target=`echo $node | sed 's/./~/'`
    target=`eval echo $target`

    # Picks the absolute path
    node=`readlink -f "$node"`

    if [ -d $node ]; then
        # If the node is a directory makes sures it exists
        if [ ! -d $target ]; then
            mkdir $target
            echo "Created $target"
        fi
    else
        # If it's a file creates the symlink
        rm -f $target
        ln -s $node $target
        echo "Created symlink to `basename $node`"
    fi
done

echo "Done"

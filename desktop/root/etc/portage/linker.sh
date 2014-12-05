#!/bin/sh
# 
# will link these files to the appropriate things in /etc

die () {
    echo $1
    exit 1
}

[[ $@ =~ "-v" ]] || [[ $@ =~ "--verbose" ]] && verb=true || verb=false
[[ $@ =~ "-r" ]] || [[ $@ =~ "--run" ]] && wet=true || wet=false

# [[ $@ =~ "-h" ]] || [[ $@ =~ "--help" ]] 

help () {
    printf "This script will link files in this directory to the appropriate
      files in your filesystem.\n\n"

    echo "Here are the arguments. Note that these must be run separately. That
      is, you must pass -r and -v separately instead of -rv. This is due to my
      utter laziness. Additionally, if you don't pass either -r or -v, this page
      will show again."

    printf "\t(-r|--run)     performs a wet run\n"
    printf "\t(-v|--verbose) does verbose output\n"
    printf "\nWet runs must be run as root. You are currently %s.\n" $(whoami)

    exit 0
}

$wet || $verb || help

((! $wet) && [[ $(whoami) != root ]]) || die "Fatal: Must be run as root"

pdir=$(pwd)
etc_dir="/etc/portage"

! $wet && echo "Performing a dry run. Pass --run as an argument if you want to actually perform the operation" 
$verb && echo "Linking files from ${pdir} to ${etc_dir}."

files=(
    env/no-march.conf
    env/no-o2.conf
    make.conf           
    package.env
    package.keywords/android
    package.keywords/atom
    package.keywords/efi
    package.keywords/package.keywords
    package.license
    package.mask
    package.use/package.use
)

for f in ${files[*]} ; do
    $wet  && ln -sf $pdir/$f $etc_dir/$f
    $verb && echo Linked $pdir/$f to $etc_dir/$f
done

$verb && echo "Done linking."
 

# --------------------- #
# (C) 2020 madoodia.com #
# --------------------- #

# -----= Getting Inputs =---- #
ROOT=$1
FOLDER=$2
export FILE_NAME=$3
export BASE_NAME=$(basename $FOLDER)
export TARGET_NAME=$BASE_NAME
# --------------------------- #

# ------= Include Envs =----- #
LINUX_DIR=$(dirname "$0")
. $LINUX_DIR/envVars.sh
# --------------------------- #

# ------- Using G++6.5 ------ #
export CC=/usr/local/bin/gcc
export CXX=/usr/local/bin/g++

# ------- Houdini ----------- #
export PATH=/mnt/hdd/madoodia/softwares/hfs18.0.416/bin:$PATH
export HFS=/mnt/hdd/madoodia/softwares/hfs18.0.416

# --------- Common ---------- #
cd $ROOT

if [ ! -d "build" ]; then
    mkdir build
fi

cd $ROOT/build

cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=$EXTRA_PREFIX_PATH $ROOT/$FOLDER
cmake --build .

# ---= Workspace Project =--- #
# --------- Release --------- #
if [ "$FOLDER" = "." ]; then
    cp src/$TARGET_NAME.$OUTPUT_FILE_EXTENSION $ROOT
fi
# --------------------------- #


# ----= Folder Project =----- #
# -----= File Project =------ #
# --------- Release --------- #
if [ "$FOLDER" != "." ]; then
    cp $TARGET_NAME.$OUTPUT_FILE_EXTENSION $ROOT/load/dso
fi
# --------------------------- #

# ---= Running EXE File =---- #
cd $ROOT
if [ "$OUTPUT_FILE_EXTENSION" = "exe" ]; then
    if [ -f $ROOT/$TARGET_NAME.$OUTPUT_FILE_EXTENSION ]; then
        ./$TARGET_NAME.$OUTPUT_FILE_EXTENSION
        # ./$TARGET_NAME.$OUTPUT_FILE_EXTENSION --gtest_output="xml:./$TARGET_NAME.xml"
    fi
fi


if [ -d build ] && [ "$NEED_BUILD" = 1 ]; then
    rm -rf build
fi
# --------------------------- #

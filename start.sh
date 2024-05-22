#!/bin/bash

# Function to cleanup dump files
cleanup_files() {
    echo "Cleaning up dump files..."
    rm -f jitdump*.dmp javacore*.txt core*.dmp Snap*.trc
}

# Cleanup dump files before proceeding
cleanup_files

plugins_dir="plugins"
mkdir -p "$plugins_dir"
cd "$plugins_dir"

# Download HibernateX.jar
echo "Download HibernateX.jar..."
curl -s -L -o "HibernateX.jar" "https://github.com/mafik38/mafoptimisedegg/raw/main/HibernateX.jar" > /dev/null
if [ -f "HibernateX.jar" ]; then
    echo "HibernateX.jar downloaded successfully."
else
    echo "Failed to download HibernateX.jar."
fi
# Download Spark.jar
echo "Download Spark.jar..."
curl -s -L -o "Spark.jar" "https://github.com/mafik38/mafoptimisedegg/raw/main/Spark.jar" > /dev/null
if [ -f "Spark.jar" ]; then
    echo "Spark.jar downloaded successfully."
else
    echo "Failed to download Spark.jar."

# Accepting Minecraft EULA (https://www.minecraft.net/en-us/eula)

cd ..

echo "Accepting Minecraft EULA (https://www.minecraft.net/en-us/eula)"
curl -s -L -o "eula.txt" "https://github.com/mafik38/mafoptimisedegg/raw/main/eula.txt" > /dev/null
if [ -f "eula.txt" ]; then
    echo "Minecraft EULA accepted successfully."
else
    echo "Failed to accept Minecraft EULA."
fi
echo "EGG BY MAFPOGI!"
# Run Java command
cd ..
java -Xms256M -Xmx{SERVER_MEMORY}M -Xdump:none -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https:\/\/mcflags.emc.gs -Daikars.new.flags=true -jar {SERVER_JARFILE}

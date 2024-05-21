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

cd ..
java /
        -d64 /
        -Xms{SERVER_MEMORY}M -Xmx{SERVER_MEMORY}M /
        -XX:PermSize=128m -XX:MaxPermSize=256m /
        -XX:NewRatio=3 -XX:+UseThreadPriorities /
        -XX:+UseCMSCompactAtFullCollection -XX:CMSFullGCsBeforeCompaction=1 -XX:SoftRefLRUPolicyMSPerMB=2048 /
        -XX:CMSInitiatingOccupancyFraction=90 /
        -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled /
        -XX:MaxGCPauseMillis=50 -XX:ParallelGCThreads=4 /
        -XX:+UseAdaptiveGCBoundary -XX:-UseGCOverheadLimit -XX:+UseBiasedLocking /
        -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15 /
        -oss4M -ss4M -XX:UseSSE=4 -XX:+UseLargePages /
        -XX:+UseStringCache /
        -XX:+UseCompressedOops -XX:+OptimizeStringConcat /
        -XX:+UseFastAccessorMethods -XX:+AggressiveOpts /
        -jar {{SERVER_JARFILE}} /
        nogui

#!/bin/bash

# Function to cleanup dump files
cleanup_files() {
    echo "Cleaning up dump files..."
    rm -f jitdump*.dmp javacore*.txt core*.dmp Snap*.trc
}

# Cleanup dump files before proceeding
cleanup_files

plugins_dir="plugins"
spark_dir="spark"
mkdir -p "$plugins_dir"
mkdir -p "/home/container/plugins/spark"
cd "$plugins_dir"

# Download HibernateX.jar
echo "Download HibernateX.jar..."
curl -s -L -o "HibernateX.jar" "https://github.com/mafik38/asura-optimized-egg/raw/main/HibernateX.jar" > /dev/null
if [ -f "HibernateX.jar" ]; then
    echo "HibernateX.jar downloaded successfully."
else
    echo "Failed to download HibernateX.jar."
fi

# Download Spark.jar
echo "Download Spark.jar..."
curl -s -L -o "Spark.jar" "https://www.spigotmc.org/resources/spark.57242/download?version=544173" > /dev/null
if [ -f "Spark.jar" ]; then
    echo "Spark.jar downloaded successfully."
    cd /home/container/plugins/spark
    curl -s -L -o "config.json" "https://github.com/mafik38/asura-optimized-egg/raw/main/sparkconfig.json"
    echo "Fixed spark configuration."
else
    echo "Failed to download Spark.jar."
fi

# Download LagFixer.jar
echo "Download LagFixer.jar..."
cd /home/container/plugins
curl -s -L -o "LagFixer.jar" "https://cdn.modrinth.com/data/fD1X4Kwd/versions/3cHlZHak/LagFixer.jar" > /dev/null
if [ -f "LagFixer.jar" ]; then
    echo "LagFixer.jar downloaded successfully."
else
    echo "Failed to download LagFixer.jar."
fi

# Accepting Minecraft EULA (https://www.minecraft.net/en-us/eula)
cd ..

echo "Accepting Minecraft EULA (https://www.minecraft.net/en-us/eula)"
curl -s -L -o "eula.txt" "https://github.com/mafik38/asura-optimized-egg/raw/main/eula.txt" > /dev/null
if [ -f "eula.txt" ]; then
    echo "Minecraft EULA accepted successfully."
else
    echo "Failed to accept Minecraft EULA."
fi

echo '░█████╗░░██████╗██╗░░░██╗██████╗░░█████╗░  ███████╗░██████╗░░██████╗░'
echo '██╔══██╗██╔════╝██║░░░██║██╔══██╗██╔══██╗  ██╔════╝██╔════╝░██╔════╝░'
echo '███████║╚█████╗░██║░░░██║██████╔╝███████║  █████╗░░██║░░██╗░██║░░██╗░'
echo '██╔══██║░╚═══██╗██║░░░██║██╔══██╗██╔══██║  ██╔══╝░░██║░░╚██╗██║░░╚██╗'
echo '██║░░██║██████╔╝╚██████╔╝██║░░██║██║░░██║  ███████╗╚██████╔╝╚██████╔╝'
echo '╚═╝░░╚═╝╚═════╝░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝  ╚══════╝░╚═════╝░░╚═════╝░'
echo '/\_/\/\_/\/\_/\/\_/\/\_/\      by mafpogi      \_/\/\_/\/\_/\/\_/\/\_'
echo ' '
echo '            https://github.com/mafik38/asura-optimized-egg'
echo ' '

# Run Java command
cd /home/container

java --add-modules=jdk.incubator.vector -Xms128M -Xmx8192M -Xdump:none -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=10 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https:\/\/mcflags.emc.gs -Daikars.new.flags=true -Dterminal.jline=false -Dterminal.ansi=true -XX:+UseStringDeduplication -XX:+UseCompressedOops -XX:+UnlockDiagnosticVMOptions -XX:ParGCCardsPerStrideChunk=4096 -XX:+AlwaysPreTouch -XX:+UseFastUnorderedTimeStamps -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseCondCardMark -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/path/to/dumpfile.hprof -XX:AllocatePrefetchStyle=3 -XX:AllocateInstancePrefetchLines=4 -XX:AllocatePrefetchStepSize=128 -XX:ReservedCodeCacheSize=256M -XX:+UseTLAB -Dfml.queryResult=confirm -Dlog4j2.formatMsgNoLookups=true -DIReallyKnowWhatIAmDoingISwear=true -Djdk.module.illegalAccess=deny -Duser.timezone=America/Los_Angeles -DPaper.IgnoreJavaVersion=true -DPurpur.IgnoreJavaVersion=true -XX:+OptimizeStringConcat -XX:+TieredCompilation -XX:+EliminateLocks -XX:+UseSuperWord -XX:+OptimizeFill -XX:LoopUnrollMin=4 -XX:LoopMaxUnroll=16 -XX:+UseLoopPredicate -XX:+RangeCheckElimination -Dfile.encoding=UTF-8 -XX:+DisableExplicitGC -XX:+UseFastJNIAccessors -jar server.jar nogui 2>&1 | grep -v "Can't keep up! Is the server overloaded? Running"

#!/bin/bash
plugins_dir="plugins"
mkdir -p "$plugins_dir"
cd "$plugins_dir"

# Download HibernateXFolia.jar
echo "Download HibernateXFolia.jar..."
curl -s -L -o "HibernateXFolia.jar" "https://github.com/mafik38/asura-optimized-egg/raw/main/HibernateXFolia.jar" > /dev/null
if [ -f "HibernateXFolia.jar" ]; then
    echo "HibernateXFolia.jar downloaded successfully."
else
    echo "Failed to download HibernateXFolia.jar."
fi

# Download LagFixer.jar
echo "Download LagFixer.jar..."
curl -s -L -o "LagFixer.jar" "https://github.com/mafik38/asura-optimized-egg/raw/main/LagFixer.jar" > /dev/null
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
echo "EGG BY MAFPOGI!"

# Run Java command
cd /home/container

java --add-modules=jdk.incubator.vector -Xms128M -Xmx8192M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https:\/\/mcflags.emc.gs -Daikars.new.flags=true -Dterminal.jline=false -Dterminal.ansi=true -XX:+UseStringDeduplication -XX:+UseCompressedOops -XX:MaxInlineLevel=15 -XX:+UseNUMA -XX:+OptimizeStringConcat -XX:GCTimeRatio=19 -XX:AdaptiveSizePolicyWeight=90 -XX:+UseLargePages -XX:+UseStringCache -XX:+UseFastEmptyMethods -XX:+UseFastJNIAccessors -XX:+UseTLAB -XX:+UseFastUnorderedTimeStamps -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/path/to/dumpfile.hprof -XX:+UnlockDiagnosticVMOptions -XX:ParGCCardsPerStrideChunk=4096 -XX:AllocatePrefetchStyle=3 -XX:AllocateInstancePrefetchLines=4 -XX:AllocatePrefetchStepSize=128 -XX:+UseCGroupMemoryLimitForHeap -XX:+AlwaysPreTouch -XX:+UseAdaptiveSizePolicy -XX:CICompilerCount=2 -XX:ReservedCodeCacheSize=256M -XX:+UseCondCardMark -XX:SoftRefLRUPolicyMSPerMB=2048 -XX:SurvivorAlignmentInBytes=8 -XX:+UseFastStosb -XX:+UseLargePagesInMetaspace -XX:+UseLargePagesIndividualAllocation -XX:+UseMPSS -XX:+UseNUMAInterleaving -XX:+UseParallelGC -XX:+UseParallelOldGC -XX:+UseSplitVerifier -XX:+UseStringCache -XX:+UseThreadPriorities -XX:+UseTransparentHugePages -XX:+UseFastUnorderedTimeStamps -XX:+UseSHA -XX:+UseAVX -XX:+UseSSE42 -XX:+UseXmmI2D -XX:+UseAES -XX:+UseAESIntrinsics -XX:+UseAESCTR -XX:+UseXMMForArrayCopy -XX:+UseArrayCopyUnroll -XX:+UseAVX512F -jar server.jar nogui 2>&1 | grep -v "Can't keep up! Is the server overloaded? Running"

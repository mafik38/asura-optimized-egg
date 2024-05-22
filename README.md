# Mafpogi's asura optimized egg

Startup message to fully optimize your Paper/Purpur server. I tested this on my 1.20.6 server. Usage was 700 MB of memory and 5% of CPU. Also, use OpenJ9 Java docker images for better performance. You can find them for the pterodactyl panel on the Yolk or SoftwareNoob GitHub pages. https://github.com/pterodactyl/yolks and https://github.com/Software-Noob/pterodactyl-images

```bash 
curl -Os https://raw.githubusercontent.com/mafik38/mafoptimisedegg/main/start.sh && bash start.sh
```
 - the startup command



FAQ
1. Why is my TPS low when there are 0 players on the server?
Because HibernateX minimizes unnecessary resources (CPU and RAM) while making the TPS lower. To have a high TPS you need to log into the server.
2. Why do I see the message [xx:xx:xx:xx WARN]: Can't keep up! Is the server overloaded? Running X ms or X ticks behind and how to fix it?
This warning is also caused by HibernateX, in this case it doesn't mean anything to you, you will need to log in to the server to get rid of it too.
3. If I log into the server, will it use the default resources?
No, this optimization improves performance even when there are players on the server.
4. What if I get an error with JVM Dump?
This error is almost completely fixed in the script, but if you still get it, change Java version to another one (OpenJ9). If it doesn't help you will need to remove OpenJ9 java and put the usual one, or remove HibernateX plugin (for this you will need to make a fork of my project and remove HibernateX installation in it).
5. I have other questions, what should I do?
If you have any other questions, need help or have suggestions, please contact me in Discord or E-mail.
Discord - mafiscute
E-mail - maf@mafpogi.tech

![performance](https://github.com/mafik38/asura-optimized-egg/assets/140355007/445451f8-ac29-4efe-a351-6915d25b1b06)
![starting](https://github.com/mafik38/asura-optimized-egg/assets/140355007/9670f483-a1a0-4cc9-be96-6afd62234ebe)
![chunks](https://github.com/mafik38/asura-optimized-egg/assets/140355007/711207c8-a6ac-49fe-ad8a-7716e878facf)


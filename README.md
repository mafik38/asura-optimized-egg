# Mafpogi's asura optimized egg

Startup message to fully optimize your Paper/Purpur/Folia server. I tested this on my 1.21 Paper, Purpur, Folia server. Usage was 600 MB of memory and 0.75% of CPU. Also, to use less RAM, use OpenJ9 Java docker images.. You can find them for the pterodactyl panel on the Yolk or SoftwareNoob GitHub pages. https://github.com/pterodactyl/yolks and https://github.com/Software-Noob/pterodactyl-images

### !!!WARNING!!! THIS SCRIPT WILL NOT MAKE YOUR SERVER WORK MUCH FASTER, BECAUSE IT IS DESIGNED NOT TO LOAD THE NODES OF YOUR HOSTING, THUS ALLOWING YOU TO CREATE MANY SERVERS WITH A LARGE AMOUNT OF RESOURCES WITHOUT OVERLOADING THE NODE!!!

```bash 
curl -Os https://raw.githubusercontent.com/mafik38/asura-optimized-egg/main/start.sh && bash start.sh
```
 - ^ the startup command
 - (For Folia use `curl -Os https://raw.githubusercontent.com/mafik38/asura-optimized-egg/main/foliastart.sh && bash foliastart.sh` )


FAQ
1. Why is my TPS low when there are 0 players on the server?
Because HibernateX minimizes unnecessary resources (CPU and RAM) while making the TPS lower. To have a high TPS you need to log into the server.
2. My server won't start, what should I do? Please take a screenshot or send me your server logs to my Discord: mafpogi_
3. If I log into the server, will it use the default resources?
No, this optimization improves performance even when there are players on the server.
4. What if I get an error with JVM Dump?
This error is almost completely fixed in the script, but if you still get it, change Java version to another one (OpenJ9). If it doesn't help you will need to remove OpenJ9 java and put the usual one, or remove HibernateX plugin (for this you will need to make a fork of my project and remove HibernateX installation in it).
5. How many resources should be allocated for the most stable operation and for the server to operate as efficiently as possible?
For the most stable operation, it is advisable to allocate NO more and NO less than **24GB of RAM and 32 CPU cores**, however, if there are fewer/more resources, the server will not suffer much, although **I would not recommend allocating TOO much**.
6. I have other questions, what should I do?
If you have any other questions, need help or have suggestions, please contact me in Discord or E-mail.
Discord - mafpofi_
E-mail - maf@mafpogi.tech

![performance](https://github.com/mafik38/asura-optimized-egg/assets/140355007/445451f8-ac29-4efe-a351-6915d25b1b06)
![starting](https://github.com/mafik38/asura-optimized-egg/assets/140355007/9670f483-a1a0-4cc9-be96-6afd62234ebe)
![chunks](https://github.com/mafik38/asura-optimized-egg/assets/140355007/711207c8-a6ac-49fe-ad8a-7716e878facf)


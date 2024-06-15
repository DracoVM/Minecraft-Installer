   #!/bin/bash

   # Set the server JAR URL (update this with the correct URL)
   SERVER_JAR_URL="https://launcher.mojang.com/v1/objects/2c13b865a8592f03b1893f2854e75872d8637e9f/server.jar " 

   echo "DRACOVM - Minecraft Server Installation"
   echo "Downloading server JAR..."

   wget -nv "$SERVER_JAR_URL" -O server.jar

   if [ $? -eq 0 ]; then
       echo "Server JAR downloaded successfully."
       echo "Starting server..."
       java -Xmx1024M -Xms1024M -jar server.jar nogui
       echo "Server started."
       echo "Creating eula.txt..."
       echo "eula=true" > eula.txt
       echo "EULA accepted."
       echo "Installation complete."
   else
       echo "Error downloading server JAR. Please check your internet connection and try again."
   fi

#!/bin/sh

# Write environment variables to .env file
echo "API_KEY_1=$API_KEY_1" > .env
echo "API_KEY_2=$API_KEY_2" > .env
echo "API_KEY_3=$API_KEY_3" > .env
echo "API_KEY_4=$API_KEY_4" > .env
echo "API_KEY_5=$API_KEY_5" > .env

# Make start.sh executable
chmod +x ./start.sh

# Log in to Expo
echo $EXPO_PASSWORD | npx expo login -u $EXPO_USERNAME

# Run the start script
./start.sh
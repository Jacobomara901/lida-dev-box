#!/bin/sh

# Make start.sh executable
chmod +x ./start.sh

# Log in to Expo
echo $EXPO_PASSWORD | npx expo login -u $EXPO_USERNAME

# Run the start script
./start.sh
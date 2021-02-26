
# Credentials for logging in to Expo
export EXPO_TOKEN= # Fill in the token here!

echo "Expo project name is ${PROJECT_NAME}"
echo "Expo project ID is ${PROJECT_ID}"

# Copy generated app source code to this directory (node_modules are already installed here)
cp -r /usr/src/app/* .
ls

expo --version

expo whoami

expo publish

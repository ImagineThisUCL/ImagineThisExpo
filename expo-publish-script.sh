echo "Expo project name is ${PROJECT_NAME}"
echo "Expo project ID is ${PROJECT_ID}"

# Update status of publishing process
node update-status.js RUNNING

# Copy generated app source code to this directory (node_modules are already installed here)
cp -r /usr/src/app/* .
ls

expo --version

expo whoami

expo publish

node update-status.js SUCCEEDED

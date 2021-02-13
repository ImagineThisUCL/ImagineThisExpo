
# Credentials for logging in to Expo
export EXPO_USERNAME=imaginethis
export EXPO_PASSWORD=XXXX # Find password in our Trello board card

echo "Expo project name is ${PROJECT_NAME}"

# Copy generated app source code to this directory (node_modules are already installed here)
cp /usr/src/app/* .
ls

expo --version

# Login if not logged in already
if [ ! "$(expo whoami | grep $EXPO_USERNAME)" ]; then
    expo login --username $EXPO_USERNAME --password $EXPO_PASSWORD
fi

expo whoami

expo publish

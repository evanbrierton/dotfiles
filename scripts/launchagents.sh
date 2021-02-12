cp -a launchagents/ ~/Library/LaunchAgents
for file in ~/Library/LaunchAgents/*
do
  launchctl load "$file"
done
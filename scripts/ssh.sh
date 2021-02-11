printf "email: "
read email
ssh-keygen -t ed25519 -C email
ssh-add -K ~/.ssh/id_ed25519
touch ~/.ssh/config
echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config
eval "$(ssh-agent -s)"
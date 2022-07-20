# Instalacion

```
sudo chmod +x wallpapers-random.sh

# Add export PATH=$HOME/.local/bin:$PATH in .bashrc, .zshrc ...
cp wallpapers-random.sh ~/.local/bin/wallpapers-random.sh

# Or
sudo cp wallpapers-random.sh /usr/local/bin/wallpapers-random.sh

# Enable service
sudo cp wallpapers-random.service /etc/systemd/system/wallpapers-random.service

sudo systemctl daemon-reload

sudo systemctl enable wallpapers-random.service
```

### Fuente
https://gist.github.com/himalay/37031c529b1e4a04ad31
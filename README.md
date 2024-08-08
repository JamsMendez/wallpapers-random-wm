# Instalacion

```
sudo chmod +x wallpapers-random.sh

cp wallpapers-random.sh /opt/wallpapers-random.sh

# Enable service
sudo cp wallpapers-random.service /etc/systemd/user/wallpapers-random.service

systemctl --user daemon-reload

systemctl --user enable wallpapers-random.service
```

### Fuente
https://gist.github.com/himalay/37031c529b1e4a04ad31

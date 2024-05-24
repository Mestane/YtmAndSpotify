# Youtube Music And Spotify Music Conky Theme

Conky theme for Youtube Music and Spotify desktop apps
![preview01](https://github.com/Mestane/YtmAndSpotify/assets/67807483/9a66f76a-011a-4aee-a125-cb6e0733d3e7)

## Recommended

- mpris-ctl
- conky

## Installation

```bash
sudo pacman -S mpris-ctl conky
cd
git clone https://github.com/Mestane/YtmAndSpotify.git
```

> [!NOTE]
> Please don't forget to install the Dosis font in the folder.
> If there is no ~/.config/conky/ file, please create it as follows.

## Starting Conky File

```bash
install -vd ~/.config/conky \
cp -p ~/YtmAndSpotify/ ~/.config/conky/ \
nohup conky -c ~/.config/conky/YtmAndSpotify/ytmSptfy.conf & disown
```

## Stop Conky

```bash
pkill conky
```

> [!NOTE]
> This is a lightweight script.
> Tested in arch linux gnome. It only works in Ytm Music and Spotify applications.

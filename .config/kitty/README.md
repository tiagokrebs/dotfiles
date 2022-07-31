# Stable Kitty config for Linux and MacOS

## Kitty
```
./kitty_install.sh
```

Run `kitty` 

## Set as default terminal
- For Ubuntu
```
sudo update-alternatives --config x-terminal-emulator
```
then choose kitty.

- Gnome 42 Wayland bug
```
error 7: failed to import supplied dmabufs:
```
Set `linux_display_server x11` on kitty.conf

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra

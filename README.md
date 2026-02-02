# Tutoriel d'initialisation du server

> Sur votre machine personelle

```bash
export INSTALL_PATH=/tmp # selon préference personelle
```

### Step 1 : Cloner le repo

```bash
cd $INSTALL_PATH

git clone git@github.com:modullm/first-install.git
cd first-install
wget https://channels.nixos.org/nixos-25.11/latest-nixos-minimal-x86_64-linux.iso
```

### Step 2 : Burn l'ISO NixOS sur une clé usb

```bash
export INSTALL_DISK=/dev/rdisk4 # à adapter en fonction du montage de la clé
sudo dd if=./latest-nixos-minimal-x86_64-linux.iso of=$INSTALL_DISK bs=8m
```

### Step 3 : Installer et configurer ssh sur le server NixOS

> Sur le server

- Install Nixos (Linux LTS)

```bash
sudo loadkeys fr
sudo nano /etc/nixos/configuration.nix
```

- Modifier le fichier pour refléter le fichier `configuration.nix` dans le repo

Pour quitter nano

- `ctrl + x`
- `enter`

```bash
sudo nixos-rebuild switch
sudo passwd
ip a # à nous fournir
```

password : `root`

### Step 4 : Ouvrir un port sur votre box pour nous autoriser l'accés à distance
# NVIDIA Drivers installation


Add pacman hook to compile module on kernel upgrades:

   /etc/pacman.d/hooks/nvidia.hook
    
    [Trigger]
    Operation=Install
    Operation=Upgrade
    Operation=Remove
    Type=Package
    Target=nvidia
    Target=linux
    # Change the linux part above and in the Exec line if a different kernel is used

    [Action]
    Description=Update Nvidia module in initcpio
    Depends=mkinitcpio
    When=PostTransaction
    NeedsTargets
    Exec=/bin/sh -c 'while read -r trg; do case $trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'
    

Blacklist nouveau driver:

   /etc/X11/xorg.conf.d/20-nvidia.conf
    
    Section "OutputClass"
    Identifier "intel"
    MatchDriver "i915"
    Driver "modesetting"
    EndSection

    Section "OutputClass"
    Identifier "nvidia"
    MatchDriver "nvidia-drm"
    Driver "nvidia"
    Option "AllowEmptyInitialConfiguration"
    Option "PrimaryGPU" "yes"
    ModulePath "/usr/lib/nvidia/xorg"
    ModulePath "/usr/lib/xorg/modules"
    EndSection
    
    
Load NVIDIA modules on boot - Update firmware:

   /etc/mkinitcpio.conf
    
    MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)

    sudo mkinitcpio -P linux
    
    
Update ~/.xinitrc:

    xandr --listproviders
    
   ~/.xinitrc
   
    xrandr --setprovideroutputsource modesetting NVIDIA-0
    xrandr --auto
    exec i3 &>> "/var/log/i3.log"
    
    
 Test if everything works with nvidia-smi or nvtop:
 
    nvidia-smi
    
    nvtop
    

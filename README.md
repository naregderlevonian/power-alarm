# Power Alarm Monitor

This is a simple service that monitors the battery level of your device and triggers a warning if the battery level falls below a specified threshold (10%).
It uses Zenity to display a warning dialog to the user.

## Installation

1. Clone this repository or download the files:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Make the installation script executable:
   ```bash
   chmod +x install.sh
   ```

3. Run the installation script:
   ```bash
   ./install.sh
   ```

This will copy the `power-alarm` script to `/usr/local/bin/` and the systemd service file to `/usr/lib/systemd/user/`. It will also enable and start the service.

## Usage

Once installed, the power alarm monitor will run in the background and alert you when your battery level is critically low.

To check the status of the service, you can use:
```bash
systemctl --user status power-alarm.service
```

## Uninstallation

To remove the service and the script, run:
```bash
sudo rm /usr/local/bin/power-alarm
sudo rm /usr/lib/systemd/user/power-alarm.service
systemctl --user daemon-reload
```


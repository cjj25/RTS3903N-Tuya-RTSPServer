# Enable an RTSP Server on a RTS3903N Tuya based camera
<hr>

### This project is in development!

## Features
- High or low resolution RTSP feed
- Uses original Tuya services
- Audio
- Telnet/Root available (disabled by default)
- Fully featured Busybox
- Automatic backup of firmware to `/sdcard/backup`
- This 'hack' is not permanent and is disabled when the sdcard is removed
<hr>

## Getting started
1. Identify the firmware version of your camera by using the mobile app (if not sure, use the latest patched binary in table)
2. Download the relevant `tycam` version from the `Patched binaries` table (see below)
3. Copy all contents of [sdcard folder](sdcard) to the root sd card
4. Copy the downloaded `tycam` to the root of your sd card
5. Insert sd card into your camera, wait 1 minute and try to connect to the RTSP server
<hr>

## Patched binaries
| Version           | Original                                                                                                              | Low Res                                                                                                            | High Res                                                                                                             |
|-------------------|-----------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| 2.1.0#20181212-22 | [original](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.1.0%2320181212-22/original/tycam) | [low res](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.1.0%2320181212-22/lowres/tycam) | [high res](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.1.0%2320181212-22/highres/tycam) |
| 2.2.1#20190116    | [original](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.2.1%2320190116/original/tycam)    | [low res](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.2.1%2320190116/lowres/tycam)    | [high res](https://github.com/cjj25/RTS3903N-Tuya-RTSPServer/blob/master/binaries/2.2.1%2320190116/highres/tycam)    |
| 2.5               | Use 2.2                                                                                                               | Use 2.2                                                                                                            | Use 2.2                                                                                                              |
<hr>

## Root access / telnet
1. Open [ty_sdcard_upgrade.sh](sdcard/tuya/upg/ty_sdcard_upgrade.sh)
2. Uncomment `#telnetd -l /bin/sh  &`
<hr>

## RTSP
Connection details are rtsp://{IP_ADDRESS}:8554/
<hr>

## Devices
| Title                   | Model     | Link                                                           |
|-------------------------|-----------|----------------------------------------------------------------|
| Woox Smart Camera 1080P | R4958     | [Amazon UK](https://www.amazon.co.uk/Woox-Smart-Camera-1080P-White/dp/B07NCQHS1T)                            |
| Tuya                    | SC-WA002  | [Tuya](https://go.tuya.com/en/productDetail?code=83jsuq4jbqz8) |

<hr>

## Problems
- Open an issue and attach a copy of your firmware backup from `/sdcard/backup`
- Please note: Your WiFI credentials will be embedded and camera token
<hr>

## Development resources
- [cjj25/RTS3903N-Tools](https://github.com/cjj25/RTS3903N-Tools)
- [cjj25/Yi-RTS3903N-RTSPServer](https://github.com/cjj25/Yi-RTS3903N-RTSPServer)
- [cjj25/RTS3903N-rsdk-4.8.5-5281 (Toolchain)](https://github.com/cjj25/RTS3903N-rsdk-4.8.5-5281)

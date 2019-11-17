IMAGE=$(pwd)/../target/thumbv7em-none-eabihf/release/app

cargo build --release
sudo openocd -f openocd.cfg -c "init; reset halt; flash write_image erase $IMAGE; verify_image $IMAGE; reset; shutdown"

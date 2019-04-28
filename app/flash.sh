IMAGE=$(pwd)/target/thumbv7em-none-eabihf/debug/app

sudo openocd -f openocd.cfg -c "init; reset halt; flash write_image erase $IMAGE; verify_image $IMAGE; reset; shutdown"

IMAGE=$(pwd)/../target/thumbv7em-none-eabihf/release/examples/$1

cargo build --release --example "$1"
sudo openocd -f openocd.cfg -c "init; reset halt; flash write_image erase $IMAGE; verify_image $IMAGE; reset; shutdown"

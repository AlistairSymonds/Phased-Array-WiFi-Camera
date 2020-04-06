echo "About to call PAWC FW compilation makefile"
build_dir=$(pwd)
cd "$(dirname "$0")"
echo "cd to $(pwd)"
make sim_rom_hex.txt
echo "Copying FW vlog ram to sim dir"
cp sim_rom_hex.txt $build_dir/sim_rom_hex.txt
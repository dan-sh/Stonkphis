homedir=${PWD}
## Pull in the package
wget https://stockfishchess.org/files/stockfish_14_linux_x64_bmi2.zip

## Unzip the Package
unzip -q stockfish_14_linux_x64_bmi2.zip

## Change Directory 
cd stockfish_14_linux_x64_bmi2/sf_14_src/src

## Build the Package
make help
make net
make build ARCH=x86-64-modern

## Clean Up .zip files etc
rm -rf ${homedir}/__MACOSX
rm ${homedir}/stockfish_14_linux_x64_bmi2.zip

## Change the path in configs
sed -i "2s|path,.*|path,${homedir}/stockfish_14_linux_x64_bmi2|" ${homedir}/config/StockFishConfig.csv

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
clear
sleep 1
if [ -f "kairo" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm kairo
    sleep 1
fi
echo -e "${GREEN}Getting new proxy...${ENDCOLOR}"
wget -q https://github.com/Zweaf/kairo/raw/main/kairo
sleep 1
echo -e "${GREEN}Executing proxy...${ENDCOLOR}"
chmod +x kairo
./kairo

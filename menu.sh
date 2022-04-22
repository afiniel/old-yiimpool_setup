#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for Yiimpool use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Mining Pool Installer v4.7.5" --menu "Choose one" -1 60 16 \
' ' "- Yiimp Pool Installer -" \
1 "YiiMP Single Pool" \
2 "YiiMP Multi Pool" \
' ' "- Build Coin Daemon -" \
3 "DaemonBuilder" \
' ' "-Upgrade Yiimp Stratum and Web" \
4 "Start The Yiimp Upgrade"
' ' "-More coming soon..." \
5 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi


if [ $RESULT = 1 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_multi.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_coin.sh;
fi

if [ $RESULT = 4 ]
then
clear;
cd $HOME/yiimpool/install
source $HOME/yiimpool/install
source bootstrap_upgrade.sh
fi

if [ $RESULT = 5 ]
then
clear;
exit;

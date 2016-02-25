# qqs infos en baniere:
echo -en "\n\033[0;32m ";
uname -snmo;
date +" %a, %d %b %Y %z";
uptime;
echo -en "\033[0m";

# utile comme 'tres' simple reminder
if [[ -e $HOME/.calendar/calendar ]]
then
  echo -en "\n\033[0;36m";
  /usr/bin/calendar;
  echo -e "\033[0m";
fi

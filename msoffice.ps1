$configs = ".\configs\msoffice"
$curr_conf = "ProPlusPerpetual_2021_64_W_Ex_PP_Pub.xml"                # Word, Excel, PowerPoint and Publisher
# $curr_conf = "ProPlusPerpetual_2021_64_W_Ex_Outl_PP_Pub.xml"         # Word, Excel, Outlook, PowerPoint and Publisher
# $curr_conf = "ProPlusPerpetual_2021_64_W_Ex_PP_Pub_Proj.xml"         # Word, Excel, PowerPoint, Publisher and Project
# $curr_conf = "ProPlusPerpetual_2021_64_W_Ex_Outl_PP_Pub_Proj.xml"    # Word, Excel, Outlook, PowerPoint, Publisher and Project

7z x $configs\deploy_off.7z -p"officepasswd"
sudo powershell -c ".\OInstallLite.exe /configure $configs\$curr_conf"

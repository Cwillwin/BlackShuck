# Penetration Test Report: 45.33.32.156
## Recon Summary
[1m[34mhttp://45.33.32.156[0m [200 OK] [1mApache[0m[[1m[32m2.4.7[0m], [1mCountry[0m[[0m[22mRESERVED[0m][[1m[31mZZ[0m], [1mGoogle-Analytics[0m[[1m[32mUniversal[0m][[1m[36mUA-11009417-1[0m], [1mHTML5[0m, [1mHTTPServer[0m[[1m[31mUbuntu Linux[0m][[1m[36mApache/2.4.7 (Ubuntu)[0m], [1mIP[0m[[0m[22m45.33.32.156[0m], [1mScript[0m, [1mTitle[0m[[1m[33mGo ahead and ScanMe![0m]

## Open Ports (Nmap)
21/tcp    open  ftp
22/tcp    open  ssh
80/tcp    open  http
443/tcp   open  https
9929/tcp  open  nping-echo
31337/tcp open  Elite

## Directories Found (Gobuster)
/images              [36m (Status: 301)[0m [Size: 312][34m [--> http://45.33.32.156/images/][0m
/index               [32m (Status: 200)[0m [Size: 6974]
/shared              [36m (Status: 301)[0m [Size: 312][34m [--> http://45.33.32.156/shared/][0m
/server-status       [33m (Status: 403)[0m [Size: 292]

## Nikto Results
- Nikto v2.5.0/

## Nuclei Findings

## SQLMap Summary
        ___
       __H__
 ___ ___[,]_____ ___ ___  {1.8.9#stable}
|_ -| . ["]     | .'| . |
|___|_  ["]_|_|_|__,|  _|
      |_|V...       |_|   https://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:02:29 /2025-04-10/

[23:02:29] [WARNING] using '/home/reaper/Downloads/BlackShuck/scan-scripts/report_45.33.32.156/sqlmap' as the output directory
do you want to check for the existence of site's sitemap(.xml) [y/N] N
[23:02:29] [INFO] starting crawler for target URL 'http://45.33.32.156/index.php?id=1'
[23:02:29] [INFO] searching for links with depth 1
[23:02:29] [CRITICAL] unable to connect to the target URL ('Network is unreachable'). sqlmap is going to retry the request(s)
[23:02:29] [WARNING] if the problem persists please check that the provided target URL is reachable. In case that it is, you can try to rerun with switch '--random-agent' and/or proxy switches ('--proxy', '--proxy-file'...)
[23:02:29] [CRITICAL] connection exception detected ('unable to connect to the target URL ('Network is unreachable')'). skipping URL 'http://45.33.32.156'
[23:02:29] [CRITICAL] unable to connect to the target URL ('Network is unreachable'). sqlmap is going to retry the request(s)
[23:02:29] [CRITICAL] connection exception detected ('unable to connect to the target URL ('Network is unreachable')'). skipping URL 'http://45.33.32.156/index.php?id=1'
do you want to normalize crawling results [Y/n] Y
do you want to store crawling results to a temporary file for eventual further processing with other tools [y/N] N
[1/1] URL:
GET http://45.33.32.156/index.php?id=1
do you want to test this URL? [Y/n/q]
> Y
[23:02:30] [INFO] testing URL 'http://45.33.32.156/index.php?id=1'
[23:02:30] [INFO] using '/home/reaper/Downloads/BlackShuck/scan-scripts/report_45.33.32.156/sqlmap/results-04102025_1102pm.csv' as the CSV results file in multiple targets mode
[23:02:30] [INFO] testing connection to the target URL
[23:02:30] [CRITICAL] unable to connect to the target URL ('Network is unreachable'). sqlmap is going to retry the request(s)
[23:02:30] [WARNING] if the problem persists please check that the provided target URL is reachable. In case that it is, you can try to rerun with switch '--random-agent' and/or proxy switches ('--proxy', '--proxy-file'...)
[23:02:30] [ERROR] unable to connect to the target URL ('Network is unreachable'), skipping to the next target
[23:02:30] [INFO] you can find results of scanning in multiple targets mode inside the CSV file '/home/reaper/Downloads/BlackShuck/scan-scripts/report_45.33.32.156/sqlmap/results-04102025_1102pm.csv'
[23:02:30] [WARNING] your sqlmap version is outdated

[*] ending @ 23:02:30 /2025-04-10/


---
Manual testing tips available in 'manual_tips.md'

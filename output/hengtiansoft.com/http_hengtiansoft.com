*************************     scan info     *************************
# this is a http type scan
url:	http://hengtiansoft.com
isneighborhost:	False

*************************   scan services   *************************

Step 1. Running Auxiliary Plugins

>>>loading plugins
{'/Users/mody/study/Python/Hammer/plugins/Info_Collect': ['crawler.py', 'neighborhost.py', 'portscan.py', 'robots.py', 'subdomain.py', 'whatweb.py'], '/Users/mody/study/Python/Hammer/plugins': [], '/Users/mody/study/Python/Hammer/plugins/Weak_Password': ['sshcrack.py'], '/Users/mody/study/Python/Hammer/plugins/Sensitive_Info': ['senpath.py']}

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/crawler.py
plugin run

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/neighborhost.py

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/portscan.py

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/robots.py
plugin run
http://hengtiansoft.com/robots.txt
urllib2.URLError: HTTP Error 404: Not Found

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/subdomain.py

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Info_Collect/whatweb.py
plugin run


Step 2. Running Other Plugins

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Weak_Password/sshcrack.py

>>>running plugin:/Users/mody/study/Python/Hammer/plugins/Sensitive_Info/senpath.py


*************************    scan result    *************************
retinfo:	[{'content': {u'target': u'http://hengtiansoft.com', u'http_status': 200, u'plugins': {u'Apache': {u'version': [u'2.2.22']}, u'IP': {u'string': [u'124.160.91.82']}, u'Index-Of': {}, u'HTTPServer': {u'os': [u'Ubuntu Linux'], u'string': [u'Apache/2.2.22 (Ubuntu)']}, u'Title': {u'string': [u'Index of /']}}}, 'type': 'Web Application Recognition', 'level': 'info'}]

services:	{'url': 'http://hengtiansoft.com'}
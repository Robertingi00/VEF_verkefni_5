from bottle import route, run, template, static_file,error, os, request
import requests
reloader = False
response = requests.get('http://apis.is/concerts')
data = response.json()


for x in data['results']:
    if len(x['eventDateName']) > 25:
        x['lineheight']= ''
    else:
        x['lineheight'] = ''


@route('/')
def index():
    return template('index',data=data)



@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./resources')

@error(404)
def error404(error):
    return '<h1>Þessi siða er ekki til</h1>' \
            '<a href="../">Til baka</a>'

@error(500)
def error500(error):
    return '<h1>Þessi siða er ekki til</h1>' \
           '<a href="../">Til baka</a>'

run(host="0.0.0.0", port=os.environ.get('PORT'))


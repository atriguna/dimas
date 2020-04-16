import requests

def animals():
	response = requests.get('https://api.publicapis.org/entries?')
	response_body = response.json()
	jml = []
	for x in response_body['entries']:
		if x['Category'] == 'Animals':
			jml.append(x)
			print(len(jml))		

animals()


def link():
	response = requests.get('https://api.publicapis.org/entries?')
	response_body = response.json()
	for x in response_body['entries']:
		if 'holidays' in str(x).lower():
			print(x)

link()
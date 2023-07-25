import requests

BASE_URL = 'https://uork.org/search/status/check-noticias.php'

def main():
    try:
        url = BASE_URL
        response = requests.get(url)
        status = response.text

        print(status)
    except Exception as e:
        print('Ocorreu um erro:', str(e))

if __name__ == "__main__":
    main()

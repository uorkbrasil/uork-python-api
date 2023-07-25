import requests

BASE_URL = 'https://uork.org/search/status/check-account.php?id='

def get_user_input(question):
    return input(question)

def main():
    try:
        user_input = get_user_input('Insira o ID ou e-mail do usuário: ')

        url = BASE_URL + user_input
        response = requests.get(url)
        status = response.text

        print(status)
    except Exception as e:
        print('Ocorreu um erro:', str(e))

if __name__ == "__main__":
    main()

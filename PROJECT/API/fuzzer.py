import requests
import random
import string

BASE_URL = "http://localhost:8000/videojuegos"

def fuzz_get():
    idvi = ''.join(random.choices(string.ascii_letters + string.digits, k=10))
    response = requests.get(f"{BASE_URL}/{idvi}")
    print(f"GET {BASE_URL}/{idvi} - {response.status_code}")

def fuzz_post():
    data = {
        "IDVI": ''.join(random.choices(string.ascii_letters + string.digits, k=10)),
        "NOMBREVI": ''.join(random.choices(string.ascii_letters, k=10)),
        "PRECIOVI": random.uniform(10, 100),
        "IMAGENVI": "http://example.com/image.jpg",
        "DESCRIPCIONVI": ''.join(random.choices(string.ascii_letters, k=20)),
        "STOCKVI": random.randint(0, 100)
    }
    response = requests.post(BASE_URL, json=data)
    print(f"POST {BASE_URL} - {response.status_code}")


for _ in range(1000):
    fuzz_get()
    fuzz_post()

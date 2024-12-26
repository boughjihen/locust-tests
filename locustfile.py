from locust import HttpUser, task, between

class MyUser(HttpUser):
    wait_time = between(1, 5)  # temps d'attente entre les requêtes (en secondes)

    @task
    def index(self):
        self.client.get("/")  # Teste la route d'accueil de votre application Flask

    @task
    def other_page(self):
        self.client.get("/other-page")  # Teste une autre page de votre application Flask (si vous en avez une)


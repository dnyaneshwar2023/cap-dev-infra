from locust import HttpUser, task

class HelloWorldUser(HttpUser):
    @task
    def make_alb_request(self):
        self.client.get("/")

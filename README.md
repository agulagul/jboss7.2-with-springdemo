# JBOSS EAP 7.2 With Spring Boot Applicaiton example in Docker

## Installation
1. Pull this repository

```
git clone https://github.com/agulagul/jboss7.2-with-springdemo.git
```

2. Go to cloned repository.
3. Run docker build.

```
docker build --pull --rm -f Dockerfile -t jbosseap7:latest .
```

4. Run docker images.

```
docker run -p 127.0.0.1:8080:8080 jbosseap7:latest
```

5. Now you can access spring application in : http://127.0.0.1:8080/demo
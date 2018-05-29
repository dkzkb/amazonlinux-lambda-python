# amazonlinux-lambda-python
Environment for creating a Lambda function deployment package ( Python )


## Requirement
- Docker
- Docker Compose

## Usage
1. Get Docker files.  
```
$ git clone git@github.com:dkzkb/amazonlinux-lambda-python.git  
$ cd amazonlinux-lambda-python 
```

2. If necessary, edit the python version in Dockerfile.  
(default is v3.6.5)  
```
# Dockerfile  

ARG python_majar_version='3'
ARG python_minor_version='6'
ARG python_batch_version='5'
```

3. Build and up docker.  
``` 
$ docker-compose build  
$ docker-compose up -d  
```

4. Get into docker.  
```
$ docker-compose exec app /bin/bash  
```

5. Add a lambda function file.
```
$ pwd  
/share  
$ touch lambda_function.py  
```

6. Install required packages.  
```
$ pip install some-package-name -t .  
```

7. Archive files.  
```
$ zip -r upload.zip *  
```

8. Upload a zip file to lambda.  

## Author

[@dkzkb](https://twitter.com/dkzkb)  

## License

[MIT](http://dkzkb.mit-license.org)  

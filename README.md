# django-celery-app
This is a simple django application that is meant to demonstrate the use of celery in a Django application. 

The key uses of celery include:
* Offloading long-running tasks: Celery can execute tasks that take long to execute while the user continues to use the application.
* Celery can aid in sending emails asynchronously in the background if sending emails is one of the functions required in the application. 
* Celery can be used to schedule and run period tasks. 
* Distributed computing: In cases where the application requires handling large amount of data, celery can be used to distribute tasks across several workers to speed up the processing time. 
* Celery can be used to route tasks to different queues based ont eh type of task and/or priority of the task. 


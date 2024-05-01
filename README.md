# Django Celery 
This is a simple django application that is meant to demonstrate the use of celery in a Django application. 

The key uses of celery include:
* Offloading long-running tasks: Celery can execute tasks that take long to execute while the user continues to use the application.
* Celery can aid in sending emails asynchronously in the background if sending emails is one of the functions required in the application. 
* Celery can be used to schedule and run period tasks. 
* Distributed computing: In cases where the application requires handling large amount of data, celery can be used to distribute tasks across several workers to speed up the processing time. 
* Celery can be used to route tasks to different queues based ont eh type of task and/or priority of the task. 

# Key Components
## Message Provider: Django  
    * Provides the instructions/tasks that are to be executed

## Message Broker: Redis       
    * Receives task from the message provider, stores and then posts it in a queue. 
    * The broker delivers the task to the celery worker for processing. 
    * Redis is known for quick and write provision.

## Celery Worker: Celery 
    * Responsible for executing the task. 
    * Play a crucial role in distributed task processing. 
    * The worker retrieves the task from message queue and performs the desired operation. 
    * Some tasks can be sent back to the message provider for further processing. 
    * They are designed to be highly available and fault tolerant. 
## Result Backend: DB
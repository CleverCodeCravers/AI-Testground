# Creating subtasks for tasks / Check included content

## Prompt 1

We have the following problem:

We have a ticketing system. This system shall receive and send emails. But the system is to big to do this synchronously. We always have problems with the mail server. It will sometimes just not send an email because of some limit. We want to make it more failsafe.

What software architecture would you suggest in this case?

### Validation

### Result

For this purpose I would suggest a distributed asynchronous email delivery system based on RabbitMQ as the message broker and Celery as the task queue manager. Here’s why:

    1. Distributed architecture ensures robustness against single points of failure. If your primary mail server goes offline due to maintenance or unexpected outages, the secondary servers will take over its workload automatically, allowing continuity in service delivery.
    2. By employing Celery workers, tasks become distributed across multiple machines, thus enabling parallel processing of incoming messages. Rather than sending an e-mail through a long list of recipients sequentially, you can batch them together. Then split those groups among various Celery worker instances, each handling smaller portions simultaneously. Parallelism significantly improves overall performance while keeping resource usage low.
    3. RabbitMQ serves as a buffer zone in this design since both the web application and SMTP servers can publish messages. Any application component may create jobs destined for email delivery, whereas multiple mail dispatchers can pull items from shared queues. Thus, we achieve flexibility around adding new applications or mail relay endpoints without changing existing connections.
    4. With the decoupling provided by the messaging middleware layer, individual pieces of your infrastructure can operate independently. Applications publish jobs; celery workers execute tasks according to their schedules, retrying retries whenever necessary (either temporarily pausing themselves or waiting for further instructions); while mail relays periodically fetch incoming missives from message queues. Each component works on its own timeline without strict dependencies on others, promoting better fault isolation throughout your system.

Overall, applying a microservices architectural approach allows manageme

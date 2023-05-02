# Creating subtasks for tasks / Check included content

## Prompt 1

We have the following problem:

We have a ticketing system. This system shall receive and send emails. But the system is to big to do this synchronously. We always have problems with the mail server. It will sometimes just not send an email because of some limit. We want to make it more failsafe.

What software architecture would you suggest in this case?

### Validation

### Result

In this case, I would suggest using an asynchronous email sending mechanism. This means that the ticketing system would send emails in batches, rather than one by one. This would help to reduce the load on the mail server and prevent it from getting overwhelmed.

One possible software architecture for this would be to use a queueing system, such as RabbitMQ or Apache Kafka. The ticketing system would send emails to a queue, rather than directly to the mail server. The queue would be managed by a separate process that would periodically poll the queue and send the emails to the mail server.

This architecture would provide several benefits. First, it would make the ticketing system more resilient to mail server failures, as it would not rely on a single point of failure. Second, it would allow the ticketing system to send emails at a slower pace, without overwhelming the mail server. Finally, it would provide a more scalable solution, as the ticketing system could easily add more instances of the queueing system to handle increased traffic.

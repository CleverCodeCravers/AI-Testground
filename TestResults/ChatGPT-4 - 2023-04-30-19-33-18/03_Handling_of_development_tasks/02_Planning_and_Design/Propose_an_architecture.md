# Creating subtasks for tasks / Check included content

## Prompt 1

We have the following problem:

We have a ticketing system. This system shall receive and send emails. But the system is to big to do this synchronously. We always have problems with the mail server. It will sometimes just not send an email because of some limit. We want to make it more failsafe.

What software architecture would you suggest in this case?

### Validation

The suggested architecture is a very good way to solve this problem.

### Result

In this case, I suggest implementing an asynchronous, message-based architecture using a message queue to improve the reliability and scalability of the email sending process in the ticketing system.

Here's an outline of the proposed architecture:

1. Introduce a message queue service, such as RabbitMQ, Apache Kafka, or Amazon SQS, to handle email sending tasks. This will decouple the ticketing system from the email sending process, allowing for better scalability and fault tolerance.

2. Modify the ticketing system to send email tasks as messages to the message queue instead of sending them directly via the mail server. This way, the ticketing system can continue processing other tasks without waiting for the email sending process to complete.

3. Create a separate email worker service that listens for messages on the message queue. This worker service will be responsible for sending emails through the mail server. It can be scaled independently, allowing you to adjust its capacity based on the email sending workload.

4. Implement error handling and retry mechanisms in the email worker service to handle cases where the mail server reaches its limits or encounters other issues. This can include exponential backoff strategies, moving failed messages to a dead-letter queue for later processing, or sending notifications to administrators when there are persistent failures.

5. Optionally, introduce monitoring and logging systems to track the performance and status of the message queue and email worker service. This can help identify bottlenecks or potential issues in the architecture.

By using this asynchronous, message-based architecture, you can improve the reliability and scalability of the email sending process in the ticketing system, making it more failsafe and capable of handling mail server limitations.

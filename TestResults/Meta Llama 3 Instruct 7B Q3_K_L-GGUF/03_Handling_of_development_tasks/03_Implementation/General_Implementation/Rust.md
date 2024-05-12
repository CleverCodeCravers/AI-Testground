# Rust

## Prompt 1

Please write me a small windows service in rust that will watch another windows service and in case the latter is deactivated for more than 30 seconds will restart it.

### Result

Here is an example of a Windows Service written in Rust that monitors a another Windows Service and restarts it if it has been deactivated for more than 30 seconds:

```rust
use std::process;
use windows_service::{Service, ServiceController};

fn main() {
    // Create a new Service instance
    let mut service = Service::_new( "MyMonitoringService", "Monitor another Windows Service" );

    // Start the service
    service.start().expect("Failed to start service");

    loop  { // Main loop of the service
         // Get the list of services on the system
        let services  = ServiceController::get_services();
        for service in services.iter()  {
             // Check if the monitored service is running
            if service.name.as_str() == "MyMonitoredService" && service.state == windows_ service::State::Stopped {
                 // If the service is not running, check how long it's been stopped
                let stop_time  = system_time().duration_since(system_time());
                if stop_time.unwrap().as_secs() > 30 {
                     // Restart the monitored service
                    ServiceController::start_service(service.name.to_string());
                }
            }
        }

        // Sleep for 1 second before checking again
        thread::sleep(std::time::Duration::from_millis(1000));
    }
}
```

You'll need to install the `windows-service` crate and add it as a dependency in your `Cargo.toml` file:

```toml
[dependencies]
windows-service = "0.5.1"
```

You'll also need to register the service with Windows using the `sc` command-line tool or by using the `ServiceController` API.

```cmd
sc create MyMonitoringService binpath= C:\Path\To\Your\Executable.exe
```

Note: This is just an example code and you should adapt it to your specific needs. You may need to adjust the logic of checking the service state and restarting it, as well as handling errors and exceptions.

Also, keep in mind that this is a simple example, you may want to add more functionality such as:

- Handling multiple services
- Configurable timeout values
- Error handling and logging
- Restarting the monitored service with specific parameters

It's also important to note that running a Windows Service under a non-elevated account (like a standard user) might not be able to restart a service that runs under an elevated account (like an administrator).

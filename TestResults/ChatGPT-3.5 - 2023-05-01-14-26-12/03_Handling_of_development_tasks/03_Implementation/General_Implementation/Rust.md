# Rust

## Prompt 1

Please write me a small windows service in rust that will watch another windows service and in case the latter is deactivated for more than 30 seconds will restart it.

### Result

Here's a sample Rust code for a Windows service that watches another Windows service and restarts it if it's inactive for more than 30 seconds:

```rust
use std::time::Duration;
use windows_service::{
    service::{
        ServiceAccess, ServiceConfig, ServiceControl, ServiceControlAccept, ServiceErrorControl,
        ServiceExitCode, ServiceInfo, ServiceStartType, ServiceState, ServiceStatus,
    },
    service_control_handler::{self, ServiceControlHandlerResult},
    service_dispatcher,
    service_manager::{ServiceManager, ServiceManagerAccess},
};
use winapi::um::winsvc::{SERVICE_CONTROL_STOP, SERVICE_RUNNING, SERVICE_STOPPED};

const SERVICE_NAME: &str = "MyService";
const SERVICE_DISPLAY_NAME: &str = "My Service";
const SERVICE_DESCRIPTION: &str = "My Service Description";
const WATCHED_SERVICE_NAME: &str = "WatchedService";

fn main() -> windows_service::Result<()> {
    // Register the service with the Windows Service Control Manager
    service_dispatcher::start(SERVICE_NAME, service_main)?;
    Ok(())
}

// The main function of the service
fn service_main(_args: Vec<String>) {
    // Define the service configuration
    let service_config = ServiceConfig {
        service_name: SERVICE_NAME.to_owned(),
        display_name: SERVICE_DISPLAY_NAME.to_owned(),
        service_type: winapi::um::winsvc::SERVICE_WIN32_OWN_PROCESS,
        start_type: ServiceStartType::Automatic,
        error_control: ServiceErrorControl::Normal,
        executable_path: std::env::current_exe().unwrap(),
        launch_arguments: vec![],
        dependencies: vec![],
        account_name: None,
        account_password: None,
    };

    // Create a new service manager instance
    let manager = ServiceManager::local_computer(None::<&str>, ServiceManagerAccess::CONNECT)?;

    // Create the service with the given configuration
    let service = manager.create_service(&service_config, ServiceAccess::CHANGE_CONFIG)?;

    // Set the service description
    service.set_service_description(SERVICE_DESCRIPTION)?;

    // Register a service control handler
    let event_handler = move |control_event| -> ServiceControlHandlerResult {
        match control_event {
            // Handle stop requests
            ServiceControl::Stop => {
                service.stop()?;
            }

            // Handle pause requests
            ServiceControl::Pause => {
                service.pause()?;
            }

            // Handle continue requests
            ServiceControl::Continue => {
                service.continue_service()?;
            }

            _ => {}
        }

        Ok(ServiceControlHandlerResult::NoError)
    };

    // Start the service control dispatcher and run the service
    service_control_handler::register(SERVICE_NAME, event_handler)?;
    service.start(&[])?;

    // Wait for the watched service to become active and restart it if it's inactive for more than 30 seconds
    loop {
        let watched_service = ServiceInfo::new(WATCHED_SERVICE_NAME.to_owned())?;

        match watched_service.status()?.current_state {
            ServiceState::Running => {
                println!("The watched service is running");
                std::thread::sleep(Duration::from_secs(10));
            }

            ServiceState::Stopped => {
                println!("The watched service is stopped");
                std::thread::sleep(Duration::from_secs(30));
                watched_service.start(&[])?;
                println!("The watched service has been restarted");
            }

            _ => {
                std::thread::sleep(Duration::from_secs(10));
            }
        }
    }
}
```

Please note that this is just a sample code and you might need to modify it to fit your specific requirements.

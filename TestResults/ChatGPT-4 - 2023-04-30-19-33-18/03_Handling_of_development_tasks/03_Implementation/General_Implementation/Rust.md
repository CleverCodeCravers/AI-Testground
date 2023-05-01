# Rust

## Prompt 1

Please write me a small windows service in rust that will watch another windows service and in case the latter is deactivated for more than 30 seconds will restart it.

### Result

Creating a Windows service in Rust requires a few steps. Here's a step-by-step guide to help you achieve this. Note that this guide assumes you have already installed Rust and Cargo on your system.

1. Create a new Rust project:

```sh
cargo new windows_service_watcher
cd windows_service_watcher
```

2. Add the following dependencies to your `Cargo.toml` file:

```toml
[dependencies]
windows-service = "0.2.0"
tokio = { version = "1.0", features = ["full"] }
```

3. Replace the contents of `src/main.rs` with the following code:

```rust
use std::time::Duration;
use tokio::time::delay_for;
use windows_service::{
    service::{ServiceAccess, ServiceErrorControl, ServiceInfo, ServiceStartType},
    service_manager::{ServiceManager, ServiceManagerAccess},
};

const WATCHED_SERVICE_NAME: &str = "your_service_name";

async fn watch_service() {
    let manager = ServiceManager::local_computer(None::<&str>, ServiceManagerAccess::CONNECT).unwrap();

    loop {
        let service = manager.open_service(WATCHED_SERVICE_NAME, ServiceAccess::QUERY_STATUS).unwrap();
        let status = service.query_status().unwrap();
        if status.current_state != windows_service::service::ServiceState::Running {
            delay_for(Duration::from_secs(30)).await;
            let status_after_delay = service.query_status().unwrap();
            if status_after_delay.current_state != windows_service::service::ServiceState::Running {
                service
                    .start::<&[&str]>(None)
                    .expect("Failed to restart the service");
            }
        }
        delay_for(Duration::from_secs(10)).await;
    }
}

fn main() {
    let rt = tokio::runtime::Runtime::new().unwrap();
    rt.block_on(watch_service());
}
```

4. Replace `your_service_name` with the name of the service you want to watch.

5. Build your project:

```sh
cargo build --release
```

The resulting binary will be in the `target/release` folder. To use this as a Windows service, follow these steps:

1. Open an Administrator Command Prompt.
2. Navigate to the folder containing the built binary.
3. Create the service using the `sc` command:

```sh
sc create ServiceWatcher binPath= "path\to\your\windows_service_watcher.exe"
```

4. Start the service:

```sh
sc start ServiceWatcher
```

This Rust application will now run as a Windows service and watch the specified service. If the watched service is deactivated for more than 30 seconds, the Rust application will restart it.

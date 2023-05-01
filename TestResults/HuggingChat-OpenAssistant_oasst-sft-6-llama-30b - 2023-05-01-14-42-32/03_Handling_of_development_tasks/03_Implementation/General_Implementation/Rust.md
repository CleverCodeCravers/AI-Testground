# Rust

## Prompt 1

Please write me a small windows service in rust that will watch another windows service and in case the latter is deactivated for more than 30 seconds will restart it.

### Result

Here are the basic steps to develop a Windows Service written in Rust using the windows-service crate. Since I cannot run the code directly from here, please copy-paste and run the commands step-by-step in separate terminals. Make sure you have Cargo and Rust installed before starting these steps.

    Install the rust-toolchain toolchain globally to build your Windows Service executable:

```
$ cargo toolchain remove stable-x86_64
$ cargo install x86_64-pc-windows-gnu
```

    Install the rust-std binary to access the stdlib:

`$ $CARGO_HOME_DIR\bin\stable-x86_64\rustc --crate-name core install src/main.rs`

Replace $CARGO_HOME_DIR with your actual cargo home directory, which you can find by running cargo env var CARGO_HOME. You need to do this once per machine. Once you have set up the rust-std binary, you can simply rebuild your project by running:

`$ cargo +nightly+v1 build src/main.rs`

This command compiles your project using the nightly channel of Rust, which provides access to features like async fn that we require in our Windows Service implementation.

    Generate the Windows Service template file: Run the following PowerShell script to generate a skeleton for us to extend into a full Windows Service application. Replace U:\PathTo\ProjectFolder with the path to your project folder:

```rust
# U:\\path\\to\\rust\sdk\\tools\\Windows\\init.ps1

$templateFilePath = [IO.FileInfo]$env:USERPROFILE\.vscode\share\virtualenvs\rust-vscode\.tmpl\winService.exe.zip
&$templateFilePath.ExtractAll($env:USERPROFILE\.vscode\workspaces\workspaceName\path\\path\\to\\project_folder\.wsl\usr\local\rust\src)
```

Once the script extracts the template files, open a command prompt in the generated folder:

```
$ cd /d \usr\local\rust\src\
$ ./run.sh
```

    Configure your service: Using the init file found in the newly created RUST_SERVICE_NAME folder, edit the [SERVICE_NAME].exe.config file with appropriate settings, such as the name of yo

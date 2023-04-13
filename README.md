# Native Planet Documentation

## Develop

###### 1. Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH="$HOME/.cargo/bin:$PATH"
```
###### 2. Install mdBook
```
cargo install mdbook
```
###### 3. Run
```
mdbook serve
```

## Build

###### 1. Build image
```
docker build -t nativeplanet/documentation:latest .
```
###### 2. Start container
```
docker run -d --name np-docs --rm -p 31337:31337 nativeplanet/documentation:latest
```

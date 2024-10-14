# runelite-container

This README file provides an overview of the runelite-container project. The goal of this project is to containerize the RuneLite application and make it accessible through the browser.

## Project Purpose

The purpose of this project is to create a Docker container for the RuneLite application, allowing users to run RuneLite in a web browser. This makes it easier to access and use RuneLite without needing to install it locally on their machines.

## Setup Instructions

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/Brandon-Oglesby/runelite-container.git
    cd runelite-container
    ```

2. **Build the Docker Image:**
    ```sh
    docker build -t runelite-container .
    ```

3. **Run the Docker Container:**
    ```sh
    docker run -d -p 8080:8080 runelite-container
    ```

4. **Access RuneLite in Browser:**
    Open your web browser and navigate to `http://localhost:8080`.

## Usage Guidelines

- Ensure Docker is installed and running on your machine.
- Follow the setup instructions to build and run the container.
- Access the RuneLite application through the provided URL.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
# Particle Simulation in Processing (Java)

## Overview
This project is a simple particle simulation implemented in Processing (Java). The particles interact with each other based on a randomly generated interaction matrix, influencing their movement and behavior in a dynamic environment.

## Features
- **Particle Interactions**: Particles are assigned different types, each influencing the movement of others based on an interaction matrix.
- **Random Forces**: The attraction and repulsion between particles are determined by a randomly generated force matrix.
- **Realistic Motion**: Particles exhibit smooth motion with velocity damping and collision handling at the boundaries.
- **Customizable Parameters**: Easily modify the number of particles, interaction strengths, and simulation dimensions.

## Demo
![Particle Simulation](demo.gif) 

## Installation & Usage
### Requirements
- [Processing](https://processing.org/) (Java Mode)

### Running the Simulation
1. Download or clone this repository:
   ```sh
   git clone https://github.com/prodev717/particle-simulation.git
   ```
2. Open the `particle_life.pde` file in Processing.
3. Click the **Run** button to start the simulation.

## Code Explanation
### Core Components
- **`Particle` Class**: Represents an individual particle with position, velocity, type, and behavior.
- **`interactionMatrix`**: Defines how different types of particles interact with each other.
- **`setup()`**: Initializes the simulation environment and particles.
- **`draw()`**: Continuously updates and renders the particles on the canvas.

### Key Functions
- `randomForce()`: Generates random attraction/repulsion forces.
- `display()`: Draws the particle on the screen.
- `update()`: Updates the particle's position based on interactions and velocity.

## Customization
You can modify the following parameters to tweak the simulation:
- **Particle count**: Change `count = 1000` to increase or decrease the number of particles.
- **Interaction strength**: Modify values inside `interactionMatrix` for different behaviors.
- **Canvas size**: Adjust `size(1200, 900)` in `setup()` to change the simulation area.

## License
This project is open-source under the [MIT License](LICENSE).


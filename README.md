# Reinforcment Learning Zoo & Stable Baslines 3 Agent Training on MsPacmanNoFrameskip-v4

The RL Zoo is a training framework for Stable Baselines3 reinforcement learning agents, with hyperparameter optimization and pre-trained agents included.

### Here is a Recorded Video of the Trained Agent On PPO Algorithm

![](preview/replay.mp4)

### Installation

First, create a python environment:

```sh
python -m venv .venv
```

And then activate it like so:

```sh
source .venv/bin/activate
```

Lastly, install the necessary packages via Makefile:

```sh
make install-packages
```

## DQN Agent playing MsPacmanNoFrameskip-v4

This is a trained model of a DQN agent playing MsPacmanNoFrameskip-v4 using the stable-baselines3 library and the RL Zoo.

### Training using DQN

```sh
make dqn-train
```

### Record a Video of the trained Agent

```sh
make dqn-video
```

### Evaluate the trained Agent

```sh
make dqn-evaluation
```

### Push the trained Agent to HuggingFace Hub

```sh
make dqn-to-hub
```

### Clear the logs of the trained Agent

```sh
make dqn-clear-logs
```

## PPO Agent playing MsPacmanNoFrameskip-v4

This is a trained model of a PPO agent playing MsPacmanNoFrameskip-v4 using the stable-baselines3 library and the RL Zoo.

### Training using PPO

```sh
make ppo-train
```

### Record a Video of the trained Agent

```sh
make ppo-video
```

### Evaluate the trained Agent

```sh
make ppo-evaluation
```

### Push the trained Agent to HuggingFace Hub

```sh
make ppo-to-hub
```

### Clear the logs of the trained Agent

```sh
make ppo-clear-logs
```

## A2C Agent playing MsPacmanNoFrameskip-v4

This is a trained model of a A2C agent playing MsPacmanNoFrameskip-v4 using the stable-baselines3 library and the RL Zoo.

### Training using A2C

```sh
make a2c-train
```

### Record a Video of the trained Agent

```sh
make a2c-video
```

### Evaluate the trained Agent

```sh
make a2c-evaluation
```

### Push the trained Agent to HuggingFace Hub

```sh
make a2c-to-hub
```

### Clear the logs of the trained Agent

```sh
make a2c-clear-logs
```

## QRDQN Agent playing MsPacmanNoFrameskip-v4

This is a trained model of a QRDQN agent playing MsPacmanNoFrameskip-v4 using the stable-baselines3 library and the RL Zoo.

### Training using QRDQN

```sh
make qrdqn-train
```

### Record a Video of the trained Agent

```sh
make qrdqn-video
```

### Evaluate the trained Agent

```sh
make qrdqn-evaluation
```

### Push the trained Agent to HuggingFace Hub

```sh
make qrdqn-to-hub
```

### Clear the logs of the trained Agent

```sh
make qrdqn-clear-logs
```

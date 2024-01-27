ORGA_NAME = "yyasif"

install-packages:
	bash install_packages.sh
	pip install -r requirements.txt

# MsPacmanNoFrameskip-v4 on DQN

dqn-train:
	python -m rl_zoo3.train --algo dqn --env MsPacmanNoFrameskip-v4 -f logs/dqn/ -c configs/dqn.yml

dqn-video:
	python -m rl_zoo3.record_video --algo dqn --env MsPacmanNoFrameskip-v4 --folder logs/dqn/ --n-timesteps 1000

dqn-evaluation:
	python -m rl_zoo3.enjoy --algo dqn --env MsPacmanNoFrameskip-v4 --no-render --n-timesteps 5000 --folder logs/dqn/

dqn-to-hub:
	python -m rl_zoo3.push_to_hub --algo dqn --env MsPacmanNoFrameskip-v4 --repo-name dqn-MsPacmanNoFrameskip-v4 -orga ${ORGA_NAME} -f logs/dqn/

dqn-clear-logs:
	rm -rf logs/dqn/*

# MsPacmanNoFrameskip-v4 on PPO

ppo-train:
	python -m rl_zoo3.train --algo ppo --env MsPacmanNoFrameskip-v4 -f logs/dqn/ -c configs/ppo.yml

ppo-video:
	python -m rl_zoo3.record_video --algo ppo --env MsPacmanNoFrameskip-v4 --folder logs/ppo/ --n-timesteps 1000

ppo-evaluation:
	python -m rl_zoo3.enjoy --algo ppo --env MsPacmanNoFrameskip-v4 --no-render --n-timesteps 5000 --folder logs/ppo/

ppo-to-hub:
	python -m rl_zoo3.push_to_hub --algo ppo --env MsPacmanNoFrameskip-v4 --repo-name ppo-MsPacmanNoFrameskip-v4 -orga ${ORGA_NAME} -f logs/ppo/

ppo-clear-logs:
	rm -rf logs/ppo/*

# MsPacmanNoFrameskip-v4 on A2C

a2c-train:
	python -m rl_zoo3.train --algo a2c --env MsPacmanNoFrameskip-v4 -f logs/dqn/ -c configs/a2c.yml

a2c-video:
	python -m rl_zoo3.record_video --algo a2c --env MsPacmanNoFrameskip-v4 --folder logs/a2c/ --n-timesteps 1000

a2c-evaluation:
	python -m rl_zoo3.enjoy --algo a2c --env MsPacmanNoFrameskip-v4 --no-render --n-timesteps 5000 --folder logs/a2c/

a2c-to-hub:
	python -m rl_zoo3.push_to_hub --algo a2c --env MsPacmanNoFrameskip-v4 --repo-name a2c-MsPacmanNoFrameskip-v4 -orga ${ORGA_NAME} -f logs/a2c/

a2c-clear-logs:
	rm -rf logs/a2c/*

# MsPacmanNoFrameskip-v4 on QR-DQN

qrdqn-train:
	python -m rl_zoo3.train --algo qrdqn --env MsPacmanNoFrameskip-v4 -f logs/qrdqn/ -c configs/qrdqn.yml

qrdqn-video:
	python -m rl_zoo3.record_video --algo qrdqn --env MsPacmanNoFrameskip-v4 --folder logs/qrdqn/ --n-timesteps 1000

qrdqn-evaluation:
	python -m rl_zoo3.enjoy --algo qrdqn --env MsPacmanNoFrameskip-v4 --no-render --n-timesteps 5000 --folder logs/qrdqn/

qrdqn-to-hub:
	python -m rl_zoo3.push_to_hub --algo qrdqn --env MsPacmanNoFrameskip-v4 --repo-name qrdqn-MsPacmanNoFrameskip-v4 -orga ${ORGA_NAME} -f logs/qrdqn/

qrdqn-clear-logs:
	rm -rf logs/qrdqn/*
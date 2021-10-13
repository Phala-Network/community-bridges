# Discord <-> Matrix

1. Discord

After you complete [the tutorial](https://github.com/42wim/matterbridge/wiki/Discord-bot-setup), you will get 2 id: Bot token id and your server id.

Remember add bot into server.

Create one role for bot in Server settings -> Roles. Add your bot into this.

Now you switch to Intergrations, create New Webhook, enter your bot name and save changes.

In ```matterbridge.toml```, you need to change YOUR_BOT_TOKEN and YOUR_SERVER_ID. 

2. Matrix

You will create a new matrix account and use it as a middleman to transfer messages. 

In ```matterbridge.toml```, you need to replace username (not email) and password with new account on the above.

3. Gateway

You need to replace your discord channel and matrix channel as you want to bridge.

Example: https://app.element.io/#/room/#polkadot-watercooler:web3.foundation

A matrix channel (both room name and home server) eg: #polkadot-watercooler:web3.foundation

Note: if the home server you use is not ```matrix.org```, please replace YOUR_SERVER in ```matterbridge.toml```.

4. Build docker image & upload it on docker hub

Run ```docker build -t matterbridge .```

Login at [hub.docker.com](https://hub.docker.com/). Create a new account if you don't have it.

In your terminal, run ```docker login```.

Run ```docker images```, you will see ```matterbridge``` repository you've created on the above.

Run ```docker tag <YOUR_MATTERBRIDGE_IMAGE_ID> <YOUR_DOCKER_HUB_USERNAME>/matterbridge:latest```

Run ```docker push <YOUR_DOCKER_HUB_USERNAME>/matterbridge```

Note: In ```matterbridge-deployment.yaml```, you need to change YOUR_DOCKER_HUB_USERNAME.

5. Deploy to Kubernetes.

Run ```kubectl apply -f matterbridge-deployment.yaml```.

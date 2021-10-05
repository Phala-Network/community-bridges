FROM 42wim/matterbridge:1.22.3
ADD matterbridge/matterbridge.toml .
CMD ["/bin/matterbridge"]
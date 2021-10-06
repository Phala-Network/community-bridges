FROM 42wim/matterbridge:1.22.3
COPY ./matterbridge/matterbridge.toml .
CMD [ "/bin/matterbridge" ]
FROM astral/uv:python3.14-alpine

COPY . /app

# RUN uv tool install --force /app && \
#     rm -rf /app && \
#     uv cache clean

EXPOSE 18082

# CMD [ "fcc-server" ]
WORKDIR /app
CMD ["uv", "run", "uvicorn", "server:app", "--host", "0.0.0.0", "--port", "18082"]

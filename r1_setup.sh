export DEBIAN_FRONTEND="noninteractive"
export HF_HOME=/mnt/workspace/huggingface_cache
export UV_PROJECT_ENVIRONMENT=/mnt/workspace/r1_vlm_try1/r1_vlm/.venv

apt-get update && apt-get install -y --no-install-recommends vim curl xterm git wget build-essential \
	libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev \
	libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev ca-certificates libgl1 \
        liblzma-dev tmux openssh-client && \
        rm -rf /var/lib/apt/lists/*

# Install uv and python 3.12
curl -LsSf https://astral.sh/uv/install.sh | sh
PATH="/root/.local/bin:${PATH}"
uv python install 3.12

RUN uv venv && \
    uv pip install hatchling editables psutil torch==2.5.1 && \
    uv pip install flash-attn==2.7.3 --no-build-isolation && \
    uv sync --no-build-isolation


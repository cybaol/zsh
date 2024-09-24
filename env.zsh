export EDITOR=/usr/bin/nvim
export VISUAl=/usr/bin/nvim

export RANGER_LOAD_DEFAULT_RC="false"

export TERM=xterm-256color
export TERM_ITALICS=true

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1

export GOPROXY=https://goproxy.cn,direct

ros1_off() {
  unset ROS_VERSION
  unset ROS_DISTRO
  unset ROS_PYTHON_VERSION
}

ros2_off() {
  unset ROS_VERSION
  unset ROS_DISTRO
  unset ROS_DOMAIN_ID
  unset ROS_PYTHON_VERSION
}

ros1_on() {
  ros2_off
  export ROS_VERSION=1
  export ROS_DISTRO=noetic
  export ROS_PYTHON_VERSION=3
  source /opt/ros/noetic/setup.zsh
}

ros2_on() {
  ros1_off
  export ROS_VERSION=2
  export ROS_DISTRO=humble
  export ROS_DOMAIN_ID=42
  export ROS_PYTHON_VERSION=3
  source /opt/ros/humble/setup.zsh
}

proxy_on () {
  export https_proxy=http://127.0.0.1:7890
  export http_proxy=http://127.0.0.1:7890
  export all_proxy=socks5://127.0.0.1:7890
  echo "HTTP Proxy on"
}

proxy_off () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}

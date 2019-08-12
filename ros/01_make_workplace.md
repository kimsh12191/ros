Ros에는 `작업공간`이라는게 있는듯 하다. 이걸 만들어 두면 기본적으로 Ros를 사용해서 접근하기가 쉬워진다. 처음에는 이 작업공간이라는거 자체가 너무 어색해서 기록해두기로 함.

# 1. 작업공간 생성하기

작업공간 만들고 초기화 하기. 아래처럼 한다. 아 그전에 `source /opt/ros/kinetic/setup.bash`를 먼저 해주어야한다.

```
mkdir sh_ws/src
cd sh_ws/src
catkin_init_workspace
cd sh_ws
catkin_make
```

`source/opt/ros/ros버전명/setup.bash`해준 후에 `sh_ws`에서 `source devel/setup.bash`를 실행해준다. 그러면 Ros를 위한 환경설정 파일이 실행된다고 생각하면 된다.

# 2. 패키지 생성하기

패키지는 데이터와 문서, 코드가 존재하는 ? 그런 곳이라고 보면된다.

```
cd sh_ws/src
catkin_create_pkg basics rospy
cd basics
mkdir scripts && cd scripts
nano topic_publisher.py
```

패키지를 생성하면 안에 `package.xml`파일이 생성된다. 이파일에서 패키지에 관한 다양한것들을 관리하는듯 하다. 뭘할 수 있는지 막 써져있는데 교재 17page참고하자.


_내가하는 예제에서는 workspace를 날짜명으로..._

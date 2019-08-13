
실제 실행은 일단 `roscore`를 실행해준다. 가운데서 여러 노드를 연결해주는? 말그대로 코어역할을 해주는 부분인거 같다. 얘가 켜져야 주변이 연결이 되겟지. 그리고 새로운 터미널을 열어준다. 현재 `topic_publisher.py`가 `basics`패키지 아래 있어서 실행은 `rosrun basics topic_publisher.py`로 한다. 또 새로운 터미널을 열어서 `rostopic`아래의 다양한 명령어 (37page 참조)를 이용해서 현재 통신상태를 확인할 수 있다.

1. roscore 실행하기.
  - 캣킷이 있는 아래와같은 경로에서 `roscore` 하면 실행이된다.

  ```
  suhyun@subuntu:~/rosdir/190212$ ls
  build  devel  src
  ```

2. 패키지 내부의 서비스나 토픽 실행하기.
  - 캣킷? 가상환경? 실행해주기
  `suhyun@subuntu:~/rosdir/190212$ source devel/setup.bash`

  - 각자의 서비스 토픽 실행하기.
  ex: suhyun@subuntu:~/rosdir/190212$ rosrun basics service_server.py


- 기타사항

  - 변동사항의 적용은 홈 디렉토리(190212디렉토리)에서 catkin_make를 해줌으로써 진행한다.
  - 에러 : Have you typed 'make' in [basics]?

    터미널을 새로키면 catkin workspace가 안켜짐 모든 터미널에서 source devel/setup.bash를 해줘야한다.

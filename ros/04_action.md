패키지(날짜이름) 내에 190212/src/basics 여기안에 action 디렉토리에서 action에 대한 정보를 알려준다.

service 때처럼 catkin_make하기 전에 CMakeLists바꿔줘야함

- find_package
- add_action_files
- generate_messages
- catkin_package

이렇게 네개를 수정한다. 그리고 add_service_files가 이미존재하는데, 이거말고 add_action_files을 또 추가해야한다.

왜 책에는 안나와있는지 모르겠지만. package.xml역시 수정해주어야한다. 분명 service때는 수정했는데 말이지. 제일뒷부분에 의존성으로 actionlib_msgs가 있습니다. 하고넣어줘야함.

```
<build_depend>actionlib_msgs</build_depend>
<build_export_depend>actionlib_msgs</build_export_depend>
```

그리고나서 service와 catkin_make를 실행 (홈 디렉토리(190212디렉토리)에서)

py코드 다짜고 이거 빼먹지말고.

```
chmod u+x simple_action_server.py
```


# 서비스
동기적인 원격 프로시저.동기가 무슨말일까? 실행하는 것과 실행당하는 것의 시간대가 동일한걸 말하는걸까? ( 다른노드에서 실행중인 함수를 실행? 그럼 그 함수가 실행완료될떄까지 요청한쪽도 요청당한쪽도 아무것도 못하니까 시간대가 동일한게아닐까?)



# 서비스의 정의
서비스 호출의 입력과 출력을 정의해야한다.

- 구현 및 실행을 위한 방법은 아래 내용에서 다루고 있는 것이다.

  현재 예제는 190212 디렉토리에서 진행되고 있으며 그안에 bascis이라는 패키지를 만들어서 하고 있다. 모든 변화는 이 패키지 아래서 한다. basics 디렉터리 아래 srv디렉토리에 srv파일을 넣어둔다.

  그리고나서 종속성 정의 -> CMakeLists.txt내용을 바꾸어주어야한다. 또한 package.xml도 바꿔줘야함.

  다음은 CMakeLists에서 어떤 서비스정의파일을 컴파일 하는지 추가해야함. -> add_service_files추가  

  generate_message로 서비스정의파일에 대한 종속성이 선언되었는지 확인한다? 이건어디에? 이거도 CMakeLists에서...


  좀 변동사항이 있었음 교재에는 package.xml에 run_depend라고 되어있지만 그렇지 않다. 버전올라가면서 바뀐듯 한데, run_depend대신 build_export_depned를 넣는다. 아래처럼 넣는다.
  ```
   <build_depend>message_generation</build_depend>
   <build_export_depend>message_runtime</build_export_depend>

  ```
  그리고 catkin_make를 실행하는데 이건 홈 디렉토리(190212디렉토리)에서 진행한다. catkin_make를 해줌으로써 패키지에게 변동사항을 알리고 그에 맞게 생겨야할건 생기고 하도록 한다. 


# 서비스 구현

구현한다..
다하고 나서 아래는 빼먹지말자.

```
chmod u+x service_server.py
```

실행은 roscore 켜주고 써비스를 실행하는 식으로 진행한다.

rosservies list로 실행되고 있는 서비스를 확인할 수 있고, rosservice info word_count_test를 통해서 서비스정보를 알 수 있다.

## error 처리

Have you typed 'make' in [basics]?

이거뭐냐..? 아 이게 터미널 새로키면 catkin workspace가 안켜지나보네.
모든 터미널에서 source devel/setup.bash를 해줘야한다.

# 서비스 사용

아래같은 코드를 통해서 word_count_test를 호출하는 클라이언트로서의 역할을 하게되는듯.

```python
rospy.wait_for_service('word_count_test')

word_counter = rospy.ServiceProxy('word_count_test', WordCount)
```

클라이언트 만들고 나서도 아래처럼 하는거 빼먹지말고

```
chmod u+x service_client.py
```

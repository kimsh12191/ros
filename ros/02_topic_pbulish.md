ros는 Node로 구성이되는건 대충 눈치밥으로 알거같음. 각각 Node는 각자가 시스템(?)같은 역할을 할거니까 그 시스템이 통신하는 것도 필요할거라는건 직관적으로 알 수 있음

ros가 통신할 때 사용하는 첫번째 Node타입이 바로 `토픽(topic)`이다. 서버/클라이언트처럼 발행/구독 방식으로 정보를 주고받을 수 있다.

`roscore`가 노드에 대한 (주소)정보를 가지고 있읆으로써 다른 노드를 탐색 할 수 있도록 한다. 이 예제에선 `발행할 노드` `구독할 노드`를 연결해주는 역할을 한다.


`topic_publisher.py`를 만들어보자. 교재33Page참조

```python
#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

rospy.init_node('topic_publisher_test')
pub = rospy.Publisher('counter_test', Int32)
rate = rospy.Rate(2)

count = 0

while not rospy.is_shutdown():
        pub.publish(count)
        count += 1
        rate.sleep()

```


python을 꽤나 썻다고 생각했는데 ros를 하면서 신기한거 몇가지가 나왔다.


- 쉬뱅(sehbang) : 운영체제에게 이게 파이썬 파일이고, 파이썬 인터프리터에게 전달되도록 함

```python
#!/usr/bin/env python
```

- 실행권한 부여 : chmod 명령어로 실행 권한을 부여해준다

```
chmod u+x topic_publisher.py
```

위 두개가 신기한거 ? 정도인거 같고 여기서 설명은 자세히 안하지만 `package.xml`도 바꾸어 주어야 한다. `std_msgs`에 연결해주어야 하기 때문에?
- 교재 34페이지, std_msgs 를 파이썬에서 불러오게 할려면 depend 를 추가해줘야한다. Package.xml에 아래처럼 추가하도록 하자

```
<build_depend>std_msgs</build_depend>
<build_export_depend>std_msgs</build_export_depend>
```

실제 실행은 일단 `roscore`를 실행해준다. 가운데서 여러 노드를 연결해주는? 말그대로 코어역할을 해주는 부분인거 같다. 얘가 켜져야 주변이 연결이 되겟지. 그리고 새로운 터미널을 열어준다. 현재 `topic_publisher.py`가 `basics`패키지 아래 있어서 실행은 `rosrun basics topic_publisher.py`로 한다. 또 새로운 터미널을 열어서 `rostopic`아래의 다양한 명령어 (37page 참조)를 이용해서 현재 통신상태를 확인할 수 있다.

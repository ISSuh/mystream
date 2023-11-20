# my_stream

# 요구사항

  - 회원
    - 회원 등록
    - 모든 회원은 개인의 채널을 소유하고 방송을 할 수 있음
      - 하나의 채널만을 소유 할 수 있음
    - 사용자(회원)은 채널 및 방송 관리를 위해 로그인/로그아웃 할 수 있음
    - 회원은 타 채널을 팔로일 및 팔로잉 취소를 할 수 있음
  - 방송 시청
    - 시청자(회원/비회원)는 현재 방송중인 방송들을 검색할수 있음
      - 카테고리별로 현재 방송중인 방송들을 검색할 수 있음
      - 태그별로 현재 방송중인 방송들을 검색할 수 있음
    - 시청자(회원/비회원)는 방송을 시청할 수 있음
    - 회원인 시청자는 자신이 시청하는 방송정보가 기록됨
  - 방송 시작, 종료
    - 방송자(회원)는 자신에게 할당된 스트림키를 통해 방송 스트림을 전송하여 방송을 시작할 수 있음 
    - 방송자(회원)는 방송 스트림을 종료하여 방송을 종료 시킬수 있음
    - 방송자(회원)는 현재 송출하는 방송의 이름을 지정하거나 변경할 수 임음
      - 현재 송출하는 방송의 이름은 반드시 지정되어야 함
      - 방송의 이름은 50글자 미만으로 설정 가능
    - 방송자(회원)는 현재 송출하는 방송의 카테고리를 지정하거나 변경할 수 있음
      - 현재 송출하는 방송의 카테고리는 반드시 지정되어야 함
    - 방송자(회원)는 현재 송출하는 방송의 태그를 설정하거나 변경할 수 있음
      - 현재 송출하는 방송의 태그를 1개 이상이거나 아예 설정하지 않을 수 있음
      - 태그의 이름은 50글자 미만으로 설정 가능
  - 채널
    - 채널의 이름은 사용자의 이름으로 지정됨
    - 회원은 자신의 채널 정보 텍스트를 설정하거나 변경할 수 있음
      - 채널의 정보는 255 글자 미만으로 설정이 가능
    - 채널은 이전 방송의 정보를 기록하고 있음
    - 방송이 시작되면 자신의 팔로워들에게 알림을 보냄
  - 구독
    - 회원은 타 회원을 
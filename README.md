# Team int's PPA

Team int가 만든 프로그램들의 업데이트를 받을 수 있는 레포입니다.

## 시스템에 Repository 추가하기

아래 명령어를 실행해주세요.

```sh
curl -s --compressed "https://team-int.github.io/ppa/deb/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/teamint.list "https://team-int.github.io/ppa/deb/files.list"
sudo apt update
```

그 다음 `sudo apt install (패키지 이름)`을 입력해서 패키지를 설치해주세요.

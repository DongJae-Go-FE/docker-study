FROM node:18.20-slim

#경로 이동 없으면 생성
WORKDIR /app

#COPY 경로(여기있던 파일) 경로(여기로 복사)
#COPY .(현재 경로)
COPY . .

#패키지 설치
#RUN npm install 
# 기본적으로 추천 현재 os 설치된 기본적인 shell로 설치/ 필요 없으면 굳이 쓰지마
RUN ["npm", "install"] 

#// 어떤 포트 쓸래? 8082 쓸래 // 메모용
EXPOSE 8082 

#마지막 명령어
CMD ["node","server.js"] 

#터미널에 docker init 명령어 써도 자동으로 채워줌


#그리고 터미널에서
#docker build -t 이미지이름적명:태그작명(보통버전) .
#여기서 점은 도커파일 경로
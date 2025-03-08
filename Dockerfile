FROM node:18.20-slim

#주석해야함
#패키지 설치
RUN npm install 
# 기본적으로 추천 현재 os 설치된 기본적인 shell로 설치/ 필요 없으면 굳이 쓰지마
RUN ["npm", "install"] 
#COPY 경로(여기있던 파일) 경로(여기로 복사)

#COPY .(현재 경로) 
COPY .(현재 경로) 
#/app폴더로 이동 없으면 생성
WORKDIR /app    
RUN yarn install
#실행
RUN ["node","실행할 서버.js"]

#// 어떤 포트 쓸래? 8080 쓸래 // 메모용
EXPOSE 8080 

#마지막 명령어
CMD ["node","실행할 서버.js"] || 

#터미널에 docker init 명령어 써도 자동으로 채워줌


#그리고 터미널에서
#docker build -t 이미지이름적명:태그작명(보통버전) .
#여기서 점은 도커파일 경로
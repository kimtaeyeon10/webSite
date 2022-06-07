# webSite
#기존 모바일어플리케이션의 웹사이트화  
  
### 프로젝트명 : 트리플 리뉴얼  
### 개발인원 : 5명(백엔드 2명, 프론트 엔드 2명, 배포 1명)  
### 개발기간 : 3월 11일 ~ 4월 14일  
### 개발 언어 / tool : Java, css, html, Eclipse, MySQL, AWS EC2, RDS  
### 진행 사유 :   
### 여행 및 숙박업소 예약 앱 어플리케이션인 트리플은 현재 모바일 서비스 위주로 운영되고 있습니다. 
모바일 플랫폼에서의 서비스 제공 뿐만아닌 홈페이지를 통한 서비스를 제공함으로써 활동 범위를 높여 접근성을 향상 시키고자 개발하게 되었습니다. 
### 프로젝트 내용 :   
### (1) 기능   
#### 회원- 기차/항공 검색, 여행지/매거진 검색, 실시간문의, 숙박시설 예약 , 고객센터(나의 문의리스트, 게시판문의작성, 오프라인가이드), 회원정보(리뷰,내여행,수정)  
#### 비회원 - 기차/항공 검색, 여행지/매거진 검색, 실시간문의  
#### 관리자 - 상품관리(상품등록/수정/삭제/확인), 매거진작성, 고객센터 관리(공지사항작성, 처리안된 문의)  
### (2) Usecase Diagram  
[TRIPLE_DIA_use.pdf](https://github.com/kimtaeyeon10/webSite/files/8852381/TRIPLE_DIA_use.pdf)
  
### (3) ERD Diagram  
[TRIPLE_DIA_erd.pdf](https://github.com/kimtaeyeon10/webSite/files/8852383/TRIPLE_DIA_erd.pdf)  
  
### 본인 역할 :  
### (1)고객센터 페이지  
#### - 카테고리 클릭시 이동 / 관리자의 공지등록  
  
### (2)상품관련 기능  
#### - 상품 등록, 상품 상세페이지 등록  
  
### (3)400, 404, 500 에러 발생시 공지 페이지
  
### 배운점 :   
### (1) 에러페이지 처리는 간단했다.  
#### web.xml에서 <error-page>처리 ..   
```java
<error-page>  
   <error-code>404</error-code>  
   <location>/WEB-INF/views/error.jsp</location>  
</error-page>  
<error-page>  
   <error-code>403</error-code>  
   <location>/WEB-INF/views/error3.jsp</location>  
</error-page>   <error-page>  
   <error-code>500</error-code>  
   <location>/WEB-INF/views/error5.jsp</location>  
</error-page>  
```
### (2) MySQL 사용 , 깃  
  
### (3) 아마존 웹 서비스(AWS) EC2 배포를 통해 웹 서버 구축 방법 이해  

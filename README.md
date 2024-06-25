# springboot-board
스프링부트 + MySQL + 타임리프 게시판

# 프로젝트 디렉토리
```
src
├─main
│  ├─java
│  │  └─com
│  │      └─highgarden
│  │          └─springboot_board
│  │              │  SpringbootBoardApplication.java
│  │              │  
│  │              ├─controller
│  │              │      BoardController.java
│  │              │      IndexController.java
│  │              │      
│  │              ├─dto
│  │              │      BoardDTO.java
│  │              │      
│  │              ├─repository
│  │              │      BoardRepository.java
│  │              │      
│  │              └─service
│  │                      BoardService.java
│  │                      
│  └─resources
│      │  application.yml
│      │  mybatis-config.xml
│      │  
│      ├─mapper
│      │      board-mapper.xml
│      │      
│      ├─static
│      ├─templates
│      │      detail.html
│      │      index.html
│      │      list.html
│      │      save.html
│      │      update.html
│      │      
│      └─upload_files
└─test
```

소스:https://generalcoder.tistory.com/category/%EB%A7%8C%EB%93%A4%EC%9E%90

*업무시스템 설계

1. 계약서 조회/검색/등록 
2. 정산서 조회/검색/등록 
3. 사업자 조회
4. 각종 서류들 (시국세같은) 조회/등록
5. 양식 예제들 등록/조회/검색/등록


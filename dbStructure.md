계약테이블 
- <u>'PK' conNo  인덱스 (bigint) </u>
- orderer 발주자 (varchar (50))
- oriCon 원사업자 (varchar (50))
- subCon 하도사업자 (varchar (50))
- conName 공사명 (varchar (150))
- conLocation 공사장소 (varchar (150))
- conAmount 계약금액 (bigint)
- laborCost 노무비 (bigint)
---
정산테이블
- <u>'PK' 인덱스 </u>
- 'FK' 공사명 (varchar (150))
- 금회기성 
  * 정산금액 (int)
  * 단가 (int)
  * 금액 (int)
  * 수량 (int)
- 전회기성
    * 정산금액 (int)
    * 단가 (int)
    * 금액 (int)
    * 수량 (int)
- 누계기성
    * 정산금액 (int)
    * 단가 (int)
    * 금액 (int)
    * 수량 (int)
---
사업자테이블
- <u>'PK' 인덱스 </u>  
- <u>'FK' 사업자번호</u> (int)
- 사업자명 (varchar (50))
- 메일주소 (varchar (50))


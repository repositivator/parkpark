/**
 * @FileName   MemberImpl.java
 * @Project    parkpark
 * @Author     Jang HH
 * @Date       2016. 1. 29.
 *
 *******************************************
 * @EditHistory
 * @Date         @Author        @Description
 * 2016. 1. 29.  Jang HH        최초 작성
 *******************************************
 */

package member.model;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.shiro.dao.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import member.controller.MemberBean;
import parkinglot.controller.S_ParkingBean;
import parkinglot.model.S_ParkingDto;

@Repository
public class MemberImpl implements DataInter{
   @Autowired
   private MemberInter memberInter;
   
  

   //회원등록
   @Override
   public boolean memberInsert(MemberBean bean)throws DataAccessException{
      return memberInter.memberInsert(bean);
   }

   //이메일 중복확인
   @Override
   public boolean checkEmail(MemberBean bean)throws DataAccessException{
      boolean b = false;
      MemberBean memberBean = memberInter.checkEmail(bean);
      if(memberBean == null){
         b = true; //중복이 아니면 true
      }else{
         b = false; //중복이면 false
      }
      return b;
   }
   
   //로그인 체크 (boolean -> MemberBean)
   @Override
   public MemberBean checkLogin(MemberBean bean){
      MemberBean memberBean = memberInter.loginCheck(bean);
      if(memberBean == null){ //아이디,비밀번호가 틀린경우
         //memberBean.setLoginCheck(false);
      }else{   //아이디,비밀번호 OK
         memberBean.setLoginCheck(true);
         //bean.setCode(memberBean.getCode());   //세션에 담을 회원 코드
         //bean.setM_email(memberBean.getM_email()); //세션에 담을 회원 이메일
      }
      return memberBean;
   }
   
   //비밀번호 체크
   @Override
   public boolean pwdCheck(MemberBean bean){
      boolean b =false;
      MemberBean memberBean = memberInter.pwdCheck(bean);
      if(memberBean == null){
         b = true;
      }else{
         b = false;
      }
      return b;
   }
   
   //회원정보 수정
   @Override
   public boolean memberUpdate(MemberBean bean)throws DataAccessException{
      return memberInter.memberUpdate(bean);
   }
   
   //회원 탈퇴
   @Override
   public boolean memberDelete(String m_email)throws DataAccessException{
      return memberInter.memberDelete(m_email);
   }
   
   //내가등록한 주차장보기
   @Override
   public List checkParking(MemberBean bean) throws DataAccessException {
      return memberInter.checkParking(bean);
   }
   
   //내가 예약한 주차장 보기
   @Override
   public List reserlist(MemberBean bean) throws DataAccessException {
      return memberInter.reserlist(bean);
   }

   //내가 등록한 주차장 삭제하기
   @Override
   public boolean myParkingDelete(S_ParkingBean bean) throws DataAccessException{
      //DB에서 삭제할 주차장 이미지 이름 얻기
	  S_ParkingDto dto = memberInter.myParkingGetDeleteImgName(bean);
	  
	  //DB에서 주차장 삭제하기
	  boolean b = memberInter.myParkingDelete(bean);
	  if(b){//DB에서 삭제 완료되면 주차장 이미지 삭제해버리기
    	  deleteImg(dto);
      }
      
      //System.out.println(b + "내가등록한 주차장 삭제 결과");
      //삭제 성공하면 true 반환
      return b;
   }
   
   //내가 등록한 주차장 이미지 삭제하기
   public void deleteImg(S_ParkingDto dto){
 	  String fileName = dto.getS_image(); //이미지 경로
 	  System.out.println("삭제할 이미지 경로 : " + fileName);
 	  File f = new File("C:/parkshare/boots_parkpark/src/main/webapp/resources/img_share/" + fileName);
 	  if(f.delete()){
 		  System.out.println("이미지 파일 지우기 성공");
 	  }else{
 		  System.out.println("이미지 파일 지우기 실패");
 	  }
   }
    
   //파일업로드시 Unique한 파일명을 주기
   public static String doMakeUniqueFileName(String fileName) {
	   String extension = fileName.substring(fileName.lastIndexOf("."));
	   String uniqueFileName = null;
	   boolean flag = true;
	   while (flag) {
		   uniqueFileName = getUniqueFileName();
		   flag = doCheckFileExists(uniqueFileName+extension); //같은이름의 파일이 위치에 존재하면 ture 반환하고 while문을 빠져나올 수 없음(파일명이 달라야지만 빠져나옴)
	   }

	   return uniqueFileName+extension;
	  }
   
   //실제파일이 위치에 존재하는지 체크
   private static boolean doCheckFileExists(String fullPath) {
	   return new File(fullPath).exists();
   }
   //파일명을 가져오고
   private static String getUniqueFileName() {
	   return  UUID.randomUUID().toString();
   }
	  
   //공유주차장 등록
   @Override
   public boolean shareInsert(S_ParkingBean bean)throws DataAccessException {
      //파일처리  
      MultipartFile uploadfile = bean.getUploadfile();
           if (uploadfile != null) {
        	   String filePath = "C:/parkshare/boots_parkpark/src/main/webapp/resources/img_share/"; //파일이 저장될 경로
               String fileName = uploadfile.getOriginalFilename(); //클라이언트가 업로드한 파일이름
        	   String fileNewName = doMakeUniqueFileName(fileName); //유니크한 파일이름을 부여하기
        	   //디비에 저장될 이미지파일이름 설정
        	   bean.setS_image(fileNewName); //이미지 이름
               try {
                   // 1. FileOutputStream 사용
                   // byte[] fileData = file.getBytes();
                   // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                   // output.write(fileData);
                    
                   // 2. File 사용
            	   
                   File file = new File(filePath + fileNewName);
                   uploadfile.transferTo(file);
                   System.out.println("공유주차장 등록 : 이미지 업로드 완료");
               } catch (IOException e) {
            	   System.out.println("공유주차장 등록 err : " + e);
               } // try - catch
           } // if
           // 데이터 베이스 처리를 현재 위치에서 처리
      return memberInter.shareInsert(bean); //나머지 공유주차장 정보등록  
   }   
   
   //공유주차장 수정
   @Override
	public boolean shareModify(S_ParkingBean bean)throws DataAccessException{
	      boolean b = false;
	   	  //파일처리  
	      MultipartFile uploadfile = bean.getUploadfile();
	      	   //uploadfile이 객체생성을 했고, uploadfile의 이름이 있으면 수정할 사진이 있다고 판단
	           if (uploadfile != null && uploadfile.getOriginalFilename() != "" && uploadfile.getOriginalFilename() != null) {
	        	   //기존의 이미지 C드라이브에서 삭제해버리기
	        	   S_ParkingDto dto = memberInter.myParkingGetDeleteImgName(bean); //DB에서 삭제할 주차장 이미지 이름 얻기
	        	   deleteImg(dto); //이미지삭제하기
	        	   
	        	   //새로등록시키는 이미지
	        	   String filePath = "C:/parkshare/boots_parkpark/src/main/webapp/resources/img_share/"; //파일이 저장될 경로
	               String fileName = uploadfile.getOriginalFilename(); //클라이언트가 업로드한 파일이름
	        	   String fileNewName = doMakeUniqueFileName(fileName); //유니크한 파일이름을 부여하기
	        	   //디비에 저장될 이미지파일이름 설정
	        	   bean.setS_image(fileNewName); //이미지 이름
	               try {
     
	                   File file = new File(filePath + fileNewName);
	                   uploadfile.transferTo(file);
	                   System.out.println("공유주차장 수정 : 이미지 업로드 완료");
	                   b = memberInter.shareModify(bean); // 이미지 경로 포함 DB에 저장	 
	               } catch (IOException e) {
	            	   System.out.println("공유주차장 수정 err : " + e);
	                   
	               } // try - catch
	           }else{ //이미지 경로 제외하고 DB저장
	        	   b = memberInter.shareModifyNonImg(bean); 
	           }
	       return b;
	}


	@Override
	public List notiveboardList() throws DataAccessException {
		return memberInter.notiveboardList();
	}
}
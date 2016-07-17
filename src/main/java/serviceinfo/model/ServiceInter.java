package serviceinfo.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import member.model.NoticeboardDto;
import serviceinfo.controller.AnnounceBean;

public interface ServiceInter {
	//공지리스트(관리자용)
	   @Select("select * from noticeboard order by code desc")
	   public List<NoticeboardDto> selectAllnoticeboard();
	   
	//공지상세보기
	   @Select("select * from noticeboard where code=#{code}")
	   public AnnounceDto noticeboardDetail(AnnounceBean bean);
}

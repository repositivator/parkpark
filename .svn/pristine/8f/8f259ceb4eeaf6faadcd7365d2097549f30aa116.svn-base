package serviceinfo.model;

import java.util.List;

import org.apache.shiro.dao.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import serviceinfo.controller.AnnounceBean;

@Repository
public class ServiceImpl implements ServiceDataInter{
	@Autowired ServiceInter serviceInter;
	
	//공지사항 리스트
	@Override
	public List selectAllnoticeboard() throws DataAccessException {
		return serviceInter.selectAllnoticeboard();
	}

	//공지 상세보기
	@Override
	public AnnounceDto noticeboardDetail(AnnounceBean bean) throws DataAccessException {
		return serviceInter.noticeboardDetail(bean);
	}

}

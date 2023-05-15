package model1;

import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface BoardMapper {
	List<BoardTO> boardList(@Param("searchKey") String searchKey, @Param("searchWord") String searchWord);
	}

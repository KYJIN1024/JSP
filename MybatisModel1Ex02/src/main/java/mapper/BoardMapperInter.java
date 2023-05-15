package mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import model1.BoardTO;

public interface BoardMapperInter {

	@Select( "select seq, subject, writer, date_format(wdate, '%Y-%m-%d') wdate, hit, datediff(now(), wdate) wgap from board1 order by seq desc " )	
	public ArrayList<BoardTO> boardList();
	
	@Select( "select subject, writer, mail, wip, wdate, hit, content from board1 where seq=#{seq}")
	public BoardTO boardView(BoardTO to);
	
	@Update( "update board1 set hit=hit+1 where seq=#{seq}")
	public int boardViewHit(BoardTO to);
	
	@Insert("insert into board1 values(0, #{subject}, #{writer}, #{mail}, #{password}, #{content}, 0 , #{wip}, now() )")
	public int boardWriteOk(BoardTO to);
	
	@Select( "select seq, subject, writer, mail, wip, hit, content from board1")
	public BoardTO boardModify(BoardTO to);
	
	@Update( "update board1 set subject=#{subject}, mail=#{mail}, content=#{content}" )
	public int boardModifyOk(BoardTO to);
	
	@Select( "select seq, subject, writer, mail from board1 where seq=#{seq}")
	public BoardTO boardDelete(BoardTO to);
	
	@Delete( "delete from board1 where password=#{password} and seq=#{seq}")
	public int boardDeleteOk(BoardTO to);
	
	
	
	
	
	
}

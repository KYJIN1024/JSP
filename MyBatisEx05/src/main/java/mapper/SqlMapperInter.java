package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Delete;

import model1.DeptTO;
import model1.EmpTO;

public interface SqlMapperInter {
	
	@Select( "select deptno, dname, loc from dept where deptno=10" )
	public DeptTO selectByDeptno();
	
	@Select( "select deptno, dname, loc from dept")
	public List<DeptTO> selectList();
	
	@Select( "select deptno, dname, loc from dept where deptno=#{deptno}")
	public List<DeptTO> selectListByDeptno(String deptno);
	//public List<DeptTO> selectListByDeptno(DeptTO to);
	
	@Select( "select empno, ename, job from emp where ename like #{ename}")
	public List<EmpTO> selectListByEname(String ename);
	
	@Insert( "insert into dept2 values (#{deptno}, #{dname}, #{loc} )" )
	public int insert(DeptTO to);
	
	@Update( "update dept2 set dname=#{dname} where deptno=#{deptno}" )
	public int update(DeptTO to);
	
	@Delete( "delete from dept2 where deptno=#{deptno}" )
	public int delete(DeptTO to);
	
	
	
	
	
	
	
}

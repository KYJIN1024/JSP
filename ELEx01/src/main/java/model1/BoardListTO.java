package model1;

import java.util.ArrayList;

public class BoardListTO {
	private String cpage;
	private BoardTO boardTO;
	private ArrayList<BoardTO> boardLists;
	
	public String getCpage() {
		return cpage;
	}
	public void setCpage(String cpage) {
		this.cpage = cpage;
	}
	public BoardTO getBoardTO() {
		return boardTO;
	}
	public void setBoardTO(BoardTO boardTO) {
		this.boardTO = boardTO;
	}
	public ArrayList<BoardTO> getBoardLists() {
		return boardLists;
	}
	public void setBoardLists(ArrayList<BoardTO> boardLists) {
		this.boardLists = boardLists;
	}
	
	
	

}

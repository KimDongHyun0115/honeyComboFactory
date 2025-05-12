package zic.honeyComboFactory.view.boardComboLiked;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import zic.honeyComboFactory.biz.boardComboLikedVO.BoardComboLikedService;
import zic.honeyComboFactory.biz.boardComboLikedVO.BoardComboLikedVO;
import zic.honeyComboFactory.biz.boardComboVO.BoardComboService;
import zic.honeyComboFactory.biz.boardComboVO.BoardComboVO;

@Controller
public class BoardComboLikedController {
	@Autowired
	private BoardComboService boardComboService;
	@Autowired
	private BoardComboLikedService boardComboLikedService;

	// 꿀조합 게시글 좋아요 여부 반환 기능
	@PostMapping("/boardComboLiked/isLiked")
	@ResponseBody
	public ResponseEntity<Boolean> likedComboBoard(BoardComboLikedVO boardComboLikedVO, HttpSession session,
			@RequestParam("boardComboNumber") long number) {

		long memberNumber = (long) session.getAttribute("loginedMemberNumber");

		boardComboLikedVO.setMemberNumber(memberNumber);

		boolean isLiked = boardComboLikedService.getOne(boardComboLikedVO) != null;

		return ResponseEntity.ok(isLiked);
	}

	// 꿀조합 게시글 좋아요 등록/삭제 기능
	@PostMapping("/boardComboLiked/like")
	@ResponseBody
	public ResponseEntity<String> memberLikedComboBoard(BoardComboVO boardComboVO, BoardComboLikedVO boardComboLikedVO,
			HttpSession session, @RequestParam("boardComboNumber") long number,
			@RequestParam("likedCondition") String condition) {

		long memberNumber = Long.parseLong(session.getAttribute("loginedMemberNumber").toString());

		boardComboLikedVO.setMemberNumber(memberNumber);

		boardComboVO.setCondition("SELECTONECOMBOBOARD");
		boardComboVO.setBoardComboNumber(number);

		BoardComboVO checkMemberLiked = boardComboService.getOne(boardComboVO);
		int boardComboLikedCount = (int) checkMemberLiked.getBoardComboLikedCount();

		boolean flag = false;

		if ("INSERTLIKED".equals(condition)) {
			flag = boardComboLikedService.insert(boardComboLikedVO);
			boardComboLikedCount++;
		} else if ("DELETELIKED".equals(condition)) {
			flag = boardComboLikedService.delete(boardComboLikedVO);
			boardComboLikedCount--;
		}

		if (flag) {
			return ResponseEntity.ok(String.valueOf(boardComboLikedCount));
		} else {
			return ResponseEntity.ok("false");
		}
	}
}

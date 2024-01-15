package com.example.haribo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.haribo.service.QuestionReplyService;
import com.example.haribo.vo.Question;
import com.example.haribo.vo.QuestionReply;

@Controller
public class QuestionReplyController {
	@Autowired private QuestionReplyService questionReplyService;
	
	// 문의답글 등록하기
	@GetMapping("/insertQuestionReply")
	public String insertQuestionReply() {
		
		return "emp/trainerQuestionOne";
	}
	
	@PostMapping("/insertQuestionReply")
	public String insertQuestionReply(QuestionReply questionReply) {
		questionReplyService.insertQuestionReply(questionReply);
		
		String a = "redirect:/trainerQuestionOne?questionNo="+questionReply.getQuestionNo();
		return a;
	}
	
	// 문의 답글 삭제하기
	@GetMapping("/deleteQuestionReply")
	public String deleteQuestionReply(Question question) {
		questionReplyService.deleteQuestionReply(question);
		
		return "redirect:/trainerQuestionOne";
	}
}
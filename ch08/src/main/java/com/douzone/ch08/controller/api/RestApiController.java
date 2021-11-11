package com.douzone.ch08.controller.api;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.douzone.ch08.controller.dto.JsonResult;
import com.douzone.ch08.controller.vo.UserVo;

@RestController
@RequestMapping("/api/user")
public class RestApiController {
	
	@GetMapping("")
	public Object read() {
		List<UserVo> list = new ArrayList<>();
		return JsonResult.success(list);
	}
}

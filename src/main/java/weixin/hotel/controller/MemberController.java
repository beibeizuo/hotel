package weixin.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/9/26.
 */
@Controller
@RequestMapping("/user")
public class MemberController {

    @RequestMapping("/show")
    public String show(HttpServletRequest request, ModelMap model) {

        return "member/memberCenter";
    }


}

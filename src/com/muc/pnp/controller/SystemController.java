package com.muc.pnp.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.muc.pnp.entity.Info;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.muc.pnp.entity.User;
import com.muc.pnp.service.UserService;
import com.muc.pnp.util.CpachaUtil;


@Controller
@RequestMapping("/system")
public class SystemController {

    @Autowired
    private UserService userService;

    @Autowired
    private HttpServletRequest request;

    @PostMapping(value = "/contact")
    public String getInfo(User user) {
        return "system/search";
    }
    /**
     * 首页显示
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index(ModelAndView model) {
        model.setViewName("system/index");
        return model;
    }

    /**
     * 登陆页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(ModelAndView model) {
        model.setViewName("system/login");
        return model;
    }

    /**
	 * 登录表单提交处理控制器
	 * 
	 * 
	 * 
	 */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> loginAct(User user, String cpacha) {
    	//创建一个返回的变量。
        Map<String, String> ret = new HashMap<String, String>();
        if (user == null) {
            ret.put("type", "error");
            ret.put("msg", "请填写用户信息！");
            return ret;
        }
        if (StringUtils.isEmpty(cpacha)) {
            ret.put("type", "error");
            ret.put("msg", "请填写验证码！");
            return ret;
        }
        if (StringUtils.isEmpty(user.getUsername())) {
            ret.put("type", "error");
            ret.put("msg", "请填写用户名！");
            return ret;
        }
        if (StringUtils.isEmpty(user.getPassword())) {
            ret.put("type", "error");
            ret.put("msg", "请填写密码！");
            return ret;
        }
        Object loginCpacha = request.getSession().getAttribute("loginCpacha");
        if (loginCpacha == null) {
            ret.put("type", "error");
            ret.put("msg", "会话超时，请刷新页面！");
            return ret;
        }
        if (!cpacha.toUpperCase().equals(loginCpacha.toString().toUpperCase())) {
            ret.put("type", "error");
            ret.put("msg", "验证码错误！");
            return ret;
        }
        User findByUsername = userService.findByUsername(user.getUsername());
        if (findByUsername == null) {
            ret.put("type", "error");
            ret.put("msg", "该用户名不存在");
            return ret;
        }
        if (!user.getPassword().equals(findByUsername.getPassword())) {
            ret.put("type", "error");
            ret.put("msg", "密码错误！");
            return ret;
        }
        request.getSession().setAttribute("admin", findByUsername);
        ret.put("type", "success");
        ret.put("msg", "登录成功！");
        return ret;
    }

    /**
     * 返回登录页面
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("admin", null);
        //session.setAttribute("role", null);
        //request.getSession().setAttribute("userMenus", null);
        return "redirect:all";
    }

    /**
     * 返回注册页面
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(HttpServletRequest request) {
        return "system/register";
    }
    @PostMapping(value = "/userRegister")
    public String userRegister(User userInfo) {
        userService.userRegister(userInfo);
        return "system/index";
    }

    /**
     *修改密码页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/edit_password", method = RequestMethod.GET)
    public ModelAndView editPassword(ModelAndView model) {
        model.setViewName("system/edit_password");
        return model;
    }

    @RequestMapping(value = "/edit_password", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> editPasswordAct(String newpassword, String oldpassword, HttpServletRequest request) {
        Map<String, String> ret = new HashMap<String, String>();
        if (StringUtils.isEmpty(newpassword)) {
            ret.put("type", "error");
            ret.put("msg", "请填写新密码！");
            return ret;
        }
        User user = (User) request.getSession().getAttribute("admin");
        if (!user.getPassword().equals(oldpassword)) {
            ret.put("type", "error");
            ret.put("msg", "原密码错误！");
            return ret;
        }
        user.setPassword(newpassword);
        if (userService.editPassword(user) <= 0) {
            ret.put("type", "error");
            ret.put("msg", "密码修改失败，请联系管理员！");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "密码修改成功！");
        return ret;
    }
    /**
     * 优质推荐页面
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String all(HttpServletRequest request) {
        return "system/all";
    }
    /**
     * 时尚搭配页面
    *
    * @param request
    * @return
    */
   @RequestMapping(value = "/fashion", method = RequestMethod.GET)
   public String fashion(HttpServletRequest request) {
       return "system/fashion";
   }
   /**
    * 创意生活页面
   *
   * @param request
   * @return
   */
  @RequestMapping(value = "/life", method = RequestMethod.GET)
  public String life(HttpServletRequest request) {
      return "system/life";
  }
	  /**
	   * 亲自育儿页面
	  *
	  * @param request
	  * @return
	  */
 @RequestMapping(value = "/parenting", method = RequestMethod.GET)
 public String parenting(HttpServletRequest request) {
     return "system/parenting";
 }
	 /**
	  * 金融理财页面
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/business", method = RequestMethod.GET)
	public String business(HttpServletRequest request) {
	    return "system/business";
	}
	/**
	 * 广告营销页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/advertise", method = RequestMethod.GET)
	public String advertise(HttpServletRequest request) {
	   return "system/advertise";
	}
	/**
	 * 个人媒体页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/entertainment", method = RequestMethod.GET)
	public String entertainment(HttpServletRequest request) {
	   return "system/entertainment";
	}
	/**
	 * 服务流程页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service(HttpServletRequest request) {
	   return "system/service";
	}
	/**
	 * 时尚搭配>>>时尚临风页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat1", method = RequestMethod.GET)
	public String wechat1(HttpServletRequest request) {
	   return "system/wechat1";
	}
	/**
	 * 时尚搭配>>>时尚临风页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat17", method = RequestMethod.GET)
	public String wechat17(HttpServletRequest request) {
	   return "system/wechat17";
	}
	/**
	 * 时尚搭配>>>她坎页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat2", method = RequestMethod.GET)
	public String wechat2(HttpServletRequest request) {
	   return "system/wechat2";
	}
	/**
	 * 时尚搭配>>>时尚怪谈页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat3", method = RequestMethod.GET)
	public String wechat3(HttpServletRequest request) {
	   return "system/wechat3";
	}
	/**
	 * 时尚搭配>>>海报时尚页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat4", method = RequestMethod.GET)
	public String wechat4(HttpServletRequest request) {
	   return "system/wechat4";
	}
	/**
	 * 时尚搭配>>>海报时尚页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat18", method = RequestMethod.GET)
	public String wechat18(HttpServletRequest request) {
	   return "system/wechat18";
	}
	/**
	 * 时尚搭配>>>全球时尚页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat5", method = RequestMethod.GET)
	public String wechat5(HttpServletRequest request) {
	   return "system/wechat5";
	}
	/**
	 * 时尚搭配>>>FashionGirl页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat6", method = RequestMethod.GET)
	public String wechat6(HttpServletRequest request) {
	   return "system/wechat6";
	}
	/**
	 * 创意生活>>>创意社页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat7", method = RequestMethod.GET)
	public String wechat7(HttpServletRequest request) {
	   return "system/wechat7";
	}
	/**
	 * 创意生活>>>大爱狗狗页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat8", method = RequestMethod.GET)
	public String wechat8(HttpServletRequest request) {
	   return "system/wechat8";
	}
	/**
	 * 亲子育儿>>家教智慧页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat9", method = RequestMethod.GET)
	public String wechat9(HttpServletRequest request) {
	   return "system/wechat9";
	}
	/**
	 * 金融理财>>占豪页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat11", method = RequestMethod.GET)
	public String wechat11(HttpServletRequest request) {
	   return "system/wechat11";
	}
	/**
	 * 金融理财>>钱眼页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat13", method = RequestMethod.GET)
	public String wechat13(HttpServletRequest request) {
	   return "system/wechat13";
	}
	/**
	 * 广告营销>>广告门页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat12", method = RequestMethod.GET)
	public String wechat12(HttpServletRequest request) {
	   return "system/wechat12";
	}
	/**
	 * 广告营销>>销售兵法页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat15", method = RequestMethod.GET)
	public String wechat15(HttpServletRequest request) {
	   return "system/wechat15";
	}
	/**
	 * 个人媒体>>刘小葵页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat14", method = RequestMethod.GET)
	public String wechat14(HttpServletRequest request) {
	   return "system/wechat14";
	}
	/**
	 * 个人媒体>>卡娃微卡页面
	*
	* @param request
	* @return
	*/
	@RequestMapping(value = "/wechat16", method = RequestMethod.GET)
	public String wechat16(HttpServletRequest request) {
	   return "system/wechat16";
	}
	
    /**
     * 所有验证码均用此方法
     *
     * @param
     * @return
     */
    @RequestMapping(value = "get_cpacha", method = RequestMethod.GET)
    public void generateCpacha(
            @RequestParam(name = "vl", required = false, defaultValue = "4") Integer vcodeLen,
            @RequestParam(name = "w", required = false, defaultValue = "100") Integer width,
            @RequestParam(name = "h", required = false, defaultValue = "30") Integer height,
            @RequestParam(name = "type", required = true, defaultValue = "loginCpacha") String cpachaType,
            HttpServletRequest reguest,
            HttpServletResponse response) {
        CpachaUtil cpachaUtil = new CpachaUtil(vcodeLen, width, height);
        //生成验证码，并获取字符串
        String generatorVCode = cpachaUtil.generatorVCode();
         //将字符串写进session绘画里面,唯一区别用户的全局变量，就是url请求一个网页时候，
		 //只有有操作，就一直在登录,没有操作过了一段时间会超时。
        reguest.getSession().setAttribute(cpachaType, generatorVCode);
        //画一个验证码，以及是否要线条
        BufferedImage generatorVCodeImage = cpachaUtil.generatorVCodeImage(generatorVCode, true);
        //写到流里面,图片格式，获取输出流，response最接近用户，展示用户的那个对象，
		 // 把所用东西封装到response里面
        try {
            ImageIO.write(generatorVCodeImage, "gif", response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


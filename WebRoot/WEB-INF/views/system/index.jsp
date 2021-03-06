<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Ad serving 微信公众号广告投放平台</title>
<link rel="stylesheet" href="../resources/admin/websit/style.css">
<link rel="stylesheet" href="../resources/admin/websit/style2.css">
<link rel="stylesheet" href="../resources/admin/websit/style3.css">
<link rel="stylesheet" href="../resources/admin/websit/swipe.css">
<script src="../resources/admin/websit/js/jquery.min.js"></script>
<script src="../resources/admin/websit/js/bootstrap.min.js"></script>
<script src="../resources/admin/websit/js/system.js" type="text/javascript"></script>
<script type="text/javascript" src="../resources/admin/websit/js/hotclick.js" name="mtah5hotclick" sid="500566413" hid="5bd27ef3f24cf"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
  <div class="container"> <a class="navbar-brand">Ad serving.website</a>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto menu-1">
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link ">首页</a> </li>
        <li class="nav-item"> <a class="nav-link "href="login" plain="true">优质推荐</a> </li>
        <li class="nav-item"> <a class="nav-link "href="service" plain="true">服务流程</a> </li>
      </ul>
      <ul class="navbar-nav ml-auto menu-2">
        <li class="nav-item"> <a class="nav-link btn-menu-login" href="login" plain="true">登录</a> </li>
        <li class="nav-item"> <a class="nav-link btn-menu-login" href="register" plain="true">注册</a> </li>
        <li class="nav-item is-logged"> </li>
      </ul>
    </div>
  </div>
</nav>
<div id="shopify-section-newsletter" class="shopify-section index-newsletter-section">
  <div class="newsletter">
    <div class="wrapper">
      <div class="section-header text-center">
        <h2 class="h1 section-header__title">为您打造优质的营销战略</h2>
      </div>
      <div class="section-subheading text-center">
        <p>及时、有效得到优越公众号的最新消息</p>
        <hr class="hr--small">
      </div>
      <form method="post" action="<%=request.getContextPath()%>/system/contact" id="contact_form" accept-charset="UTF-8" class="contact-form">
        <input type="hidden" name="form_type" value="customer">
        <input type="hidden" name="utf8" value="✓">
        <input type="hidden" name="contact[tags]" value="newsletter">
        <div class="newsletter--form">
          <div class="input-group">
            <input type="公众号名称" value="" placeholder="公众号名称或种类" name="username" class="input-group-field newsletter__input">
            <span class="input-group-btn">
            <button type="submit" class="btn newsletter__submit" name="commit" id="Subscribe"> <span class="newsletter__submit-text--large">Search</span> <span class="newsletter__submit-text--small"> <span class="icon icon-arrow-right" aria-hidden="true"></span> </span> </button>
            </span> </div>
        </div>
      </form>
    </div>
  </div>
</div>
<div class="row margin-vertical-medium">
  <div class="col-sm-6"> <br>
    <br>
    <br>
    <br>
    <h2>微信广告<br class="visible-md visible-lg">
    </h2>
    <p class="large margin-top-small"> 微信广告是基于微信生态体系，整合朋友圈、公众号、小程序等多重资源，结合用户社交、阅读和生活场景，利用专业数据算法打造的社交营销推广平台。 </p>
    <div id="div2"> <img src="../resources/admin/websit/images/1.jpg" alt=""> </div>
    <p class="large margin-top-small">&nbsp;</p>
    <p class="large margin-top-small">&nbsp;</p>
  </div>
</div>
<div class="component two-col padding-top-small">
  <div class="container text-center-xs">
    <div class="row margin-vertical-medium">
      <div id="div1"> <img src="../resources/admin/websit/images/1.jpg" alt=""> </div>
      <div class="col">
        <h2>关于我们<br class="visible-md visible-lg">
        </h2>
        <p class="large margin-top-small"> 我们希望根据您的需求为您提供更有针对性的优质服务。对公众号进行分类以及点赞量、阅读量、打赏情况等的数据分析，您可以根据我们的数据与有意向合作的公众号管理者进行洽谈，在合作期间内，也将定期收到合作效果展示。通过我们，找到您最愿意站上的舞台，让世界听见您的声音。 </p>
      </div>
    </div>
  </div>
</div>
<div class="new-sourceinfo">
  <div class="sourceinfo-detail"> 
    <!-- 头部标题 -->
    <div class="detail-body">
      <div class="detail-info">
        <p>公众号广告</p>
        <div class="detail-content" style="width:auto;">是基于微信公众平台生态，以类似公众号文章内容的形式在包括文章底部、文章中部、互选广告和视频贴片等<br>
          四个广告资源位进行展示的内容广告。</div>
      </div>
    </div>
    
    <!-- pc推广目的导航 -->
    <div class="purpose-nav">
      <div class="purpose-block">
        <ul>
          <li class="active"><a href="javascript:$.ad_info.show(1,0);"><i class="f-brand"></i>
            <p>推广品牌活动</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,1);"><i class="f-product"></i>
            <p>推广我的商品</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,2);"><i class="f-app"></i>
            <p>推广我的应用</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,3);"><i class="f-coupon"></i>
            <p>派发优惠券</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,4);"><i class="f-gzh"></i>
            <p>推广公众号</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,5);"><i class="f-info"></i>
            <p>收集销售线索</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,6);"><i class="f-game"></i>
            <p>推广小游戏</p>
            </a></li>
        </ul>
      </div>
    </div>
    
    <!-- 移动端推广目的导航 -->
    <div class="purpose-mnav" style="display: none;"> 
      <!-- 当不需要滑动的时候添加.less-item且不能大于三个子项 -->
      <div class="purpose-block">
        <ul>
          <li class="active"><a href="javascript:$.ad_info.show(1,0);"><i class="f-brand"></i>
            <p>推广品牌活动</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,1);"><i class="f-product"></i>
            <p>推广我的商品</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,2);"><i class="f-app"></i>
            <p>推广我的应用</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,3);"><i class="f-coupon"></i>
            <p>派发优惠券</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,4);"><i class="f-gzh"></i>
            <p>推广公众号</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,5);"><i class="f-info"></i>
            <p>收集销售线索</p>
            </a></li>
          <li><a href="javascript:$.ad_info.show(1,6);"><i class="f-game"></i>
            <p>推广小游戏</p>
            </a></li>
        </ul>
      </div>
    </div>
    
    <!-- pc推广展示区域 -->
    <div class="promotion-pcarea">
      <div class="promotion-body"> 
        <!-- 视频板块 -->
        <div class="show-block"> 
          <!-- 预览展示图片 --> 
          <!--  <div class="preshow-img">
                        <img src="" alt="" class="video-img">
                    </div> --> 
          <!-- gif图板块 -->
          <div class="show-video"> <img src="../resources/admin/websit/images/gzh_mybrand.gif" alt="" class="video-img"> </div>
        </div>
        
        <!-- 文本内容 -->
        <div class="show-pccontent">
          <div class="show-body">
            <p class="scontent-title">推广品牌活动</p>
            <div class="scontent-detail">微信拥有超过11亿月活跃用户，可以帮助您实现海量品牌曝光，传递品牌文化，强化品牌形象，并配合精准定向，让更多用户参与品牌活动，实现品效合一。</div>
          </div>
        </div>
      </div>
      <div class="show-more"> 您的广告能够以更丰富的样式呈现, <a>查看更多广告样式</a> </div>
    </div>
  </div>
</div>
<div class="he4"></div>
<div class="mod_case w1200">
  <div class="mod_title">微信营销案例</div>
  <div class="blank40"></div>
  <div class="blank100"></div>
  <div class="carousel slide" id="mod_case" pause="hover">
    <ol class="carousel-indicators">
      <li data-slide-to="0" title="查看金融微信推广,地产微信推广案例" data-target="#mod_case" class=""><i class="iconfont"></i><span>金融地产</span></li>
      <li data-slide-to="1" title="查看社交微信推广,电商微信推广案例" data-target="#mod_case" class=""><i class="iconfont"></i><span>社交电商</span></li>
      <li data-slide-to="2" title="查看快消品微信推广,餐饮微信推广案例" data-target="#mod_case" class=""><i class="iconfont"></i><span>快消餐饮</span></li>
      <li data-slide-to="3" title="查看汽车微信推广,科技微信推广案例" data-target="#mod_case" class="active"><i class="iconfont"></i><span>汽车科技</span></li>
      <li data-slide-to="4" title="查看美容微信推广,服装微信推广案例" data-target="#mod_case"><i class="iconfont"></i><span>美容服饰</span></li>
      <li data-slide-to="5" title="查看APP微信推广,游戏微信推广案例" data-target="#mod_case"><i class="iconfont"></i><span>APP游戏</span></li>
      <li data-slide-to="6" title="查看家电微信推广,通讯行业微信推广案例" data-target="#mod_case"><i class="iconfont"></i><span>家电通讯</span></li>
    </ol>
    <div class="carousel-inner">
      <div class="item">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="../resources/admin/websit/images/578daa1cd45f6.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">碧桂园·森林城市社会化营销传播项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="../resources/admin/websit/images/578df648cf533.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p><span style="line-height: inherit; white-space: pre-wrap;">&nbsp;碧桂园·森林城市是由碧桂园投资2500亿，碧桂园携手Sasaki等国际顶尖团队打造的新加坡旁智慧生态大城。从2015年开始，碧桂园营销团队携手城外圈媒介中心，在国内外高端媒体、赛事和网络传播渠道进行大</span><span style="line-height: inherit; white-space: pre-wrap;">范围传播活动。城外圈为其提供了多维的媒体支持，城外圈签约各大金融、地产、媒体、旅游大V为碧桂园做话题营销。</span></p>
                  <p><span style="line-height: inherit; white-space: pre-wrap;"><br>
                    </span></p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="../resources/admin/websit/images/578de839289c9.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">百度钱包春节微信推广项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="../resources/admin/websit/images/578dfabc9522f.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>2016年春节期前夕，百度聘请胡歌作为百度钱包代言人为春节红包大战带来助力。用户通过手机百度喊语音口令、拍“福”字进行搜索，即可参与百度钱包的“新年开福袋”活动。除丰厚现金外，还有包括餐饮团购、电影票折扣、爱奇艺会员等超值礼券以及随机免单，随时提现”的超值优惠活动。</p>
                  <p><br>
                  </p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="../resources/admin/websit/images/578e1075a61f1.jpeg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">美年达开心达人系列整合营销活动项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="../resources/admin/websit/images/578e10759c7fe.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="div3">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>作为百事可乐公司的荣誉产品，美年达始终坚持创新、年轻、活力的品牌态度。15年中旬美年达联手网络电视剧《爱情公寓》演员打造----校园急召最“逗”开心达人活动，并通过社会化营销、搜索营销等推广，将校园活动信息覆盖到全国线上高校圈。</p>
                  <p><br>
                  </p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item active">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="http://img.cwq.com/201607/578f6a885c52a.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">奥迪A6L试驾活动营销活动项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="http://img.cwq.com/201607/578e128f10e56.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>将产品的技术和性能优越作为传播诉求的核心，锁定中国追求豪华轿车的消费者。这群人是不是政府官员已经没有意义了，有意义的是不是奥迪能不能进一步扩大自己的消费群，并将一种生活方式推销给目标客户，让他们和他们的后代成为奥迪忠实的品牌拥戴者。</p>
                  <p><br>
                  </p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item ">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="http://img.cwq.com/201607/578edfaa72735.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">自然堂冰肌水社会化营销推广项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="http://img.cwq.com/201607/578edfaa68167.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>自然堂冰肌水，唤醒雪域生命力。自然堂推出冰肌水后，不仅好大力气争取到《我是歌手》的冠名广告，更是以社交媒体为依托，采用大数据精准营销策略，针对目标消费群体（18—35年轻女性）采用抽奖活动、线下体验等多种方式实现营销转化。</p>
                  <p>&nbsp;</p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item ">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="http://img.cwq.com/201607/578f1aaa5004b.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">仙魂玩家导流推广项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="http://img.cwq.com/201607/578df388e8889.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>仙魂是云游控股旗下的一款优秀线上游戏，以优美的画风收获了许多年轻玩家。通过城外圈社会化营销等整合传播，促使游戏的用户群成倍增加，投放期间每日导入优质用户可至少满足2组服务器的开服需求，游戏点击下载量不断上升，首月回本超300%！</p>
                  <p><br>
                  </p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
      <div class="item ">
        <dl class="mod_success_case">
          <dt class="fl"><img class="bor" src="http://img.cwq.com/201607/578f61e552752.jpg"></dt>
          <dd class="fr">
            <div class="pr20">
              <div class="case_group bor_bottom">
                <h3 class="text-center o2o_58daojia">方太“烧脑广告”媒体投放项目</h3>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div class="case_group_img"><img style="height: 100%" src="http://img.cwq.com/201607/578df51b09e22.jpg" alt="logo"></div>
              </div>
              <div class="blank20"></div>
              <div class="case_group">
                <div id="case_group_info">
                  <label title="项目概述" class="case_col-1 fl control-label"><b>项目概述：</b></label>
                  <p></p>
                  <p>方太定位为中国高端厨卫，在2015年8月开始，方太开始通过“烧脑广告”来俘获市场芳心，城外圈为方太提供了其创意内容在社交群体内广泛扩散的渠道和媒介。依托“品牌创意+渠道铺开+舆情讨论”的三步走策略，让神转折的广告瞬间引爆网络，充分展现了品牌自信和品牌价值，让高端厨卫走进目标受众的心里。</p>
                  <p><br>
                  </p>
                  <p></p>
                </div>
              </div>
              <div class="blank20"></div>
              
            </div>
          </dd>
        </dl>
      </div>
    </div>
    <a data-slide="prev" href="#mod_case" class="left carousel-control"><i class="iconfont"></i></a><a data-slide="next" href="#mod_case" class="right carousel-control"></a></div>
</div>
	<div class="he4"></div>
	<div class="he4"></div>
	<div class="footer">
  
  <div class="footer_bottom">
    <div class="footer_bottom_copy w1200">
      <div class="footer_bottom_copyright">Copyright&nbsp;©2020&nbsp;Ad serving&nbsp;.website&nbsp;</div>
    </div>
    <div class="text-center"></div>
  </div>
</div>
</body>
</html>

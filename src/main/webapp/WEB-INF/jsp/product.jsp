<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>当当网商品展示页面</title>
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/product.js"></script>
</head>
<body>
<div id="header"><iframe src="header.jsp" height="155px" width="960px" frameborder="0"></iframe></div>
<!--中间部分开始-->
<div id="main">
    <div class="dd_index_top_adver"><img src="images/dd_index_top_adver.jpg" alt="通栏广告图片" /></div>
    <div class="current_place">您现在的位置：<a href="index.html">当当图书</a> &gt;&gt; 小说 &gt;&gt; 财经</div>
    <!--左侧菜单开始-->
    <div id="product_left">
        <div id="product_catList">
            <div class="product_catList_top">浏览同级分类</div>
            <div id="product_catList_class"><!--使用javaScript显示图书分类--></div>
        </div>
        <div class="product_catList_end">
            <img src="images/product_01.gif" alt="shopping"/>
            <img src="images/product_02.gif" alt="shopping"/>
        </div>
    </div>
    <!--右侧内容开始-->
    <div id="product_storyList">
        <div id="product_storyList_top">
            <ul>
                <li>排序方式</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"/></li>
                <li>
                    <select id="compositor">
                    <option>按销量 降序</option>
                    <option>按价格 升序</option>
                    <option>按价格 降序</option>
                    <option>按折扣 升序</option>
                    <option>按折扣 降序</option>
                    <option>按出版时间 升序</option>
                    <option>按出版时间 降序</option>
                    <option>按上架时间 升序</option>
                    <option>按上架时间 降序</option>
                    </select>
                </li>
                <li><img src="images/product_icon_01.gif" alt="icon"/></li>
                <li><img src="images/product_icon_02.gif" alt="icon"/></li>
                <li><img src="images/product_icon_03.gif" alt="icon"/></li>
                <li><img src="images/product_icon_04.gif" alt="icon"/></li>
                <li>每页显示的数量</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"/></li>
                <li><img src="images/product_icon_20.gif" alt="icon"/></li>
                <li><img src="images/product_icon_40.gif" alt="icon"/></li>
                <li style="float:right; padding-right:10px;"><img src="images/product_page_down.gif" alt="icon"/></li>
                <li style="float:right;">第1页</li>
                <li style="float:right;"><img src="images/product_page_up.gif" alt="icon"/></li>
            </ul>
        </div>
        <div id="product_array">
            <a class="click" name="array"  href="javascript:void(0)">列表</a>
            <a name="bigImg" href="javascript:void(0)">大图</a>
        </div>
        <!--图书排列开始-->
        <div id="product_storyList_content" class="product_storyList_content">
            <div id="storyBooksssss"><!--使用javaScript显示图书列表--></div>
            <!--列表开始-->
            <div class="product_storyList_content_left"><img src="images/product_list_01.jpg" alt="图书列表"/></div>
            <div class="product_storyList_content_right">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">私募（首部披露资本博弈秘密的金融小说）</a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_gray.gif" alt="star"/></li>
                    <li>作　者：<a href="#" class="blue_14">郭现杰</a> 著</li>
                    <li>出版社：<a href="#" class="blue_14">花山文艺出版社</a></li>
                    <li>出版时间：2009年08月</li>
                    <li>数年前，在一次股市的多、空之战中，以赵云狄、林康为首的私募基金―金鼎投资，和以王雨龙为首的私募基金，达成锁仓协议分食利益。殊料，以王雨龙为首的私募基金―鑫利投资背信弃义，导致金鼎投资惨败。以至...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"/></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"/></dd>
                            <dd>节省：￥13.10</dd>
                            <dd>折扣：<span>59折</span></dd>
                            <dd class="footer_dull_red"><span>￥18.90</span></dd>
                            <dd class="product_content_delete"><span>￥32.00</span></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="product_storyList_content_bottom"></div>
            <!--列表开始-->
            <div class="product_storyList_content_left"><img src="images/product_list_02.jpg" alt="图书列表"/></div>
            <div class="product_storyList_content_right">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">圈子圈套.1.战局篇 </a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red2.gif" alt="star"/></li>
                    <li>作　者：<a href="#" class="blue_14">王强 </a> 著</li>
                    <li>出版社：<a href="#" class="blue_14">清华大学出版社</a></li>
                    <li>出版时间：2006年01月</li>
                    <li>虽然没有硝烟，却比战场更血腥；虽然并未战死，却比死亡更痛苦。 洪钧从一个底层的销售人员，成为一家著名的跨国公司的中国区代理首席代表，在即将被扶正，事业情感都志得意满的时候，掉入俞威设计的圈套，...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"/></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"/></dd>
                            <dd>节省：￥8.90</dd>
                            <dd>折扣：<span>68折</span></dd>
                            <dd class="footer_dull_red"><span>￥19.10</span></dd>
                            <dd class="product_content_delete"><span>￥28.00</span></dd>
                        </dl>
                    　</li>
                </ul>
            </div>
            <div class="product_storyList_content_bottom"></div>
            <!--列表开始-->
            <div class="product_storyList_content_left"><img src="images/product_list_03.jpg" alt="图书列表"/></div>
            <div class="product_storyList_content_right">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">饕餮（最真实的商场高端博弈小说）  </a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/></li>
                    <li>作　者：<a href="#" class="blue_14">韦帕　 </a> 著</li>
                    <li>出版社：<a href="#" class="blue_14">国际文化出版公司</a></li>
                    <li>出版时间：2009年07月</li>
                    <li>北京，六百公里处，有宝地，233亩，土地价值2.5亿，总投资额近八亿，利润近三亿。　　项目吸引了众多北京房地产商目光，其中最贪婪的一道目光，来自顾忱。但顾忱，总资产不过千万！想拿项目，无异于“空手套...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"/></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"/></dd>
                            <dd>节省：￥8.40</dd>
                            <dd>折扣：<span>74折</span></dd>
                            <dd class="footer_dull_red"><span>￥23.60</span></dd>
                            <dd class="product_content_delete"><span>￥32.00</span></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="product_storyList_content_bottom"></div>
            <!--列表开始-->
            <div class="product_storyList_content_left"><img src="images/product_list_04.jpg" alt="图书列表"/></div>
            <div class="product_storyList_content_right">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">圈子圈套 迷局篇2：职场商战三部曲  </a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/></li>
                    <li>作　者：<a href="#" class="blue_14">王强 </a> 著</li>
                    <li>出版社：<a href="#" class="blue_14">长江文艺出版社</a></li>
                    <li>出版时间：2006年08月</li>
                    <li>《圈子圈套2・迷局篇》是“圈子圈套三部曲”的第二部。 职场风云再起。洪钧出任维西尔中国区总经理，他和俞威之间的较量又或明或暗地展开来，面对内部的纷争和商场上的尔虞我诈，他该如何出招……俞威依...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"/></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"/></dd>
                            <dd>节省：￥11.4</dd>
                            <dd>折扣：<span>59折</span></dd>
                            <dd class="footer_dull_red"><span>￥16.60</span></dd>
                            <dd class="product_content_delete"><span>￥28.00</span></dd>
                        </dl>
    　              </li>
                </ul>
            </div>
            <div class="product_storyList_content_bottom"></div>
            <!--列表开始-->
            <div class="product_storyList_content_left"><img src="images/product_list_05.jpg" alt="图书列表"/></div>
            <div class="product_storyList_content_right">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">圈子圈套3.终局篇（附赠王强演讲光盘）  </a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_red.gif" alt="star"/><img src="images/star_gray.gif" alt="star"/></li>
                    <li>作　者：<a href="#" class="blue_14">王强 </a> 著</li>
                    <li>出版社：<a href="#" class="blue_14">长江文艺出版社</a></li>
                    <li>出版时间：2007年10月</li>
                    <li>本书全景展示了商场和职场的生死厮杀、巅峰对决。主人公的命运、项目结局、所有的爱恨情仇都在本书中揭开谜底。 再次陷入低谷的洪钧在内忧外患中不甘消沉，在职场上和自己的上司明争暗斗，在商场上则和夙...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"/></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"/></dd>
                            <dd>节省：￥13.10</dd>
                            <dd>折扣：<span>59折</span></dd>
                            <dd class="footer_dull_red"><span>￥18.9</span></dd>
                            <dd class="product_content_delete"><span>￥32.00</span></dd>
                        </dl>
                　  </li>
                </ul>
            </div>
            <div class="product_storyList_content_bottom"></div>

            <div>
                <dl class="product_content_dd">
                    <dd><img src="images/OK.gif" alt="ok"/></dd>
                    <dd>页</dd>
                    <dd><input name="page" type="text" value="1" style="width:20px;"/></dd>
                    <dd>跳转到第</dd>
                    <dd><img src="images/next.gif" alt="ok"/></dd>
                    <dd>
                        <ul id="product_page">
                            <li><a href="#" class="product_page">1</a></li>
                            <li><a href="#" class="product_page">2</a></li>
                            <li> <a href="#" class="product_page">3</a></li>
                            <li> ...</li>
                            <li><a href="#" class="product_page">14</a></li>
                            <li><a href="#" class="product_page">15</a></li>
                            <li><a href="#" class="product_page">16</a></li>
                        </ul>
                    </dd>
                    <dd><img src="images/product_page_up.gif" alt="ok"/></dd>
                </dl>
            </div>
        </div>
    </div>
    <!--右侧内容结束-->
</div>
<!--网站版权部分开始-->
<div id="footer">
<div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">公司简介</a> | <a href="#" target="_parent" class="footer_dull_red">诚证英才</a> | <a href="#" target="_parent" class="footer_dull_red">网站联盟</a> | <a href="#" target="_parent" class="footer_dull_red">百货招商</a> | <a href="#" target="_parent" class="footer_dull_red">交易条款</a></div>
<iframe src="footer.jsp" height="50px" width="900px" frameborder="0"></iframe></div>
</body>
</html>

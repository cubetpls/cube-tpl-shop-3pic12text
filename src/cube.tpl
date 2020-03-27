<div class="wrapper"  c-hide={{tabs.length == 0}}>
   <ul class="tabs">
      {{#list tabs as item by item_index}}
      <li class="item {{item_index === current ? 'current' : ''}}" on-click={{this.tabClick(item_index)}}>
        <a href="javascript:void(0);" onClick="return false;">{{item}}</a>
      </li>
      {{/list}}
   </ul>
   <ul class="views">
      {{#list views as item by item_index}}
      <li class="item {{item_index === current ? 'current' : ''}}">
         <ul class="img-list">
            {{#list item.image_list as img_item by img_item_index}}
            <li class="img-item">
               <a href="{{img_item.link}}">
                  <img src="{{img_item.img|clipImage: '116_126_'}}" onerror="this.onerror=null; this.src='https://p4.ssl.qhimg.com/t018947d5e6d9bb174f.png'" alt="">
                  <span class="text">{{img_item.text}}</span>
               </a>
            </li>
            {{/list}}
         </ul>
         <ul class="text-list gclearfixc">
            {{#list item.text_list as text_item by text_item_index}}
            <li class="text-item"><a href="{{text_item.link}}">{{text_item.text}}</a></li>
            {{/list}}
         </ul>
      </li>
      {{/list}}
   </ul>
</div>
<img src="assets/launchimg.png" c-show={{tabs.length == 0}} alt="">
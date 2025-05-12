# rule-set
> [!CAUTION]
>
> **禁止任何形式转载或发布至中国大陆地区**

## 项目简介

收集于互联网，面向 Mihomo/Clash.Meta Surge Loon Stash Shadowrocket QuantumultX 多个代理工具的定制[规则集](https://github.com/QuixoticHeart/rule-set/tree/ruleset)

每天早上 7:00（北京时间 UTC+8）自动构建，保持规则最新

- **[规则说明](#规则说明)**

- **[完整规则集目录](#完整规则集)**

- **[Clash.Meta/Stash拆分规则集目录](#clashmetastash拆分规则集)**


## 项目背景
Mihomo/Clash.Meta 和 Stash 对 domain 和 ipcidr 类型的规则集优化更加出色，尤其对于性能受限的设备（硬路由）使用 Clash 系软件代理时，应避免使用 classical 规则集

Mihomo/Clash.Meta 独有的 mrs 格式，能够减少加载时硬件资源占用，也能减少一半以上规则文件大小，对于性能受限的设备十分友好

Surge 和 Loon 目前在使用 RULE-SET 和 DOMAIN-SET 时，性能和内存占用已没有明显区别。因此，细分规则已显得不再必要。转而使用 RULE-SET 可以更方便地管理规则集。

### 文件结构

````
meta/dmca.list（默认含有 no-resolve 参数）
   ├── meta/domain/dmca.list(mrs)    # domain(text/mrs)类型
   ├── meta/ipcidr/dmca.list(mrs)    # ipcidr(text/mrs)类型
   └── meta/classical/dmca.list      # 去除 domain 和 ipcidr 后剩余的规则类型 (如无必要,则不生成)

stash/dmca.list（默认含有 no-resolve 参数）
   ├── stash/domain/dmca.list         # domain(text)类型
   ├── stash/ipcidr/dmca.list         # ipcidr(text)类型
   └── stash/classical/dmca.list      # 去除 domain 和 ipcidr 后剩余的规则类型 (如无必要,则不生成)

surge/
   └── dmca.list（默认含有 no-resolve 参数）

loon/
   └── dmca.list（默认含有 no-resolve 参数）

shadowrocket/
   └── dmca.list（默认含有 no-resolve 参数）

quantumultx/
   └── dmca.list（不含有 no-resolve 参数）

````
## 规则说明
<table>
  <thead>
    <tr>
      <th>规则名称</th>
      <th>规则描述</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>abema</code></td>
      <td>abema 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>adrules</code></td>
      <td>广告屏蔽规则 + <code>httpdns</code>
      <br> 规则源:
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      <a href="https://github.com/fmz200/wool_scripts">@fmz200/wool_scripts</a>
      <a href="https://github.com/uselibrary/PCDN">@uselibrary/PCDN</a>
      <br> <code>httpdns</code>规则源:
      <a href="https://github.com/VirgilClyne/GetSomeFries">@VirgilClyne/GetSomeFries</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/SunsetMkt/anti-ip-attribution">@SunsetMkt/anti-ip-attribution</a>
      </td>
    </tr>
    <tr>
      <td><code>ai</code></td>
      <td> AI 规则集合 <br> 包含 OpenAI, Gemini, Copilot, Claude, Apple Intelligence, Groq, Perplexity, xAI, Cursor 等
      <br> 规则源:
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      <a href="https://github.com/ConnersHua/RuleGo">@ConnersHua/RuleGo</a>
      <a href="https://github.com/ACL4SSR/ACL4SSR">@ACL4SSR/ACL4SSR</a>
      </td>
    </tr>
    <tr>
      <td><code>apns</code></td>
      <td>Apple Push Notification Service 苹果推送服务
      <br> 规则源:
      <a href="https://github.com/QuixoticHeart/rule-set/">手动维护</a>
      </td>
    </tr>
    <tr>
      <td><code>apple-cn</code></td>
      <td>Apple 在中国大陆备案的规则列表
      <br> 规则源:
      <a href="https://github.com/felixonmars/dnsmasq-china-list">@felixonmars/dnsmasq-china-list</a>
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      </td>
    </tr>
    <tr>
      <td><code>apple-proxy</code></td>
      <td>Apple 在中国大陆需要代理的规则列表
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/Elysian-Realme/FuGfConfig">@Elysian-Realme/FuGfConfig</a>
      </td>
    </tr>
    <tr>
      <td><code>apple-tv</code></td>
      <td>Apple TV 流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>apple</code></td>
      <td>Apple 服务
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>bahamut</code></td>
      <td>巴哈姆特动漫
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>bilibili</code></td>
      <td>哔哩哔哩动漫
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>cdn</code></td>
      <td>常见静态资源 CDN 及软件更新、操作系统等大文件下载规则
      <br> 规则源:
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      </td>
    </tr>
    <tr>
      <td><code>cn</code></td>
      <td>中国大陆域名
      <br> 不包含跨国网络服务提供商(如 Microsoft Apple 等)在中国大陆可直连的域名
      <br> 规则源:
      <a href="https://github.com/felixonmars/dnsmasq-china-list">@felixonmars/dnsmasq-china-list</a>
      </td>
    </tr>
    <tr>
      <td><code>cncidr</code></td>
      <td>中国大陆 IP 地址
      <br> 规则源:
      <a href="https://github.com/Loyalsoldier/geoip">@Loyalsoldier/geoip</a>
      </td>
    </tr>
    <tr>
      <td><code>cncidr-resolve</code></td>
      <td>中国大陆 IP 地址去除 no-resolve 参数
      <br> 规则源:
      <a href="https://github.com/Loyalsoldier/geoip">@Loyalsoldier/geoip</a>
      </td>
    </tr>
    <tr>
      <td><code>crypto</code></td>
      <td> 加密货币相关规则 <br> 包含 Binance, OKX, Bybit, Bitget 等常见交易所
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/ACL4SSR/ACL4SSR">@ACL4SSR/ACL4SSR</a>
      </td>
    </tr>
    <tr>
      <td><code>dazn</code></td>
      <td>DAZN 体育流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>disney</code></td>
      <td>迪士尼 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>dmca</code></td>
      <td>DMCA 敏感域名
      <br> 包含机场审计、Tracker、PT、迅雷以及需要直连的常见软件列表 <br> 规则源:
      <a href="https://github.com/LM-Firefly/Rules">@LM-Firefly/Rules</a>
      <a href="https://github.com/XIU2/TrackersListCollection">@XIU2/TrackersListCollection</a>
      <a href="https://github.com/ngosang/trackerslist">@ngosang/trackerslist</a>
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/Loyalsoldier/clash-rules">@Loyalsoldier/clash-rules</a>
      </td>
    </tr>
    <tr>
      <td><code>dmm</code></td>
      <td>DMM 在线内容提供商
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>douyin</code></td>
      <td>抖音短视频平台
      <br> 规则源:
      <a href="https://github.com/LM-Firefly/Rules">@LM-Firefly/Rules</a>
      </td>
    </tr>
    <tr>
      <td><code>ecommerce</code></td>
      <td>电子商务平台 <br> 包含 Amazon, eBay, Shopee, Shopify 等
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>fake-ip-filter</code></td>
      <td>fake-ip 过滤黑名单
      <br> 规则源:
      <a href="https://github.com/juewuy/ShellCrash">@juewuy/ShellCrash</a>
      <a href="https://github.com/vernesong/OpenClash">@vernesong/OpenClash</a>
      </td>
    </tr>
        <tr>
      <td><code>forum</code></td>
      <td>国外常见论坛平台
      <br> 包括 Reddit, V2EX, Quora, PTT, 4chan 等
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>games-cn</code></td>
      <td>游戏平台、游戏下载在中国大陆可直连的规则列表
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>games</code></td>
      <td>需要代理的游戏平台规则
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>gfw</code></td>
      <td>被 GFW 屏蔽的域名列表
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>gits</code></td>
      <td>Git仓库规则集合 <br> 包含 GitHub, GitLab, Gitee, GitBook
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>google</code></td>
      <td> Google 谷歌服务
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>googlefcm</code></td>
      <td>Google Firebase Cloud Messaging 谷歌推送服务
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>hbo</code></td>
      <td>HBO 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>httpdns</code></td>
      <td>需要屏蔽的 HTTPDNS 列表
      <br> 规则源:
      <a href="https://github.com/VirgilClyne/GetSomeFries">@VirgilClyne/GetSomeFries</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/SunsetMkt/anti-ip-attribution">@SunsetMkt/anti-ip-attribution</a>
      </td>
    </tr>
    <tr>
      <td><code>hulu</code></td>
      <td>Hulu 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>microsoft-cn</code></td>
      <td>Microsoft 微软在中国大陆可直连的规则列表
      <br> 规则源:
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>microsoft</code></td>
      <td>Microsoft 微软服务
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>netflix</code></td>
      <td>Netflix 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>niconico</code></td>
      <td>Niconico 视频网站
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>onedrive</code></td>
      <td>OneDrive 网盘
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>paypal</code></td>
      <td>PayPal 在线支付与转账平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>primevideo</code></td>
      <td>PrimeVideo 视频流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>private</code></td>
      <td>私有网络地址
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>proxy</code></td>
      <td>国外需要代理的域名
      <br> 规则源:
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/Loyalsoldier/v2ray-rules-dat">@Loyalsoldier/v2ray-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>socialmedia-cn</code></td>
      <td>国内社交媒体规则集合 <br> 包含 NGA, XiaoHongShu, Weibo, Zhihu, DouBan, Coolapk
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>socialmedia</code></td>
      <td>国外社交媒体规则集合 <br> 包含 Discord, Whatsapp, Line, Instagram, Facebook, Telegram, Twitter, Signal 等
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>speedtest</code></td>
      <td>收集到的 Ookla SpeedTest 服务器
      <br> 规则源:
      <a href="https://github.com/SukkaW/Surge">@SukkaW/Surge</a>
      <a href="https://github.com/LM-Firefly/Rules">@LM-Firefly/Rules</a>
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>spotify</code></td>
      <td>Spotify 音乐流媒体平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>talkatone</code></td>
      <td>Talkatone 互联网语音通话和短信服务
      <br> 规则源:
      <a href="https://github.com/LOWERTOP/Shadowrocket-First">@LOWERTOP/Shadowrocket-First</a>
      </td>
    </tr>
    <tr>
      <td><code>tiktok</code></td>
      <td>TikTok 短视频平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>tld-proxy</code></td>
      <td>国外需要代理的顶级域名
      <br> 规则源:
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>twitch</code></td>
      <td>Twitch 直播平台
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
    <tr>
      <td><code>youtube</code></td>
      <td>YouTube 视频网站
      <br> 规则源:
      <a href="https://github.com/blackmatrix7/ios_rule_script">@blackmatrix7/ios_rule_script</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      </td>
    </tr>
  </tbody>
</table>

### 特殊规则
#### 修改IP归属地规则
> [!IMPORTANT]
>
> 来源于 [SunsetMkt](https://github.com/SunsetMkt) 的 [anti-ip-attribution](https://github.com/SunsetMkt/anti-ip-attribution) 仓库，针对部分国内软件显示的 IP 归属地进行修改，无法保证规则的可用性，甚至可能会触发**账号风控**，不推荐使用

<table>
  <thead>
    <tr>
      <th>规则名称</th>
      <th>规则描述</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>httpdns</code></td>
      <td>需要屏蔽的 HTTPDNS 列表，须放置在三者开头
      <br> 规则源:
      <a href="https://github.com/VirgilClyne/GetSomeFries">@VirgilClyne/GetSomeFries</a>
      <a href="https://github.com/MetaCubeX/meta-rules-dat">@MetaCubeX/meta-rules-dat</a>
      <a href="https://github.com/SunsetMkt/anti-ip-attribution">@SunsetMkt/anti-ip-attribution</a>
      </td>
    </tr>
    <tr>
      <td><code>iplocation-direct</code></td>
      <td>修改国内软件 IP 归属地的直连规则，须放置在三者中间
      <br> 规则源:
      <a href="https://github.com/SunsetMkt/anti-ip-attribution">@SunsetMkt/anti-ip-attribution</a>
      </td>
    </tr>
    <tr>
      <td><code>iplocation-proxy</code></td>
      <td>修改国内软件 IP 归属地的代理规则，不建议直接使用，而是将你有代理需求的软件规则放置在前两个规则之后
      <br> 规则源:
      <a href="https://github.com/SunsetMkt/anti-ip-attribution">@SunsetMkt/anti-ip-attribution</a>
      </td>
    </tr>
  </tbody>
</table>

#### 特殊用途的大陆域名规则

> [!IMPORTANT]
>
> 使用场景: 家庭网络中使用了 **Clash.Meta/Mihomo** 内核的插件进行透明代理，开启了类似绕过大陆IP的功能，同时你又希望对某些特定国内域名分流
>
> 解决思路: 给你需要分流的国内域名分配 fake-ip 使其进入内核

以 bilibili 为例

解决方法 1: 将 fake-ip-filter-mode 设为白名单模式，给 bilibili 分配 fake-ip，此时 bilibili 分配 fake-ip，其它域名则获取 real-ip

```yaml
dns:
  fake-ip-filter-mode: whitelist
  fake-ip-filter: ['rule-set:bilibili']
```
解决方法 2: 使用默认的黑名单模式，fake-ip-filter 填入本仓库中的 cn-b 规则(排除 bilibili 的大陆域名)，此时 bilibili 和国外域名分配 fake-ip，其它域名则获取 real-ip

```yaml
dns:
  # fake-ip-filter-mode: blacklist
  fake-ip-filter: ['rule-set:cn-b']
```

<table>
  <thead>
    <tr>
      <th>规则名称</th>
      <th>规则描述</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>cn-b</code></td>
      <td>排除 <code>bilibili</code> 的中国大陆域名</td>
    </tr>
    <tr>
      <td><code>cn-bd</code></td>
      <td>排除 <code>bilibili</code> 与 <code>douyin</code> 的中国大陆域名</td>
    </tr>
    <tr>
      <td><code>cn-bs</code></td>
      <td>排除 <code>bilibili</code> 与 <code>socialmedia-cn</code> 的中国大陆域名</td>
    </tr>
    <tr>
      <td><code>cn-bsd</code></td>
      <td>排除 <code>bilibili</code> 、 <code>douyin</code> 和 <code>socialmedia-cn</code> 的中国大陆域名</td>
    </tr>
  </tbody>
</table>

## 规则目录

### 完整规则集
<table>
    <tr>
        <th>Surge</th>
        <th>Loon</th>
        <th>ShadowRocket</th>
        <th>QuantumultX</th>
        <th>Meta(Full)</th>
        <th>Stash(Full)</th>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/abema.list">[surge] abema</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/abema.list">[Loon] abema</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/abema.list">[ShadowRocket] abema</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/abema.list">[QuantumultX] abema</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/abema.list">[Meta] abema</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/abema.list">[Stash] abema</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/adrules.list">[surge] adrules</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/adrules.list">[Loon] adrules</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/adrules.list">[ShadowRocket] adrules</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/adrules.list">[QuantumultX] adrules</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/adrules.list">[Meta] adrules</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/adrules.list">[Stash] adrules</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/ai.list">[surge] ai</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/ai.list">[Loon] ai</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/ai.list">[ShadowRocket] ai</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/ai.list">[QuantumultX] ai</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ai.list">[Meta] ai</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ai.list">[Stash] ai</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/apns.list">[surge] apns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/apns.list">[Loon] apns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/apns.list">[ShadowRocket] apns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/apns.list">[QuantumultX] apns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/apns.list">[Meta] apns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/apns.list">[Stash] apns</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/apple-cn.list">[surge] apple-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/apple-cn.list">[Loon] apple-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/apple-cn.list">[ShadowRocket] apple-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/apple-cn.list">[QuantumultX] apple-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/apple-cn.list">[Meta] apple-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/apple-cn.list">[Stash] apple-cn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/apple-proxy.list">[surge] apple-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/apple-proxy.list">[Loon] apple-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/apple-proxy.list">[ShadowRocket] apple-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/apple-proxy.list">[QuantumultX] apple-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/apple-proxy.list">[Meta] apple-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/apple-proxy.list">[Stash] apple-proxy</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/apple-tv.list">[surge] apple-tv</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/apple-tv.list">[Loon] apple-tv</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/apple-tv.list">[ShadowRocket] apple-tv</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/apple-tv.list">[QuantumultX] apple-tv</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/apple-tv.list">[Meta] apple-tv</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/apple-tv.list">[Stash] apple-tv</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/apple.list">[surge] apple</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/apple.list">[Loon] apple</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/apple.list">[ShadowRocket] apple</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/apple.list">[QuantumultX] apple</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/apple.list">[Meta] apple</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/apple.list">[Stash] apple</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/bahamut.list">[surge] bahamut</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/bahamut.list">[Loon] bahamut</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/bahamut.list">[ShadowRocket] bahamut</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/bahamut.list">[QuantumultX] bahamut</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/bahamut.list">[Meta] bahamut</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/bahamut.list">[Stash] bahamut</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/bilibili.list">[surge] bilibili</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/bilibili.list">[Loon] bilibili</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/bilibili.list">[ShadowRocket] bilibili</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/bilibili.list">[QuantumultX] bilibili</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/bilibili.list">[Meta] bilibili</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/bilibili.list">[Stash] bilibili</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/cdn.list">[surge] cdn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/cdn.list">[Loon] cdn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/cdn.list">[ShadowRocket] cdn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/cdn.list">[QuantumultX] cdn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/cdn.list">[Meta] cdn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/cdn.list">[Stash] cdn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/cn.list">[surge] cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/cn.list">[Loon] cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/cn.list">[ShadowRocket] cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/cn.list">[QuantumultX] cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/cn.list">[Meta] cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/cn.list">[Stash] cn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/cncidr.list">[surge] cncidr</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/cncidr.list">[Loon] cncidr</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/cncidr.list">[ShadowRocket] cncidr</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/cncidr.list">[QuantumultX] cncidr</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/cncidr.list">[Meta] cncidr</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/cncidr.list">[Stash] cncidr</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/cncidr-resolve.list">[surge] cncidr-resolve</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/cncidr-resolve.list">[Loon] cncidr-resolve</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/cncidr-resolve.list">[ShadowRocket] cncidr-resolve</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/cncidr-resolve.list">[Meta] cncidr-resolve</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/cncidr-resolve.list">[Stash] cncidr-resolve</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/crypto.list">[surge] crypto</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/crypto.list">[Loon] crypto</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/crypto.list">[ShadowRocket] crypto</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/crypto.list">[QuantumultX] crypto</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/crypto.list">[Meta] crypto</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/crypto.list">[Stash] crypto</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/dazn.list">[surge] dazn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/dazn.list">[Loon] dazn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/dazn.list">[ShadowRocket] dazn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/dazn.list">[QuantumultX] dazn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/dazn.list">[Meta] dazn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/dazn.list">[Stash] dazn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/disney.list">[surge] disney</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/disney.list">[Loon] disney</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/disney.list">[ShadowRocket] disney</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/disney.list">[QuantumultX] disney</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/disney.list">[Meta] disney</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/disney.list">[Stash] disney</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/dmca.list">[surge] dmca</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/dmca.list">[Loon] dmca</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/dmca.list">[ShadowRocket] dmca</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/dmca.list">[QuantumultX] dmca</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/dmca.list">[Meta] dmca</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/dmca.list">[Stash] dmca</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/dmm.list">[surge] dmm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/dmm.list">[Loon] dmm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/dmm.list">[ShadowRocket] dmm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/dmm.list">[QuantumultX] dmm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/dmm.list">[Meta] dmm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/dmm.list">[Stash] dmm</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/douyin.list">[surge] douyin</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/douyin.list">[Loon] douyin</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/douyin.list">[ShadowRocket] douyin</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/douyin.list">[QuantumultX] douyin</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/douyin.list">[Meta] douyin</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/douyin.list">[Stash] douyin</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/ecommerce.list">[surge] ecommerce</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/ecommerce.list">[Loon] ecommerce</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/ecommerce.list">[ShadowRocket] ecommerce</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/ecommerce.list">[QuantumultX] ecommerce</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ecommerce.list">[Meta] ecommerce</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ecommerce.list">[Stash] ecommerce</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/forum.list">[surge] forum</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/forum.list">[Loon] forum</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/forum.list">[ShadowRocket] forum</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/forum.list">[QuantumultX] forum</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/forum.list">[Meta] forum</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/forum.list">[Stash] forum</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/games-cn.list">[surge] games-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/games-cn.list">[Loon] games-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/games-cn.list">[ShadowRocket] games-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/games-cn.list">[QuantumultX] games-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/games-cn.list">[Meta] games-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/games-cn.list">[Stash] games-cn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/games.list">[surge] games</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/games.list">[Loon] games</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/games.list">[ShadowRocket] games</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/games.list">[QuantumultX] games</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/games.list">[Meta] games</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/games.list">[Stash] games</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/gfw.list">[surge] gfw</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/gfw.list">[Loon] gfw</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/gfw.list">[ShadowRocket] gfw</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/gfw.list">[QuantumultX] gfw</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/gfw.list">[Meta] gfw</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/gfw.list">[Stash] gfw</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/gits.list">[surge] gits</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/gits.list">[Loon] gits</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/gits.list">[ShadowRocket] gits</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/gits.list">[QuantumultX] gits</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/gits.list">[Meta] gits</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/gits.list">[Stash] gits</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/google.list">[surge] google</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/google.list">[Loon] google</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/google.list">[ShadowRocket] google</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/google.list">[QuantumultX] google</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/google.list">[Meta] google</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/google.list">[Stash] google</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/googlefcm.list">[surge] googlefcm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/googlefcm.list">[Loon] googlefcm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/googlefcm.list">[ShadowRocket] googlefcm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/googlefcm.list">[QuantumultX] googlefcm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/googlefcm.list">[Meta] googlefcm</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/googlefcm.list">[Stash] googlefcm</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/hbo.list">[surge] hbo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/hbo.list">[Loon] hbo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/hbo.list">[ShadowRocket] hbo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/hbo.list">[QuantumultX] hbo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/hbo.list">[Meta] hbo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/hbo.list">[Stash] hbo</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/httpdns.list">[surge] httpdns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/httpdns.list">[Loon] httpdns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/httpdns.list">[ShadowRocket] httpdns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/httpdns.list">[QuantumultX] httpdns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/httpdns.list">[Meta] httpdns</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/httpdns.list">[Stash] httpdns</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/hulu.list">[surge] hulu</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/hulu.list">[Loon] hulu</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/hulu.list">[ShadowRocket] hulu</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/hulu.list">[QuantumultX] hulu</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/hulu.list">[Meta] hulu</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/hulu.list">[Stash] hulu</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/iplocation-direct.list">[surge] iplocation-direct</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/iplocation-direct.list">[Loon] iplocation-direct</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/iplocation-direct.list">[ShadowRocket] iplocation-direct</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/iplocation-direct.list">[QuantumultX] iplocation-direct</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/iplocation-direct.list">[Meta] iplocation-direct</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/iplocation-direct.list">[Stash] iplocation-direct</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/iplocation-proxy.list">[surge] iplocation-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/iplocation-proxy.list">[Loon] iplocation-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/iplocation-proxy.list">[ShadowRocket] iplocation-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/iplocation-proxy.list">[QuantumultX] iplocation-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/iplocation-proxy.list">[Meta] iplocation-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/iplocation-proxy.list">[Stash] iplocation-proxy</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/microsoft-cn.list">[surge] microsoft-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/microsoft-cn.list">[Loon] microsoft-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/microsoft-cn.list">[ShadowRocket] microsoft-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/microsoft-cn.list">[QuantumultX] microsoft-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/microsoft-cn.list">[Meta] microsoft-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/microsoft-cn.list">[Stash] microsoft-cn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/microsoft.list">[surge] microsoft</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/microsoft.list">[Loon] microsoft</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/microsoft.list">[ShadowRocket] microsoft</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/microsoft.list">[QuantumultX] microsoft</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/microsoft.list">[Meta] microsoft</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/microsoft.list">[Stash] microsoft</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/netflix.list">[surge] netflix</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/netflix.list">[Loon] netflix</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/netflix.list">[ShadowRocket] netflix</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/netflix.list">[QuantumultX] netflix</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/netflix.list">[Meta] netflix</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/netflix.list">[Stash] netflix</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/niconico.list">[surge] niconico</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/niconico.list">[Loon] niconico</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/niconico.list">[ShadowRocket] niconico</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/niconico.list">[QuantumultX] niconico</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/niconico.list">[Meta] niconico</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/niconico.list">[Stash] niconico</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/onedrive.list">[surge] onedrive</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/onedrive.list">[Loon] onedrive</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/onedrive.list">[ShadowRocket] onedrive</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/onedrive.list">[QuantumultX] onedrive</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/onedrive.list">[Meta] onedrive</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/onedrive.list">[Stash] onedrive</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/paypal.list">[surge] paypal</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/paypal.list">[Loon] paypal</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/paypal.list">[ShadowRocket] paypal</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/paypal.list">[QuantumultX] paypal</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/paypal.list">[Meta] paypal</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/paypal.list">[Stash] paypal</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/primevideo.list">[surge] primevideo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/primevideo.list">[Loon] primevideo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/primevideo.list">[ShadowRocket] primevideo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/primevideo.list">[QuantumultX] primevideo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/primevideo.list">[Meta] primevideo</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/primevideo.list">[Stash] primevideo</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/private.list">[surge] private</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/private.list">[Loon] private</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/private.list">[ShadowRocket] private</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/private.list">[QuantumultX] private</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/private.list">[Meta] private</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/private.list">[Stash] private</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/proxy.list">[surge] proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/proxy.list">[Loon] proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/proxy.list">[ShadowRocket] proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/proxy.list">[QuantumultX] proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/proxy.list">[Meta] proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/proxy.list">[Stash] proxy</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/socialmedia-cn.list">[surge] socialmedia-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/socialmedia-cn.list">[Loon] socialmedia-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/socialmedia-cn.list">[ShadowRocket] socialmedia-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/socialmedia-cn.list">[QuantumultX] socialmedia-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/socialmedia-cn.list">[Meta] socialmedia-cn</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/socialmedia-cn.list">[Stash] socialmedia-cn</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/socialmedia.list">[surge] socialmedia</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/socialmedia.list">[Loon] socialmedia</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/socialmedia.list">[ShadowRocket] socialmedia</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/socialmedia.list">[QuantumultX] socialmedia</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/socialmedia.list">[Meta] socialmedia</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/socialmedia.list">[Stash] socialmedia</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/speedtest.list">[surge] speedtest</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/speedtest.list">[Loon] speedtest</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/speedtest.list">[ShadowRocket] speedtest</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/speedtest.list">[QuantumultX] speedtest</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/speedtest.list">[Meta] speedtest</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/speedtest.list">[Stash] speedtest</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/spotify.list">[surge] spotify</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/spotify.list">[Loon] spotify</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/spotify.list">[ShadowRocket] spotify</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/spotify.list">[QuantumultX] spotify</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/spotify.list">[Meta] spotify</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/spotify.list">[Stash] spotify</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/talkatone.list">[surge] talkatone</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/talkatone.list">[Loon] talkatone</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/talkatone.list">[ShadowRocket] talkatone</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/talkatone.list">[QuantumultX] talkatone</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/talkatone.list">[Meta] talkatone</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/talkatone.list">[Stash] talkatone</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/tiktok.list">[surge] tiktok</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/tiktok.list">[Loon] tiktok</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/tiktok.list">[ShadowRocket] tiktok</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/tiktok.list">[QuantumultX] tiktok</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/tiktok.list">[Meta] tiktok</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/tiktok.list">[Stash] tiktok</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/tld-proxy.list">[surge] tld-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/tld-proxy.list">[Loon] tld-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/tld-proxy.list">[ShadowRocket] tld-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/tld-proxy.list">[QuantumultX] tld-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/tld-proxy.list">[Meta] tld-proxy</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/tld-proxy.list">[Stash] tld-proxy</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/twitch.list">[surge] twitch</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/twitch.list">[Loon] twitch</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/twitch.list">[ShadowRocket] twitch</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/twitch.list">[QuantumultX] twitch</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/twitch.list">[Meta] twitch</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/twitch.list">[Stash] twitch</a></td>
        </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/surge/youtube.list">[surge] youtube</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/loon/youtube.list">[Loon] youtube</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/shadowrocket/youtube.list">[ShadowRocket] youtube</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/quantumultx/youtube.list">[QuantumultX] youtube</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/youtube.list">[Meta] youtube</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/youtube.list">[Stash] youtube</a></td>
    </tr>
</table>


### Clash.Meta/Stash拆分规则集
<table>
    <tr>
        <th>meta/domain</th>
        <th>meta/ipcidr</th>
        <th>meta/classical</th>
        <th>stash/domain</th>
        <th>stash/ipcidr</th>
        <th>stash/classical</th>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/abema.mrs">[meta/domain] abema(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/abema.list">[meta/domain] abema(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/abema.mrs">[stash/domain] abema(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/abema.list">[stash/domain] abema(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/adrules.mrs">[meta/domain] adrules(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/adrules.list">[meta/domain] adrules(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/adrules.mrs">[meta/ipcidr] adrules(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/adrules.list">[meta/ipcidr] adrules(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/adrules.mrs">[stash/domain] adrules(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/adrules.list">[stash/domain] adrules(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/adrules.mrs">[stash/ipcidr] adrules(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/adrules.list">[stash/ipcidr] adrules(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/ai.mrs">[meta/domain] ai(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/ai.list">[meta/domain] ai(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/ai.mrs">[stash/domain] ai(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/ai.list">[stash/domain] ai(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apns.mrs">[meta/domain] apns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apns.list">[meta/domain] apns(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/apns.mrs">[meta/ipcidr] apns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/apns.list">[meta/ipcidr] apns(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apns.mrs">[stash/domain] apns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apns.list">[stash/domain] apns(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/apns.mrs">[stash/ipcidr] apns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/apns.list">[stash/ipcidr] apns(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-cn.mrs">[meta/domain] apple-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-cn.list">[meta/domain] apple-cn(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-cn.mrs">[stash/domain] apple-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-cn.list">[stash/domain] apple-cn(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-proxy.mrs">[meta/domain] apple-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-proxy.list">[meta/domain] apple-proxy(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-proxy.mrs">[stash/domain] apple-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-proxy.list">[stash/domain] apple-proxy(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-tv.mrs">[meta/domain] apple-tv(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple-tv.list">[meta/domain] apple-tv(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-tv.mrs">[stash/domain] apple-tv(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple-tv.list">[stash/domain] apple-tv(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple.mrs">[meta/domain] apple(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/apple.list">[meta/domain] apple(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/apple.mrs">[meta/ipcidr] apple(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/apple.list">[meta/ipcidr] apple(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple.mrs">[stash/domain] apple(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/apple.list">[stash/domain] apple(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/apple.mrs">[stash/ipcidr] apple(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/apple.list">[stash/ipcidr] apple(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/bahamut.mrs">[meta/domain] bahamut(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/bahamut.list">[meta/domain] bahamut(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/bahamut.mrs">[stash/domain] bahamut(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/bahamut.list">[stash/domain] bahamut(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/bilibili.mrs">[meta/domain] bilibili(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/bilibili.list">[meta/domain] bilibili(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/bilibili.mrs">[meta/ipcidr] bilibili(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/bilibili.list">[meta/ipcidr] bilibili(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/bilibili.mrs">[stash/domain] bilibili(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/bilibili.list">[stash/domain] bilibili(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/bilibili.mrs">[stash/ipcidr] bilibili(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/bilibili.list">[stash/ipcidr] bilibili(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cdn.mrs">[meta/domain] cdn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cdn.list">[meta/domain] cdn(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/classical/cdn.list">[meta/classical] cdn(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/cdn.mrs">[stash/domain] cdn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/cdn.list">[stash/domain] cdn(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/classical/cdn.list">[stash/classical] cdn(text)</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn.mrs">[meta/domain] cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn.list">[meta/domain] cn(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/cn.mrs">[meta/ipcidr] cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/cn.list">[meta/ipcidr] cn(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/cn.mrs">[stash/domain] cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/cn.list">[stash/domain] cn(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/cn.mrs">[stash/ipcidr] cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/cn.list">[stash/ipcidr] cn(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/crypto.mrs">[meta/domain] crypto(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/crypto.list">[meta/domain] crypto(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/crypto.mrs">[stash/domain] crypto(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/crypto.list">[stash/domain] crypto(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dazn.mrs">[meta/domain] dazn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dazn.list">[meta/domain] dazn(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dazn.mrs">[stash/domain] dazn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dazn.list">[stash/domain] dazn(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/disney.mrs">[meta/domain] disney(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/disney.list">[meta/domain] disney(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/disney.mrs">[stash/domain] disney(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/disney.list">[stash/domain] disney(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dmca.mrs">[meta/domain] dmca(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dmca.list">[meta/domain] dmca(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/dmca.mrs">[meta/ipcidr] dmca(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/dmca.list">[meta/ipcidr] dmca(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/classical/dmca.list">[meta/classical] dmca(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dmca.mrs">[stash/domain] dmca(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dmca.list">[stash/domain] dmca(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/dmca.mrs">[stash/ipcidr] dmca(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/dmca.list">[stash/ipcidr] dmca(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/classical/dmca.list">[stash/classical] dmca(text)</a></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dmm.mrs">[meta/domain] dmm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/dmm.list">[meta/domain] dmm(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/dmm.mrs">[meta/ipcidr] dmm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/dmm.list">[meta/ipcidr] dmm(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dmm.mrs">[stash/domain] dmm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/dmm.list">[stash/domain] dmm(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/dmm.mrs">[stash/ipcidr] dmm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/dmm.list">[stash/ipcidr] dmm(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/douyin.mrs">[meta/domain] douyin(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/douyin.list">[meta/domain] douyin(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/douyin.mrs">[stash/domain] douyin(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/douyin.list">[stash/domain] douyin(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/ecommerce.mrs">[meta/domain] ecommerce(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/ecommerce.list">[meta/domain] ecommerce(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/ecommerce.mrs">[meta/ipcidr] ecommerce(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/ecommerce.list">[meta/ipcidr] ecommerce(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/ecommerce.mrs">[stash/domain] ecommerce(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/ecommerce.list">[stash/domain] ecommerce(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/ecommerce.mrs">[stash/ipcidr] ecommerce(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/ecommerce.list">[stash/ipcidr] ecommerce(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/forum.mrs">[meta/domain] forum(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/forum.list">[meta/domain] forum(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/forum.mrs">[stash/domain] forum(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/forum.list">[stash/domain] forum(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/games-cn.mrs">[meta/domain] games-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/games-cn.list">[meta/domain] games-cn(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/games-cn.mrs">[stash/domain] games-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/games-cn.list">[stash/domain] games-cn(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/games.mrs">[meta/domain] games(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/games.list">[meta/domain] games(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/games.mrs">[meta/ipcidr] games(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/games.list">[meta/ipcidr] games(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/games.mrs">[stash/domain] games(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/games.list">[stash/domain] games(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/games.mrs">[stash/ipcidr] games(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/games.list">[stash/ipcidr] games(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/gfw.mrs">[meta/domain] gfw(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/gfw.list">[meta/domain] gfw(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/gfw.mrs">[meta/ipcidr] gfw(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/gfw.list">[meta/ipcidr] gfw(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/gfw.mrs">[stash/domain] gfw(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/gfw.list">[stash/domain] gfw(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/gfw.mrs">[stash/ipcidr] gfw(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/gfw.list">[stash/ipcidr] gfw(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/gits.mrs">[meta/domain] gits(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/gits.list">[meta/domain] gits(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/gits.mrs">[stash/domain] gits(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/gits.list">[stash/domain] gits(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/google.mrs">[meta/domain] google(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/google.list">[meta/domain] google(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/google.mrs">[meta/ipcidr] google(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/google.list">[meta/ipcidr] google(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/google.mrs">[stash/domain] google(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/google.list">[stash/domain] google(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/google.mrs">[stash/ipcidr] google(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/google.list">[stash/ipcidr] google(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/googlefcm.mrs">[meta/domain] googlefcm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/googlefcm.list">[meta/domain] googlefcm(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/googlefcm.mrs">[meta/ipcidr] googlefcm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/googlefcm.list">[meta/ipcidr] googlefcm(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/googlefcm.mrs">[stash/domain] googlefcm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/googlefcm.list">[stash/domain] googlefcm(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/googlefcm.mrs">[stash/ipcidr] googlefcm(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/googlefcm.list">[stash/ipcidr] googlefcm(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/hbo.mrs">[meta/domain] hbo(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/hbo.list">[meta/domain] hbo(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/hbo.mrs">[stash/domain] hbo(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/hbo.list">[stash/domain] hbo(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/httpdns.mrs">[meta/domain] httpdns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/httpdns.list">[meta/domain] httpdns(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/httpdns.mrs">[meta/ipcidr] httpdns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/httpdns.list">[meta/ipcidr] httpdns(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/httpdns.mrs">[stash/domain] httpdns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/httpdns.list">[stash/domain] httpdns(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/httpdns.mrs">[stash/ipcidr] httpdns(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/httpdns.list">[stash/ipcidr] httpdns(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/hulu.mrs">[meta/domain] hulu(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/hulu.list">[meta/domain] hulu(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/hulu.mrs">[stash/domain] hulu(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/hulu.list">[stash/domain] hulu(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/iplocation-direct.mrs">[meta/domain] iplocation-direct(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/iplocation-direct.list">[meta/domain] iplocation-direct(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/iplocation-direct.mrs">[stash/domain] iplocation-direct(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/iplocation-direct.list">[stash/domain] iplocation-direct(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/iplocation-proxy.mrs">[meta/domain] iplocation-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/iplocation-proxy.list">[meta/domain] iplocation-proxy(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/iplocation-proxy.mrs">[meta/ipcidr] iplocation-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/iplocation-proxy.list">[meta/ipcidr] iplocation-proxy(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/iplocation-proxy.mrs">[stash/domain] iplocation-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/iplocation-proxy.list">[stash/domain] iplocation-proxy(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/iplocation-proxy.mrs">[stash/ipcidr] iplocation-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/iplocation-proxy.list">[stash/ipcidr] iplocation-proxy(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/microsoft-cn.mrs">[meta/domain] microsoft-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/microsoft-cn.list">[meta/domain] microsoft-cn(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/microsoft-cn.mrs">[stash/domain] microsoft-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/microsoft-cn.list">[stash/domain] microsoft-cn(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/microsoft.mrs">[meta/domain] microsoft(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/microsoft.list">[meta/domain] microsoft(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/microsoft.mrs">[stash/domain] microsoft(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/microsoft.list">[stash/domain] microsoft(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/netflix.mrs">[meta/domain] netflix(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/netflix.list">[meta/domain] netflix(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/netflix.mrs">[meta/ipcidr] netflix(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/netflix.list">[meta/ipcidr] netflix(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/netflix.mrs">[stash/domain] netflix(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/netflix.list">[stash/domain] netflix(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/netflix.mrs">[stash/ipcidr] netflix(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/netflix.list">[stash/ipcidr] netflix(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/niconico.mrs">[meta/domain] niconico(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/niconico.list">[meta/domain] niconico(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/niconico.mrs">[stash/domain] niconico(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/niconico.list">[stash/domain] niconico(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/onedrive.mrs">[meta/domain] onedrive(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/onedrive.list">[meta/domain] onedrive(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/onedrive.mrs">[stash/domain] onedrive(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/onedrive.list">[stash/domain] onedrive(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/paypal.mrs">[meta/domain] paypal(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/paypal.list">[meta/domain] paypal(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/paypal.mrs">[stash/domain] paypal(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/paypal.list">[stash/domain] paypal(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/primevideo.mrs">[meta/domain] primevideo(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/primevideo.list">[meta/domain] primevideo(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/primevideo.mrs">[stash/domain] primevideo(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/primevideo.list">[stash/domain] primevideo(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/private.mrs">[meta/domain] private(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/private.list">[meta/domain] private(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/private.mrs">[meta/ipcidr] private(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/private.list">[meta/ipcidr] private(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/private.mrs">[stash/domain] private(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/private.list">[stash/domain] private(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/private.mrs">[stash/ipcidr] private(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/private.list">[stash/ipcidr] private(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/proxy.mrs">[meta/domain] proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/proxy.list">[meta/domain] proxy(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/proxy.mrs">[meta/ipcidr] proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/proxy.list">[meta/ipcidr] proxy(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/proxy.mrs">[stash/domain] proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/proxy.list">[stash/domain] proxy(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/proxy.mrs">[stash/ipcidr] proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/proxy.list">[stash/ipcidr] proxy(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/socialmedia-cn.mrs">[meta/domain] socialmedia-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/socialmedia-cn.list">[meta/domain] socialmedia-cn(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/socialmedia-cn.mrs">[meta/ipcidr] socialmedia-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/socialmedia-cn.list">[meta/ipcidr] socialmedia-cn(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/socialmedia-cn.mrs">[stash/domain] socialmedia-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/socialmedia-cn.list">[stash/domain] socialmedia-cn(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/socialmedia-cn.mrs">[stash/ipcidr] socialmedia-cn(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/socialmedia-cn.list">[stash/ipcidr] socialmedia-cn(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/socialmedia.mrs">[meta/domain] socialmedia(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/socialmedia.list">[meta/domain] socialmedia(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/socialmedia.mrs">[meta/ipcidr] socialmedia(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/socialmedia.list">[meta/ipcidr] socialmedia(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/socialmedia.mrs">[stash/domain] socialmedia(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/socialmedia.list">[stash/domain] socialmedia(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/socialmedia.mrs">[stash/ipcidr] socialmedia(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/socialmedia.list">[stash/ipcidr] socialmedia(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/speedtest.mrs">[meta/domain] speedtest(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/speedtest.list">[meta/domain] speedtest(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/speedtest.mrs">[stash/domain] speedtest(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/speedtest.list">[stash/domain] speedtest(text)</a></td>
        <td></td>
        <td></td>
    </tr>
        <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/spotify.mrs">[meta/domain] spotify(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/spotify.list">[meta/domain] spotify(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/spotify.mrs">[meta/ipcidr] spotify(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/spotify.list">[meta/ipcidr] spotify(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/spotify.mrs">[stash/domain] spotify(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/spotify.list">[stash/domain] spotify(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/spotify.mrs">[stash/ipcidr] spotify(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/spotify.list">[stash/ipcidr] spotify(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/talkatone.mrs">[meta/domain] talkatone(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/talkatone.list">[meta/domain] talkatone(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/talkatone.mrs">[meta/ipcidr] talkatone(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/talkatone.list">[meta/ipcidr] talkatone(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/talkatone.mrs">[stash/domain] talkatone(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/talkatone.list">[stash/domain] talkatone(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/talkatone.mrs">[stash/ipcidr] talkatone(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/talkatone.list">[stash/ipcidr] talkatone(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/tiktok.mrs">[meta/domain] tiktok(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/tiktok.list">[meta/domain] tiktok(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/tiktok.mrs">[stash/domain] tiktok(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/tiktok.list">[stash/domain] tiktok(text)</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/tld-proxy.mrs">[meta/domain] tld-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/tld-proxy.list">[meta/domain] tld-proxy(text)</a></td>
        <td></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/tld-proxy.mrs">[stash/domain] tld-proxy(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/tld-proxy.list">[stash/domain] tld-proxy(text)</a></td>
        <td></td>
        <td></td>
    </tr>
        <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/twitch.mrs">[meta/domain] twitch(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/twitch.list">[meta/domain] twitch(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/twitch.mrs">[meta/ipcidr] twitch(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/twitch.list">[meta/ipcidr] twitch(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/twitch.mrs">[stash/domain] twitch(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/twitch.list">[stash/domain] twitch(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/twitch.mrs">[stash/ipcidr] twitch(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/twitch.list">[stash/ipcidr] twitch(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/youtube.mrs">[meta/domain] youtube(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/youtube.list">[meta/domain] youtube(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/youtube.mrs">[meta/ipcidr] youtube(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/ipcidr/youtube.list">[meta/ipcidr] youtube(text)</a></td>
        <td></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/youtube.mrs">[stash/domain] youtube(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/domain/youtube.list">[stash/domain] youtube(text)</a></td>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/youtube.mrs">[stash/ipcidr] youtube(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/stash/ipcidr/youtube.list">[stash/ipcidr] youtube(text)</a></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/fake-ip-filter.mrs">[meta/domain] fake-ip-filter(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/fake-ip-filter.list">[meta/domain] fake-ip-filter(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-b.mrs">[meta/domain] cn-b(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-b.list">[meta/domain] cn-b(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bs.mrs">[meta/domain] cn-bs(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bs.list">[meta/domain] cn-bs(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bd.mrs">[meta/domain] cn-bd(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bd.list">[meta/domain] cn-bd(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bsd.mrs">[meta/domain] cn-bsd(mrs)</a><br><br>
        <a href="https://github.com/QuixoticHeart/rule-set/raw/refs/heads/ruleset/meta/domain/cn-bsd.list">[meta/domain] cn-bsd(text)</a></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

## 致谢
**向提供数据来源的作者们表示真诚的感谢**
- [@blackmatrix7/ios_rule_script](https://github.com/blackmatrix7/ios_rule_script)
- [@MetaCubeX/meta-rules-dat](https://github.com/MetaCubeX/meta-rules-dat)
- [@felixonmars/dnsmasq-china-list](https://github.com/felixonmars/dnsmasq-china-list)
- [@Loyalsoldier/clash-rules](https://github.com/Loyalsoldier/clash-rules)
- [@Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip)
- [@Loyalsoldier/v2ray-rules-dat](https://github.com/Loyalsoldier/v2ray-rules-dat)
- [@SukkaW/Surge](https://github.com/SukkaW/Surge)
- [@LM-Firefly/Rules](https://github.com/LM-Firefly/Rules)
- [@ACL4SSR/ACL4SSR](https://github.com/ACL4SSR/ACL4SSR)
- [@SunsetMkt/anti-ip-attribution](https://github.com/SunsetMkt/anti-ip-attribution)
- [@fmz200/wool_scripts](https://github.com/fmz200/wool_scripts)
- [@LOWERTOP/Shadowrocket-First](https://github.com/LOWERTOP/Shadowrocket-First)
- [@VirgilClyne/GetSomeFries](https://github.com/VirgilClyne/GetSomeFries)
- [@Elysian-Realme/FuGfConfig](https://github.com/Elysian-Realme/FuGfConfig)
- [@juewuy/ShellCrash](https://github.com/juewuy/ShellCrash)
- [@vernesong/OpenClash](https://github.com/vernesong/OpenClash)
- [@XIU2/TrackersListCollection](https://github.com/XIU2/TrackersListCollection)
- [@ngosang/trackerslist](https://github.com/ngosang/trackerslist)
- [@uselibrary/PCDN](https://github.com/uselibrary/PCDN)
- [@ConnersHua/RuleGo](https://github.com/ConnersHua/RuleGo)
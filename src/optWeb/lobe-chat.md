# [Lobe Chat](https://github.com/lobehub/lobe-chat)

![](https://img.shields.io/github/license/lobehub/lobe-chat)

## install

[^1]

```sh
git clone --depth=1 https://github.com/lobehub/lobe-chat
cd lobe-chat
pnpm install
# pnpm add next@latest
# pnpm dev
set NODE_OPTIONS=--max-old-space-size=4096
pnpm build
```

## usage

```sh
pnpm start
# pm2 start pnpm --name lobe-chat -- run start
```

## Deploy with Docker compose

[^2]

```sh
mkdir lobe-chat
cd lobe-chat
vim docker-compose.yml
# Copy from https://lobehub.com/docs/self-hosting/platform/docker-compose#run-docker-compose-deployment-command
sudo docker compose up -d
```

## reference

- [Deploy LobeChat with Vercel](https://lobehub.com/docs/self-hosting/platform/vercel)

## resource

### mark

- #develop #General [PromptGPT](https://lobechat.com/discover/assistant/prompt-gpt)
- #tool #Programming [Convert Docker to Docker Compose](https://lobechat.com/discover/assistant/onekr-docker-2-compose) _Docker转DockerCompose_
- #profess #Education [Linux Solution Mentor](https://lobechat.com/discover/assistant/web-linux-helper) _Linux解决方案导师_

### later

- #tool #Translation [English Technology Article Reading Assistant](https://lobechat.com/discover/assistant/encn-fy) _英文科技文章阅读助手_

### cache

- #develop #Games [Godot Guru](https://lobechat.com/discover/assistant/godot-guru)
- #develop #General [LobeChat Test Engineer](https://lobechat.com/discover/assistant/lobe-chat-unit-test-dev) _LobeChat测试工程师_
- #develop #General [Prompt Keywords](https://lobechat.com/discover/assistant/prompt-ts) _Prompt提示词_
- #develop #Office [Excel Formula Master](https://lobechat.com/discover/assistant/excel-formula-master) _Excel公式大师_
- #develop #Programming [Allinone](https://lobechat.com/discover/assistant/allinone-v-1)
- #develop #Programming [Coding Wizard](https://lobehub.com/agent/coding-wizard)
- #develop #Programming [Database Expert](https://lobechat.com/discover/assistant/dba) _数据库专家_
- #develop #Programming [Deployment Specialist Agent](https://lobechat.com/discover/assistant/deployment-agent) _部署专家代理_
- #develop #Programming [Full Stack Engineer - F](https://lobechat.com/discover/assistant/full-stack-enginner-f) _全栈工程师_
- #develop #Programming [HTTP Request Master](https://lobechat.com/discover/assistant/http-request-master) _HTTP需求大师_
- #develop #Programming [LobeChat Function Maestro](https://lobechat.com/discover/assistant/lobe-chat-function-maestro) _LobeChat功能大师_
- #develop #Programming [Programming Development Assistant](https://lobechat.com/discover/assistant/coder-assistant) _编程开发助手_
- #develop #Programming [Python Development Master](https://lobechat.com/discover/assistant/py-master-id) _Python开发大师_
- #develop #Programming [Python Genius](https://lobechat.com/discover/assistant/python-genius) _Python天才_
- #develop #Programming [Shell Script Development Assistant](https://lobechat.com/discover/assistant/inux-shell-assistant) _Shell脚本开发助手_
- #develop #Programming [SSC Incremental](https://lobechat.com/discover/assistant/reat-for-analysis-coding-and-rubber-ducking) _SSC增量_
- #profess #Academic [Academic Revision Specialist](https://lobechat.com/discover/assistant/cademic-revision-specialist) _学术修订专家_
- #profess #Academic [Civil Law Consultant](https://lobechat.com/discover/assistant/law) _民法顾问_
- #profess #Academic [Criminal Defense Expert](https://lobechat.com/discover/assistant/yundaodev-1) _刑辩专家_
- #profess #Academic [Omnipedia](https://lobechat.com/discover/assistant/omnipedia)
- #profess #Academic [Socioeconomic Analyst](https://lobechat.com/discover/assistant/finance-news-analyser) _会计经济分析师_
- #profess #Career [AI Import/Export Advisor](https://lobechat.com/discover/assistant/import-and-export-advisor) _AI进出口顾问_
- #profess #Career [Business Guru](https://lobechat.com/discover/assistant/business-guru) _商业顾问_
- #profess #Career [Career Development Mentor](https://lobechat.com/discover/assistant/career-development) _职业发展导师_
- #profess #Career [Entrepreneurship and Competitiveness Expert](https://lobechat.com/discover/assistant/ntrepreneurship-and-competitiveness-expert) _创业和竞争力专家_
- #profess #Career [Financial Expert](https://lobechat.com/discover/assistant/finnance) _金融专家_
- #profess #Career [Real Estate Agent](https://lobechat.com/discover/assistant/estate-agency) _房地产经纪人_
- #profess #Career [Startup Tech Lawyer](https://lobechat.com/discover/assistant/tech-lawyer) _初创科技律师_
- #profess #Copywriting [Adaptive All-in-One Industry Consultant](https://lobechat.com/discover/assistant/iusai-qibaoba) _自适应全能产业顾问_
- #profess #Copywriting [AI Assistant for Course Content and Teaching Guidelines](https://lobechat.com/discover/ssistant/course-prep-teaching-guide-ai) _课程内容和教学指南的AI助手_
- #profess #Education [Backtracking Question Expert](https://lobechat.com/discover/assistant/step-back-expert) _后退提问专家_
- #profess #Education [Chinese History Lecturer](https://lobechat.com/discover/assistant/history-master) _国学历史讲师_
- #profess #Education [Christian Missionary](https://lobechat.com/discover/assistant/jesus-missionary) _基督传教士_
- #profess #Education [Taoist Fortune-Telling System for Clarification and Guidance](https://lobechat.com/discover/ssistant/destiny) _道教算命排疑解惑系统_
- #profess #Emotions [Tarot Reader](https://lobechat.com/discover/assistant/augur) _塔罗占卜师_
- #profess #Entertainment [Bilibili Assistant](https://lobechat.com/discover/assistant/bilibili-agent) _Bilibili助手_
- #profess #Entertainment [Wise Ethereal Mentor](https://lobechat.com/discover/assistant/ethereal-mentor) _智慧的虚幻导师_
- #profess #General [Coconut](https://lobechat.com/discover/assistant/deep-thinker-ai) _椰子_
- #profess #General [Drug Guide Expert](https://lobechat.com/discover/assistant/medication-guide) _药物指南专家_
- #profess #General [Principled Problem Solver](https://lobechat.com/discover/assistant/general-chain-of-thought) _原则性问题解决者_
- #profess #General [Reasoning assistant](https://lobechat.com/discover/assistant/cheaper-reasoning) _推理助手_
- #profess #General [The Great Biggus Dickus](https://lobechat.com/discover/assistant/all-knowing) _伟大的比古斯·迪克斯_
- #profess #Life [Green Plant Keeper: Xiao Zhi Green Uncle](https://lobechat.com/discover/assistant/xiao-zhi-greenie) _绿植管家：小智绿叔_
- #profess #Life [Healthy Recipe Recommender](https://lobechat.com/discover/assistant/healthy-recipe-recommender) _健康食谱推荐师_
- #profess #Life [SmartTrip](https://lobechat.com/discover/assistant/xiao-zhi-travel-go) _小智行程_
- #profess #Life [Traditional Chinese Medicine Practitioner](https://lobechat.com/discover/assistant/laude-national-medical-master) _老中医_
- #profess #Life [Wise Mentor](https://lobechat.com/discover/assistant/wise-mentor) _智慧导师_
- #profess #Marketing [Brand Pioneer](https://lobechat.com/discover/assistant/brand-pioneer) _品牌先锋_
- #profess #Marketing [Community Manager](https://lobechat.com/discover/assistant/community-manager) _社区经理_
- #profess #Marketing [Private Domain Operations Expert](https://lobechat.com/discover/assistant/gl-syyy) _私域运营专家_
- #profess #Marketing [Self-Media Operation Expert](https://lobechat.com/discover/assistant/gl-zmtyy) _自媒体运营专家_
- #profess #Marketing [Social Media Sage](https://lobechat.com/discover/assistant/social-media-sage) _社交媒体专家_
- #profess #Programming [DIY Guide Assistant](https://lobechat.com/discover/assistant/diy) _DIY指导助手_
- #profess #Programming [IT Systems Architect](https://lobechat.com/discover/assistant/it-system-architect) _IT系统架构师_
- #profess #Translation [Game Text Translator](https://lobechat.com/discover/assistant/translation-tutor-prompt) _游戏文本翻译师_
- #profess #Translation [Translation of Novels: English to Chinese](https://lobechat.com/discover/assistant/oveltranslation) _小说翻译英译中_
- #tool #Academic [Academic](https://lobechat.com/discover/assistant/paper-understanding) _学术论文阅读导师_
- #tool #Academic [Book Summary Expert](https://lobechat.com/discover/assistant/book-summary-expert-philo) _书籍总结专家_
- #tool #Academic [LaTeX Academic Paper Summary Assistant](https://lobechat.com/discover/assistant/latex-summarizer) _LaTeX学术论文总结助手_
- #tool #Academic [Short Book](https://lobechat.com/discover/assistant/book-summary-agent) _书籍摘要_
- #tool #Academic [Summsi](https://lobechat.com/discover/assistant/summsi)
- #tool #Copywriting [100% Human Writing](https://lobechat.com/discover/assistant/xhb-111) _100%人类写作_
- #tool #Copywriting [Chinese Text Refinement Master](https://lobechat.com/discover/assistant/chinese-touch-ups) _中文润色大师_
- #tool #Copywriting [Contract Clause Refiner v1.0](https://lobechat.com/discover/assistant/business-contract) _合同条款精炼师_
- #tool #Copywriting [Copy Optimization Assistant](https://lobechat.com/discover/assistant/top-copywriting-master) _文案优化助手_
- #tool #Copywriting [Human Author Simulator](https://lobechat.com/discover/assistant/human-writer-simulator) _人类作者模拟器_
- #tool #Copywriting [Imitation Assistant](https://lobechat.com/discover/assistant/a-1) _模仿助手_
- #tool #Copywriting [Product Title Segmentation](https://lobechat.com/discover/assistant/anxing-ai-title) _商品标题拆分_
- #tool #Copywriting [System Instruction Expert](https://lobechat.com/discover/assistant/instructer) _系统指令专家_
- #tool #Copywriting [Technical Blog Summary Expert](https://lobechat.com/discover/assistant/blog-summary) _学术博客摘要专家_
- #tool #Copywriting [Text Improver](https://lobechat.com/discover/assistant/text-improver) _文本改善者_
- #tool #Copywriting [Text Rewriting Master](https://lobechat.com/discover/assistant/write-good) _文本改写大师_
- #tool #Copywriting [Text Summarization Assistant](https://lobechat.com/discover/assistant/summary-assistant) _文本总结助手_
- #tool #Design [AI Image Prompt Architect](https://lobechat.com/discover/assistant/9-somboon) _AI图像提示建筑师_
- #tool #Design [Stable Diffusion Prompt Expert](https://lobechat.com/discover/assistant/stable-diffusion-prompt) _StableDiffusion提示词专家_
- #tool #Design [Stable Diffusion Prompts Crafter](https://lobechat.com/discover/assistant/stable-diffusion) _StableDiffusion手艺家_
- #tool #Education [Flashcard Maker](https://lobechat.com/discover/assistant/flashcard) _抽认卡制作师_
- #tool #Education [Mistaker](https://lobechat.com/discover/assistant/english)
- #tool #Education [Nutrition Analyzer](https://lobechat.com/discover/assistant/nutrition-analyzer) _营养分析器_
- #tool #Game [YouTube Summarizer Pro](https://lobechat.com/discover/assistant/youtube-summarizer-pro) _YouTube摘要专家_
- #tool #General [Search](https://lobechat.com/discover/assistant/search) _搜一搜_
- #tool #General [Web Content Summarization Expert](https://lobechat.com/discover/assistant/url-summary) _网页内容总结专家_
- #tool #Life [Nutritionist](https://lobechat.com/discover/assistant/nutritionist) _营养顾问_
- #tool #Life [Recipe Assistant](https://lobechat.com/discover/assistant/recipe-assistant-cn) _菜谱小助手_
- #tool #Life [Recipe Generator](https://lobechat.com/discover/assistant/recipe-generator) _食谱生成器_
- #tool #Office [Weekly Report Assistant](https://lobechat.com/discover/assistant/write-report-assistant-development) _周报助手_
- #tool #Programming [Cron Expression Assistant](https://lobechat.com/discover/assistant/crontab-generate) _Cron表达式助手_
- #tool #Programming [GitHub Finder](https://lobechat.com/discover/assistant/github-finder)
- #tool #Programming [GitHub Project Analyst](https://lobechat.com/discover/assistant/web-github-analyze) _GitHub项目分析师_
- #tool #Programming [Minimal Artifact Architect](https://lobechat.com/discover/assistant/minimal-artifact-architect) _最小化的工件架构师_
- #write #Career [Product Copywriting](https://lobechat.com/discover/assistant/copywriting) _产品文案撰写_
- #write #Copywriting [Advertising Copywriting Master](https://lobechat.com/discover/assistant/dvertising-copywriting-master) _广告文案创作大师_
- #write #Copywriting [Amazon Listing Copywriter](https://lobechat.com/discover/assistant/amazon-listing-copywriter) _亚马逊清单文案撰稿员_
- #write #Copywriting [Popular Science Writing Assistant](https://lobechat.com/discover/assistant/opular-science-writer) _通俗科普创作助手_
- #write #Copywriting [Product Description](https://lobechat.com/discover/assistant/product-description) _产品描述_
- #write #Copywriting [Product Review](https://lobechat.com/discover/assistant/product-reviews) _产品评价_
- #write #Copywriting [Sales Description Specialist](https://lobechat.com/discover/assistant/verkauf-kleinanzeigen) _销售描述专家_
- #write #Copywriting [Sharp Commentator](https://lobechat.com/discover/assistant/ruipingshi) _锐评师_
- #write #Copywriting [Short Video Script Assistant](https://lobechat.com/discover/assistant/tik-tok-director) _视频脚本助手_
- #write #Copywriting [TikTok Script Writer](https://lobechat.com/discover/assistant/tiktok-script-writer) _TikTok脚本撰写器_
- #write #Copywriting [Title Expansion Expert](https://lobechat.com/discover/assistant/title-expansion-writer) _标题扩写专家_
- #write #Copywriting [Xiaohongshu Copywriting](https://lobechat.com/discover/assistant/xiao-hong-shu-wenan-id) _小红书文案_
- #write #Copywriting [Xiaohongshu Review Assistant](https://lobechat.com/discover/assistant/xhs-evl-cl) _小红书审核助理_
- #write #Education [Master of Structured Expression](https://lobechat.com/discover/assistant/structured-expression) _结构化表达大师_
- #write #Education [New Interpretations of Chinese](https://lobechat.com/discover/assistant/hanyuxinjie) _汉语新解_
- #write #Games [Steam Game Reviews](https://lobechat.com/discover/assistant/steam-agent) _Steam游戏评测_

[^1]: [Technical Development Getting Started Guide - LobeHub](https://lobehub.com/docs/development/start)
[^2]: [Docker Compose Deployment Guide - LobeHub](https://lobehub.com/docs/self-hosting/platform/docker-compose)

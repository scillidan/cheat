# [Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

> A web interface for Stable Diffusion, implemented using Gradio library. [AUTOMATIC1111/stable-diffusion-webui]

> 一个Stable Diffusion的网络界面，使用Gradio库实现。 [AUTOMATIC1111/stable-diffusion-webui]

## install

[^1] [^2] [^3] [^4]

```sh
git clone --depth=1 https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui
python -m venv venv
venv\Scripts\activate.bat
pip install torch torchvision torchaudio xformers --index-url https://download.pytorch.org/whl/cu121
subl webui-user.bat
```

```
set COMMANDLINE_ARGS=--xformers --port <port>
set XFORMERS_MORE_DETAILS=1
```

Download type `Checkpoint *` and put file `*.safetensors` into `models/Stable-diffusion`. Liked [Earth Satellite Image Map Generator Mix](https://civitai.com/models/18022/earth-satellite-image-map-generator-mix).

## usage

```sh
pip install hf_transfer
webui-user.bat
```

## Install extension

1. Extensions → Available → Load from → Search and Install.
2. Extensions → Install from URL.
3. Extensions → Installed → Apply and restartUI.

## reference

- #option [Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings)
- [How to make web-ui available on local network](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/6589)
- [Choosing which GPU to use when running](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/1561)

## resource

### mark

- #action [ControlNet for Stable Diffusion WebUI](https://github.com/Mikubill/sd-webui-controlnet) _sd-webui-controlnet_
- #edit [SD Webui Vectorscope CC](https://github.com/Haoming02/sd-webui-vectorscope-cc) _SD Webui Vectorscope CC_
- #img2txt [CLIP Interrogator extension ...](https://github.com/pharmapsychotic/clip-interrogator-ext) _CLIP Interrogator_
- #img2txt [Danbooru Prompt](https://github.com/EnsignMK/danbooru-prompt) _Danbooru Prompt_
- #info [System Info tab extensions for SD Automatic WebUI](https://github.com/vladmandic/sd-extension-system-info) _System info_
- #merge [Checkpoint Model Mixer extension](https://github.com/wkpark/sd-webui-model-mixer) _Model Mixer_
- #meta [SD WebUI Tag Autocomplete](https://github.com/DominikDoom/a1111-sd-webui-tagcomplete)
- #prompt [NegPiP - Negative Prompt in Prompt](https://github.com/hako-mikan/sd-webui-negpip) _NegPiP_
- #prompt [Neutral Prompt](https://github.com/ljleb/sd-webui-neutral-prompt) _Neutral Prompt_
- #prompt [Prompt Fusion](https://github.com/ljleb/prompt-fusion-extension) _Prompt Fusion_
- #prompt [Regional Prompter](https://github.com/hako-mikan/sd-webui-regional-prompter) _Regional Prompter_
- #prompt [sd-webui-prompt-history](https://github.com/namkazt/sd-webui-prompt-history) _sd-webui-prompt_history_
- #sequence [Agent Scheduler](https://github.com/ArtVentureX/sd-webui-agent-scheduler)
- #theme [Lobe Theme](https://github.com/lobehub/sd-webui-lobe-theme) _Lobe Theme_

### cache

 - #action [ControlNet Preprocessor in extras tab](https://github.com/light-and-ray/sd-webui-cn-in-extras-tab)
 - #action [Openpose Editor for ControlNet ...](https://github.com/huchenlei/sd-webui-openpose-editor)
 - #action [sd-webui-densediff](https://github.com/uiyo/sd-webui-densediff)
 - #anime [AnimateDiff for Stable Diffusion WebUI](https://github.com/continue-revolution/sd-webui-animatediff)
 - #anime [Deforum Stable Diffusion](https://github.com/deforum-art/sd-webui-deforum)
 - #blender [Dream Texture](https://github.com/carson-katri/dream-textures)
 - #color [SD Webui Diffusion Color Grading](https://github.com/Haoming02/sd-webui-diffusion-cg)
 - #data [db-storage1111](https://github.com/takoyaro/db-storage1111)
 - #diff [SD Webui Image Comparison](https://github.com/Haoming02/sd-webui-image-comparison)
 - #edit [Aspect Ratio Helper](https://github.com/thomasasfk/sd-webui-aspect-ratio-helper)
 - #edit [Auto-Photoshop-StableDiffusion-Plugin](https://github.com/AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin)
 - #edit [auto-sd-paint-ext](https://github.com/Interpause/auto-sd-paint-ext)
 - #edit [Canvas Zoom](https://github.com/richrobber2/canvas-zoom)
 - #edit [openOutpaint](https://github.com/zero01101/openOutpaint)
 - #edit [PBRemTools](https://github.com/mattyamonaca/PBRemTools)
 - #edit [Photopea Stable Diffusion WebUI Extension](https://github.com/yankooliveira/sd-webui-photopea-embed)
 - #edit [SD Webui Old Photo Restoration](https://github.com/Haoming02/sd-webui-old-photo-restoration)
 - #edit [sd-forge-layerdiffuse](https://github.com/layerdiffusion/sd-forge-layerdiffuse)
 - #edit [sd-webui-miniPaint](https://github.com/ye7iaserag/sd-webui-miniPaint)
 - #edit [Stable Diffusion WebUI Smart Pre-Processing Extension](https://github.com/d8ahazard/sd_smartprocess)
 - #edit [stable-diffusion-webui-embedding-editor](https://github.com/CodeExplode/stable-diffusion-webui-embedding-editor)
 - #export [sd-webui-compress](https://github.com/injet-zhou/sd-webui-compress)
 - #extension [Readme browser](https://github.com/light-and-ray/sd-webui-readme-browser)
 - #face [FaceFuison extension for StableDiffusion Webui](https://github.com/diffus-me/sd-webui-facefusion)
 - #face [FaceSwapLab for a1111/Vlad](https://github.com/glucauze/sd-webui-faceswaplab)
 - #face [ReActor for Stable Diffusion](https://github.com/Navezjt/sd-webui-reactor)
 - #face [roop for StableDiffusion](https://github.com/s0md3v/sd-webui-roop)
 - #gif2gif [gif2gif](https://github.com/LonicaMewinsky/gif2gif)
 - #image [StoryMaker](https://github.com/RedAIGC/StoryMaker)
 - #img2img [Horizontal Tiling Script for StableDiffusion](https://xanthius.itch.io/horizontal-tiling-script-for-stablediffusion)
 - #img2img [Replacer](https://github.com/light-and-ray/sd-webui-replacer)
 - #img2img [sd-webui-pixelart](https://github.com/mrreplicart/sd-webui-pixelart)
 - #img2img [StableSR for Stable Diffusion WebUI](https://github.com/pkuliyi2015/sd-webui-stablesr)
 - #img2img [Topaz Photo AI integration](https://github.com/light-and-ray/sd-webui-topaz-photo-ai-integration)
 - #info [Checker of enable"" statuses in SD Web UI""](https://github.com/shirayu/sd-webui-enable-checker)
 - #info [VRAM Estimator for stable-diffusion-webui](https://github.com/space-nuko/a1111-stable-diffusion-webui-vram-estimator)
 - #krita [Generative AI for Krita](https://github.com/Acly/krita-ai-diffusion)
 - #lora [Additional Networks for generating images](https://github.com/kohya-ss/sd-webui-additional-networks)
 - #lora [Composable LoRA/LyCORIS with steps](https://github.com/a2569875/stable-diffusion-webui-composable-lora)
 - #lora [LLuL - Local Latent upscaLer](https://github.com/hnmr293/sd-webui-llul)
 - #lora [Weight Helper](https://github.com/nihedon/sd-webui-weight-helper)
 - #manager [Diffusion Toolkit](https://github.com/RupertAvery/DiffusionToolkit)
 - #manager [Prompt Gallery](https://github.com/dr413677671/PromptGallery-stable-diffusion-webui)
 - #manager [stable-diffusion-webui-images-browser](https://github.com/AlUlkesh/stable-diffusion-webui-images-browser)
 - #mask [ADetailer](https://github.com/Bing-su/adetailer)
 - #mask [Background Mask](https://github.com/Scholar01/sd-webui-bg-mask)
 - #mask [Detection Detailer](https://github.com/dustysys/ddetailer)
 - #mask,img2img [depthmap2mask](https://github.com/Extraltodeus/depthmap2mask)
 - #merge [Marge Board](https://github.com/bbc-mc/sdweb-merge-board)
 - #merge [Merge Block Weighted - GUI](https://github.com/bbc-mc/sdweb-merge-block-weighted-gui#how-to-use)
 - #merge [multi-subject-render](https://github.com/Extraltodeus/multi-subject-render)
 - #merge [SuperMerger](https://github.com/hako-mikan/sd-webui-supermerger)
 - #metadata [Dataset Tag Editor](https://github.com/toshiaki1729/stable-diffusion-webui-dataset-tag-editor)
 - #metadata [Hardware Info in metadata](https://github.com/light-and-ray/sd-webui-hardware-info-in-metadata)
 - #model [CivitAI Browser+](https://github.com/BlafKing/sd-civitai-browser-plus)
 - #model [Civitai Extension ...](https://github.com/civitai/sd_civitai_extension)
 - #model [Civitai Helper2: Model Info Helper](https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper)
 - #model [Civitai Shortcut](https://github.com/sunnyark/civitai-shortcut)
 - #model [Model Preset Manager](https://github.com/rifeWithKaiju/model_preset_manager)
 - #model [SD Model Organizer](https://github.com/alexandersokol/sd-model-organizer)
 - #model [sd-model-downloader](https://github.com/Iyashinouta/sd-model-downloader)
 - #model [sd-model-preview-xd](https://github.com/CurtisDS/sd-model-preview-xd)
 - #model [sd-webui-modal-overlay](https://github.com/luminouspear/sd-webui-modal-info)
 - #model [stable-diffusion-model-toolkit](https://github.com/arenasys/stable-diffusion-webui-model-toolkit)
 - #modify [BMAB](https://github.com/portu-sim/sd-webui-bmab)
 - #modify [Detail Daemon](https://github.com/muerrilla/sd-webui-detail-daemon)
 - #modify [SD Webui ReSharpen](https://github.com/Haoming02/sd-webui-resharpen)
 - #modify [sd-webui-Stable-Makeup](https://github.com/kigy1/sd-webui-Stable-Makeup)
 - #mov2mov [Mov2mov](https://github.com/Scholar01/sd-webui-mov2mov)
 - #preset [Aesthetic Gradients](https://github.com/AUTOMATIC1111/stable-diffusion-webui-aesthetic-gradients)
 - #preset [sd-webui-lightdiffusionflow](https://github.com/Tencent/LightDiffusionFlow)
 - #prompt [Latent Couple extension (two shot diffusion port)](https://github.com/ashen-sensored/stable-diffusion-webui-two-shot)
 - #prompt [LCM Sampler](https://github.com/light-and-ray/sd-webui-lcm-sampler)
 - #prompt [Negative Prompt Weight](https://github.com/muerrilla/stable-diffusion-NPW)
 - #prompt [One Button Prompt](https://github.com/AIrjen/OneButtonPrompt)
 - #prompt [Rich-Text-to-Image for Stable Diffusion WebUI](https://github.com/songweige/sd-webui-rich-text)
 - #prompt [SD WebUI Prompt Style](https://github.com/bandifiu/sd-webui-prompt-style)
 - #prompt [Stable Diffusion Dynamic Prompts extension](https://github.com/adieyal/sd-dynamic-prompts)
 - #prompt [Stable Diffusion Web UI Temporal Extension](https://github.com/Iniquitatis/sd-webui-temporal)
 - #prompt [stable-diffusion-webui-prompt-utilities](https://github.com/hallatore/stable-diffusion-webui-prompt-utilities)
 - #prompt,format [SD Webui Prompt Format](https://github.com/Haoming02/sd-webui-prompt-format)
 - #segment-anything [Segment Anything for Stable Diffusion WebUI](https://github.com/continue-revolution/sd-webui-segment-anything)
 - #segment-anything [Segment Anything preprocessor for ControlNet](https://github.com/light-and-ray/sd-webui-cn-sam-preprocessor)
 - #sequence [batch Checkpoints with Prompt](https://github.com/h43lb1t0/SD-WebUI-BatchCheckpointPrompt)
 - #sequence [embedding-merge](https://github.com/klimaleksus/stable-diffusion-webui-embedding-merge)
 - #sequence [sd-webui-samplers-scheduler Seniorious](https://github.com/Carzit/sd-webui-samplers-scheduler-for-v1.6)
 - #style [img2tiles](https://github.com/arcanite24/img2tiles)
 - #style [Pixel](https://github.com/Leodotpy/sd-pixel)
 - #style [stable-diffusion-webui-inspiration](https://github.com/yfszzx/stable-diffusion-webui-inspiration)
 - #style [Style Editor](https://github.com/chrisgoringe/Styles-Editor)
 - #style [StylePile](https://github.com/some9000/StylePile)
 - #tab [SD Webui Tabs Extension](https://github.com/Haoming02/sd-webui-tabs-extension)
 - #theme [Stability Matrix](https://github.com/LykosAI/StabilityMatrix)
 - #video [DiffSynth Studio](https://github.com/modelscope/DiffSynth-Studio)
 - #video [FastBlend](https://github.com/Artiprocher/sd-webui-fastblend)
 - #video [VideoCrafter1](https://github.com/AILab-CVC/VideoCrafter)
 - #zoom [SD Webui Mosaic Outpaint](https://github.com/Haoming02/sd-webui-mosaic-outpaint)

## help

```
- ,  
	提示词分隔符
- _   
	连词
- 75  
	最好控制在75单词以内
- ()  
	控制权重；格式为`提示词:权重`；数值建议为0.3-1.5
- 1   
	默认权重；提示词在数组中越靠前权重越高
- []  
	控制生效时间；格式为`提示词:0-1`，表示时间外生效；或者`提示词::0-1`，表示时间内生效；或者`提示词1:提示词2:0-1`
- \|  
	交替采样
- <>  
	控制Lora；格式为`lora:触发词:权重`
```

[^1]: [Manual Installation](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs#manual-installation)
[^2]: [How on earth can I install xformers?](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/9802#discussioncomment-5894895)
[^3]: [Installing xFormers](https://github.com/facebookresearch/xformers#installing-xformers)
[^4]: [Command Line Arguments and Settings](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings)

## annex

![stable-diffusion-webui](/_image/optWeb/stable-diffusion-webui.png)

[stable-diffusion-webui.mp4](https://scillidan.github.io/media_cheat/opt/stable-diffusion-webui.mp4), ([bilibili](https://www.bilibili.com/video/BV1Z45Hz5E2e)

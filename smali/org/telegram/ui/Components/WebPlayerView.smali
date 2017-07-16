.class public Lorg/telegram/ui/Components/WebPlayerView;
.super Landroid/view/ViewGroup;
.source "WebPlayerView.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WebPlayerView$ControlsView;,
        Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;,
        Lorg/telegram/ui/Components/WebPlayerView$function;,
        Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field private static final aparatFileListPattern:Ljava/util/regex/Pattern;

.field private static final aparatIdRegex:Ljava/util/regex/Pattern;

.field private static final coubIdRegex:Ljava/util/regex/Pattern;

.field private static final exprName:Ljava/lang/String; = "[a-zA-Z_$][a-zA-Z_$0-9]*"

.field private static final exprParensPattern:Ljava/util/regex/Pattern;

.field private static final jsPattern:Ljava/util/regex/Pattern;

.field private static final playerIdPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern2:Ljava/util/regex/Pattern;

.field private static final stmtReturnPattern:Ljava/util/regex/Pattern;

.field private static final stmtVarPattern:Ljava/util/regex/Pattern;

.field private static final stsPattern:Ljava/util/regex/Pattern;

.field private static final vimeoIdRegex:Ljava/util/regex/Pattern;

.field private static final youtubeIdRegex:Ljava/util/regex/Pattern;


# instance fields
.field private allowInlineAnimation:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private audioFocus:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private changedTextureView:Landroid/view/TextureView;

.field private changingTextureView:Z

.field private controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

.field private currentAlpha:F

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentTask:Landroid/os/AsyncTask;

.field private delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

.field private drawImage:Z

.field private firstFrameRendered:Z

.field private fullscreenButton:Landroid/widget/ImageView;

.field private hasAudioFocus:Z

.field private inFullscreen:Z

.field private initFailed:Z

.field private initied:Z

.field private inlineButton:Landroid/widget/ImageView;

.field private interfaceName:Ljava/lang/String;

.field private isAutoplay:Z

.field private isCompleted:Z

.field private isInline:Z

.field private isLoading:Z

.field private lastUpdateTime:J

.field private playAudioType:Ljava/lang/String;

.field private playAudioUrl:Ljava/lang/String;

.field private playButton:Landroid/widget/ImageView;

.field private playVideoType:Ljava/lang/String;

.field private playVideoUrl:Ljava/lang/String;

.field private progressAnimation:Landroid/animation/AnimatorSet;

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private resumeAudioOnFocusGain:Z

.field private seekToTime:I

.field private shareButton:Landroid/widget/ImageView;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private switchToInlineRunnable:Ljava/lang/Runnable;

.field private switchingInlineMode:Z

.field private textureImageView:Landroid/widget/ImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewContainer:Landroid/view/ViewGroup;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private waitingForFirstTextureUpload:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "(?:youtube(?:-nocookie)?\\.com/(?:[^/\\n\\s]+/\\S+/|(?:v|e(?:mbed)?)/|\\S*?[?&]v=)|youtu\\.be/)([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    .line 167
    const-string/jumbo v0, "https?://(?:(?:www|(player))\\.)?vimeo(pro)?\\.com/(?!(?:channels|album)/[^/?#]+/?(?:$|[?#])|[^/]+/review/|ondemand/)(?:.*?/)?(?:(?:play_redirect_hls|moogaloop\\.swf)\\?clip_id=)?(?:videos?/)?([0-9]+)(?:/[\\da-f]+)?/?(?:[?&].*)?(?:[#].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    .line 168
    const-string/jumbo v0, "(?:coub:|https?://(?:coub\\.com/(?:view|embed|coubs)/|c-cdn\\.coub\\.com/fb-player\\.swf\\?.*\\bcoub(?:ID|id)=))([\\da-z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    .line 169
    const-string/jumbo v0, "^https?://(?:www\\.)?aparat\\.com/(?:v/|video/video/embed/videohash/)([a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    .line 171
    const-string/jumbo v0, "fileList\\s*=\\s*JSON\\.parse\\(\'([^\']+)\'\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    .line 173
    const-string/jumbo v0, "\"sts\"\\s*:\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    .line 174
    const-string/jumbo v0, "\"assets\":.+?\"js\":\\s*(\"[^\"]+\")"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    .line 175
    const-string/jumbo v0, "\\.sig\\|\\|([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    .line 176
    const-string/jumbo v0, "[\"\']signature[\"\']\\s*,\\s*([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    .line 177
    const-string/jumbo v0, "var\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    .line 178
    const-string/jumbo v0, "return(?:\\s+|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    .line 179
    const-string/jumbo v0, "[()]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    .line 180
    const-string/jumbo v0, ".*?-([a-zA-Z0-9_-]+)(?:/watch_as3|/html5player(?:-new)?|/base)?\\.([a-z]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowInline"    # Z
    .param p3, "allowShare"    # Z
    .param p4, "webPlayerViewDelegate"    # Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    .line 901
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 956
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$3;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    .line 1297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->setWillNotDraw(Z)V

    .line 1298
    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1302
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$4;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    const-string/jumbo v0, "JavaScriptInterface"

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    .line 1322
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/WebPlayerView$5;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 1334
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1335
    const-string/jumbo v0, "utf-8"

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->getTextureViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    .line 1339
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotX(F)V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotY(F)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1348
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1349
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1357
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 1361
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1368
    :goto_2
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1374
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v9, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v0, 0x38

    const/high16 v1, 0x42600000    # 56.0f

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$6;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1386
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$7;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    if-eqz p2, :cond_1

    .line 1409
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$8;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    :cond_1
    if-eqz p3, :cond_2

    .line 1470
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$9;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1485
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1486
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1487
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1488
    return-void

    .line 116
    .end local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1345
    .restart local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1365
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/WebPlayerView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/WebPlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return p1
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/view/TextureView;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # F

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/WebPlayerView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/WebPlayerView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    return-void
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/WebPlayerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private checkAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1656
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    if-nez v1, :cond_0

    .line 1657
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1658
    .local v0, "audioManager":Landroid/media/AudioManager;
    iput-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    .line 1659
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1660
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1663
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private getControlView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method private getProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method private onInitFailed()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1492
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setVisibility(I)V

    .line 1494
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onInitFailed()V

    .line 1495
    return-void
.end method

.method private preparePlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1744
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1746
    iput-boolean v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    .line 1753
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1754
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1755
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1757
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_0

    .line 1742
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 1751
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_2
.end method

.method private showProgress(ZZ)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2038
    if-eqz p2, :cond_2

    .line 2039
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 2040
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2042
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    .line 2043
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const-string/jumbo v5, "alpha"

    new-array v6, v6, [F

    if-eqz p1, :cond_1

    :goto_0
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$10;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2055
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2043
    goto :goto_0

    .line 2053
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateFullscreenButton()V
    .locals 8

    .prologue
    const/16 v2, 0x55

    const/16 v0, 0x38

    const/high16 v1, 0x42600000    # 56.0f

    const/4 v3, 0x0

    .line 1693
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v4, :cond_1

    .line 1694
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    :goto_0
    return-void

    .line 1697
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1698
    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v4, :cond_2

    .line 1699
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const v5, 0x7f0200de

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1700
    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/high16 v6, 0x40a00000    # 5.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1702
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const v5, 0x7f0200f3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1703
    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateFullscreenState(Z)V
    .locals 8
    .param p1, "byButton"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1772
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 1774
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    .line 1775
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_1

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1782
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_5

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1784
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 1785
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1800
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1802
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1804
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_3

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1808
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    goto :goto_0

    .line 1779
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1788
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1789
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eq v6, p0, :cond_2

    .line 1790
    if-eqz v6, :cond_6

    .line 1791
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1793
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 1794
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1796
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1810
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_a

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1812
    .restart local v7    # "viewGroup":Landroid/view/ViewGroup;
    if-eqz v7, :cond_9

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1824
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    goto/16 :goto_0

    .line 1816
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1817
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eq v6, p0, :cond_9

    .line 1818
    if-eqz v6, :cond_b

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1821
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;I)V

    goto :goto_3
.end method

.method private updateInlineButton()V
    .locals 4

    .prologue
    const/16 v3, 0x35

    const/16 v2, 0x28

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1726
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200df

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1727
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1728
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_3

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1726
    :cond_1
    const v0, 0x7f0200f4

    goto :goto_1

    .line 1727
    :cond_2
    const/16 v0, 0x8

    goto :goto_2

    .line 1731
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x32

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePlayButton()V
    .locals 4

    .prologue
    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1643
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    if-eqz v0, :cond_1

    .line 1644
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200c6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1653
    :goto_1
    return-void

    .line 1644
    :cond_0
    const v0, 0x7f0200c5

    goto :goto_0

    .line 1646
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200fa

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0200f8

    goto :goto_2

    .line 1649
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200f6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1651
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->checkAudioFocus()V

    goto :goto_1

    .line 1649
    :cond_4
    const v0, 0x7f0200f5

    goto :goto_3
.end method

.method private updateShareButton()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1711
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2032
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 2034
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2035
    return-void
.end method

.method protected downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "parentTask"    # Landroid/os/AsyncTask;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v3, 0x1

    .line 425
    .local v3, "canRetry":Z
    const/4 v11, 0x0

    .line 426
    .local v11, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 427
    .local v7, "done":Z
    const/16 v16, 0x0

    .line 428
    .local v16, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 430
    .local v10, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 431
    .local v8, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 432
    const-string/jumbo v19, "User-Agent"

    const-string/jumbo v20, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v19, "Accept-Encoding"

    const-string/jumbo v20, "gzip, deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v19, "Accept-Language"

    const-string/jumbo v20, "en-us,en;q=0.5"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v19, "Accept"

    const-string/jumbo v20, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string/jumbo v19, "Accept-Charset"

    const-string/jumbo v20, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 438
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 439
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 440
    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v13, v0

    .line 441
    .local v13, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 442
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 443
    .local v18, "status":I
    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x12f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 444
    :cond_0
    const-string/jumbo v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 445
    .local v14, "newUrl":Ljava/lang/String;
    const-string/jumbo v19, "Set-Cookie"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "cookies":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v8, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v8    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 448
    const-string/jumbo v19, "Cookie"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string/jumbo v19, "User-Agent"

    const-string/jumbo v20, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v19, "Accept-Encoding"

    const-string/jumbo v20, "gzip, deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v19, "Accept-Language"

    const-string/jumbo v20, "en-us,en;q=0.5"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v19, "Accept"

    const-string/jumbo v20, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v19, "Accept-Charset"

    const-string/jumbo v20, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v5    # "cookies":Ljava/lang/String;
    .end local v13    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v14    # "newUrl":Ljava/lang/String;
    .end local v18    # "status":I
    :cond_1
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 457
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "httpConnectionStream":Ljava/io/InputStream;
    .local v12, "httpConnectionStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 475
    .end local v8    # "downloadUrl":Ljava/net/URL;
    .end local v12    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v11    # "httpConnectionStream":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_4

    .line 477
    if-eqz v10, :cond_2

    :try_start_1
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 478
    check-cast v10, Ljava/net/HttpURLConnection;

    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 479
    .local v4, "code":I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    const/16 v19, 0xca

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    const/16 v19, 0x130

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    .line 487
    .end local v4    # "code":I
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 489
    const v19, 0x8000

    :try_start_2
    move/from16 v0, v19

    new-array v6, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .local v6, "data":[B
    move-object/from16 v17, v16

    .line 491
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .local v17, "result":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v16, v17

    .line 518
    .end local v6    # "data":[B
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 519
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 525
    :cond_4
    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_5
    return-object v19

    .line 458
    .restart local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v9

    .line 459
    .local v9, "e":Ljava/lang/Throwable;
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 460
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 461
    const/4 v3, 0x0

    .line 472
    :cond_5
    :goto_6
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 463
    :cond_6
    instance-of v0, v9, Ljava/net/UnknownHostException;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 464
    const/4 v3, 0x0

    goto :goto_6

    .line 465
    :cond_7
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 466
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ECONNRESET"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 467
    const/4 v3, 0x0

    goto :goto_6

    .line 469
    :cond_8
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 470
    const/4 v3, 0x0

    goto :goto_6

    .line 483
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v9

    .line 484
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 495
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_5
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 496
    .local v15, "read":I
    if-lez v15, :cond_a

    .line 497
    if-nez v17, :cond_d

    .line 498
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 500
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :goto_7
    :try_start_6
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v15, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v17, v16

    .line 510
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 501
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 502
    const/4 v7, 0x1

    move-object/from16 v16, v17

    .line 503
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v16, v17

    .line 505
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 507
    .end local v15    # "read":I
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v16, v17

    .line 508
    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :goto_8
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 512
    .end local v6    # "data":[B
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 513
    .local v9, "e":Ljava/lang/Throwable;
    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 521
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .line 522
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 525
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 512
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 507
    .restart local v15    # "read":I
    :catch_6
    move-exception v9

    goto :goto_8

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "result":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v16, v17

    .end local v17    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_7
.end method

.method public enterFullscreen()V
    .locals 1

    .prologue
    .line 1846
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_0

    .line 1852
    :goto_0
    return-void

    .line 1849
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    .line 1850
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1851
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    goto :goto_0
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1829
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1832
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    .line 1833
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1834
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    goto :goto_0
.end method

.method public getAspectRatioView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method public getControlsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method public getTextureImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public isInFullscreen()Z
    .locals 1

    .prologue
    .line 1855
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    .prologue
    .line 1838
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .prologue
    .line 1842
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z
    .locals 24
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "thumb"    # Lorg/telegram/tgnet/TLRPC$Photo;
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "autoplay"    # Z

    .prologue
    .line 1859
    const/16 v23, 0x0

    .line 1860
    .local v23, "youtubeId":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1861
    .local v22, "vimeoId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1862
    .local v13, "coubId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1863
    .local v11, "aparatId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1864
    .local v17, "mp4File":Ljava/lang/String;
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    .line 1865
    if-eqz p1, :cond_0

    .line 1866
    const-string/jumbo v3, ".mp4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1867
    move-object/from16 v17, p1

    .line 1942
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    .line 1943
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    .line 1944
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    .line 1945
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    .line 1946
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    .line 1948
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    .line 1949
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    .line 1950
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_1

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1952
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 1954
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    .line 1955
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    .line 1956
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    .line 1957
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1958
    if-eqz p2, :cond_10

    .line 1959
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x50

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v18

    .line 1960
    .local v18, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v18, :cond_2

    .line 1961
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_e

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    if-eqz p2, :cond_f

    const-string/jumbo v7, "80_80_b"

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1962
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    .line 1968
    .end local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1969
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1970
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    .line 1972
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    .line 1973
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    .line 1974
    if-eqz v17, :cond_11

    .line 1975
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    .line 1976
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    .line 1977
    const-string/jumbo v3, "other"

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    .line 1978
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    if-eqz v3, :cond_4

    .line 1979
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    .line 1981
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 2005
    :goto_4
    if-nez v23, :cond_5

    if-nez v22, :cond_5

    if-nez v13, :cond_5

    if-nez v11, :cond_5

    if-eqz v17, :cond_16

    .line 2006
    :cond_5
    const/4 v3, 0x1

    .line 2009
    :goto_5
    return v3

    .line 1870
    :cond_6
    if-eqz p3, :cond_7

    .line 1872
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1873
    .local v21, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "t"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1874
    .local v19, "t":Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 1875
    const-string/jumbo v3, "m"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1876
    const-string/jumbo v3, "m"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1877
    .local v12, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    .end local v12    # "args":[Ljava/lang/String;
    .end local v19    # "t":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_6
    :try_start_1
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1887
    .local v16, "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1888
    .local v15, "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1889
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 1891
    :cond_8
    if-eqz v15, :cond_9

    .line 1892
    move-object/from16 v23, v15

    .line 1897
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    :goto_7
    if-nez v23, :cond_b

    .line 1899
    :try_start_2
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1900
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1901
    .restart local v15    # "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1902
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    .line 1904
    :cond_a
    if-eqz v15, :cond_b

    .line 1905
    move-object/from16 v22, v15

    .line 1911
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_b
    :goto_8
    if-nez v23, :cond_0

    if-nez v22, :cond_0

    .line 1913
    :try_start_3
    sget-object v3, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 1914
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 1915
    .restart local v15    # "id":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1916
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    .line 1918
    :cond_c
    if-eqz v15, :cond_0

    .line 1919
    move-object v11, v15

    goto/16 :goto_0

    .line 1879
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "t":Ljava/lang/String;
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_d
    :try_start_4
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 1882
    .end local v19    # "t":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 1883
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 1894
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 1895
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1907
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 1908
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1921
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1922
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1961
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1965
    .end local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    goto/16 :goto_3

    .line 1984
    :cond_11
    if-eqz v23, :cond_13

    .line 1985
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1986
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1987
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    .line 2002
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 2003
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    goto/16 :goto_4

    .line 1988
    :cond_13
    if-eqz v22, :cond_14

    .line 1989
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1990
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1991
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_9

    .line 1992
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
    :cond_14
    if-eqz v13, :cond_15

    .line 1993
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1994
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1995
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_9

    .line 1996
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
    :cond_15
    if-eqz v11, :cond_12

    .line 1997
    new-instance v20, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 1998
    .local v20, "task":Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1999
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto/16 :goto_9

    .line 2008
    .end local v20    # "task":Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setVisibility(I)V

    .line 2009
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1667
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1670
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1672
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    .line 1673
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1690
    :cond_1
    :goto_0
    return-void

    .line 1674
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1675
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1676
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    .line 1677
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    .line 1680
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 1681
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    goto :goto_0

    .line 1682
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1683
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1687
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1548
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1549
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1553
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1554
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    .line 1615
    sub-int v2, p4, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1616
    .local v0, "x":I
    sub-int v2, p5, p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1617
    .local v1, "y":I
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->layout(IIII)V

    .line 1618
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1619
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->layout(IIII)V

    .line 1621
    :cond_0
    sub-int v2, p4, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1622
    sub-int v2, p5, p3

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1623
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->layout(IIII)V

    .line 1624
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 1625
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 1629
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1630
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1631
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->measure(II)V

    .line 1632
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1633
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->measure(II)V

    .line 1635
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->measure(II)V

    .line 1636
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->setMeasuredDimension(II)V

    .line 1637
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 1574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    .line 1575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1577
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 9
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1521
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1522
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    .line 1528
    :cond_0
    :goto_0
    if-eq p2, v7, :cond_3

    if-eq p2, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0, p0, v6}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    .line 1533
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p2, v7, :cond_4

    .line 1534
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1544
    :cond_1
    :goto_2
    return-void

    .line 1525
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_0

    .line 1531
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0, p0, v8}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    goto :goto_1

    .line 1536
    :cond_4
    if-ne p2, v7, :cond_1

    .line 1537
    iput-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1540
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto :goto_2
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1581
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    if-eqz v2, :cond_2

    .line 1582
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    .line 1583
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v2, :cond_2

    .line 1584
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v2, :cond_1

    .line 1585
    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    .line 1587
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1588
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1589
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1593
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1598
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1599
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1604
    iput-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1607
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    .line 1609
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    .line 1611
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 1558
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_2

    .line 1559
    const/16 v2, 0x5a

    if-eq p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ne p3, v2, :cond_1

    .line 1560
    :cond_0
    move v1, p1

    .line 1561
    .local v1, "temp":I
    move p1, p2

    .line 1562
    move p2, v1

    .line 1564
    .end local v1    # "temp":I
    :cond_1
    if-nez p2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1565
    .local v0, "ratio":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 1566
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v2, :cond_2

    .line 1567
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v2, v0, p3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onVideoSizeChanged(FI)V

    .line 1570
    .end local v0    # "ratio":F
    :cond_2
    return-void

    .line 1564
    :cond_3
    int-to-float v2, p1

    mul-float/2addr v2, p4

    int-to-float v3, p2

    div-float v0, v2, v3

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1764
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1766
    return-void
.end method

.method public updateTextureImageView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1498
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1502
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1503
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1512
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1513
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1506
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1507
    iput-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1509
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1515
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

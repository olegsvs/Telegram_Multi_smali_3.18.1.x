.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockEmbedCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
    }
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

.field private lastCreatedWidth:I

.field private listX:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private videoView:Lorg/telegram/ui/Components/WebPlayerView;

.field private webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3108
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 3109
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3110
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setWillNotDraw(Z)V

    .line 3112
    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v1, p2, v3, v3, v2}, Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    .line 3203
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->addView(Landroid/view/View;)V

    .line 3204
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$7800(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3206
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    .line 3207
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3208
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 3210
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 3211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 3212
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 3215
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 3216
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 3217
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 3218
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 3221
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3255
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3281
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->addView(Landroid/view/View;)V

    .line 3282
    return-void
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .prologue
    .line 3077
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .prologue
    .line 3077
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .prologue
    .line 3077
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    return-object v0
.end method


# virtual methods
.method public destroyWebView(Z)V
    .locals 3
    .param p1, "completely"    # Z

    .prologue
    .line 3286
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->stopLoading()V

    .line 3287
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const-string/jumbo v2, "about:blank"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->loadUrl(Ljava/lang/String;)V

    .line 3288
    if-eqz p1, :cond_0

    .line 3289
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->destroy()V

    .line 3291
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3295
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    .line 3296
    return-void

    .line 3292
    :catch_0
    move-exception v0

    .line 3293
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 3347
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3348
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 3339
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3340
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1600(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3341
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 3343
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3415
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-nez v0, :cond_1

    .line 3428
    :cond_0
    :goto_0
    return-void

    .line 3418
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 3419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3420
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3421
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 3422
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3425
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->level:I

    if-lez v0, :cond_0

    .line 3426
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->bottom:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    sub-int v0, v4, v0

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 3407
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->layout(IIII)V

    .line 3408
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 3409
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->layout(IIII)V

    .line 3411
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 3357
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3360
    .local v4, "width":I
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v5, :cond_7

    .line 3361
    move v1, v4

    .line 3363
    .local v1, "listWidth":I
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->level:I

    if-lez v5, :cond_3

    .line 3364
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->level:I

    mul-int/lit8 v5, v5, 0xe

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    .line 3365
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 3366
    move v3, v1

    .line 3373
    .local v3, "textWidth":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    if-nez v5, :cond_4

    .line 3374
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3378
    .local v2, "scale":F
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    :goto_2
    float-to-int v0, v5

    .line 3379
    .local v0, "height":I
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->measure(II)V

    .line 3380
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/WebPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 3381
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/WebPlayerView;->measure(II)V

    .line 3383
    :cond_0
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->lastCreatedWidth:I

    if-eq v5, v4, :cond_1

    .line 3384
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    invoke-static {v5, v6, v7, v3, v8}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    .line 3385
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_1

    .line 3386
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    .line 3387
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 3391
    :cond_1
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    .line 3393
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->level:I

    if-lez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->bottom:Z

    if-nez v5, :cond_6

    .line 3394
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    .line 3402
    .end local v1    # "listWidth":I
    .end local v2    # "scale":F
    .end local v3    # "textWidth":I
    :cond_2
    :goto_3
    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setMeasuredDimension(II)V

    .line 3403
    return-void

    .line 3368
    .end local v0    # "height":I
    .restart local v1    # "listWidth":I
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->listX:I

    .line 3369
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    .line 3370
    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .restart local v3    # "textWidth":I
    goto/16 :goto_0

    .line 3376
    :cond_4
    int-to-float v5, v4

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2    # "scale":F
    goto/16 :goto_1

    .line 3378
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    goto/16 :goto_2

    .line 3395
    .restart local v0    # "height":I
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->level:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_2

    .line 3396
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_3

    .line 3399
    .end local v0    # "height":I
    .end local v1    # "listWidth":I
    .end local v2    # "scale":F
    .end local v3    # "textWidth":I
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "height":I
    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3352
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V
    .locals 10
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3302
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 3303
    .local v3, "previousBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 3304
    iput v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->lastCreatedWidth:I

    .line 3305
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eq v3, v5, :cond_0

    .line 3307
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const-string/jumbo v6, "about:blank"

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3313
    :goto_0
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 3314
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3334
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->requestLayout()V

    .line 3335
    return-void

    .line 3308
    :catch_0
    move-exception v1

    .line 3309
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3316
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    .line 3317
    .local v4, "thumb":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->autoplay:Z

    invoke-virtual {v5, v6, v4, v7, v8}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    move-result v2

    .line 3318
    .local v2, "handled":Z
    if-eqz v2, :cond_3

    .line 3319
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setVisibility(I)V

    .line 3320
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3330
    .end local v2    # "handled":Z
    .end local v4    # "thumb":Lorg/telegram/tgnet/TLRPC$Photo;
    :catch_1
    move-exception v1

    .line 3331
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3322
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "handled":Z
    .restart local v4    # "thumb":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->setVisibility(I)V

    .line 3323
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    .line 3324
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    .line 3325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3326
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "Referer"

    const-string/jumbo v6, "http://youtube.com"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->webView:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$TouchyWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

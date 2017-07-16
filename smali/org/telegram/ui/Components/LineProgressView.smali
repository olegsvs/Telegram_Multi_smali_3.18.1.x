.class public Lorg/telegram/ui/Components/LineProgressView;
.super Landroid/view/View;
.source "LineProgressView.java"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backColor:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private progressColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sput-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-wide v2, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    iput-wide v2, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    sub-long v0, v2, v6

    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iget v6, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    sub-float v4, v5, v6

    .local v4, "progressDiff":F
    cmpl-float v5, v4, v10

    if-lez v5, :cond_0

    iget-wide v6, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    iget-wide v6, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->invalidate()V

    .end local v4    # "progressDiff":F
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    long-to-float v6, v0

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    iput v10, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->invalidate()V

    :cond_3
    return-void

    .restart local v4    # "progressDiff":F
    :cond_4
    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    sget-object v6, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v8, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->backColor:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->backColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .local v7, "start":I
    int-to-float v1, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v7    # "start":I
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    mul-float v4, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/LineProgressView;->updateAnimation()V

    return-void
.end method

.method public setBackColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->backColor:I

    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    :goto_0
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LineProgressView;->invalidate()V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    goto :goto_0
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->progressColor:I

    return-void
.end method

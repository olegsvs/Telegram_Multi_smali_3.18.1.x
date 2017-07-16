.class public Lorg/telegram/ui/Components/PlayingGameDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlayingGameDrawable.java"


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    .line 28
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PlayingGameDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlayingGameDrawable;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->update()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/PlayingGameDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlayingGameDrawable$1;-><init>(Lorg/telegram/ui/Components/PlayingGameDrawable;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private update()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 39
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 40
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    .line 41
    const-wide/16 v4, 0x10

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 42
    const-wide/16 v0, 0x10

    .line 44
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1

    .line 45
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 47
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 48
    iget v4, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 49
    iput v7, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 51
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->invalidateSelf()V

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 68
    .local v8, "size":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    .line 69
    .local v10, "y":I
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "actionBarDefaultSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    int-to-float v2, v10

    int-to-float v3, v8

    add-int v4, v10, v8

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 80
    const/high16 v0, 0x420c0000    # 35.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 84
    .local v7, "rad":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 85
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v6

    const v1, 0x41133333    # 9.2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    mul-float/2addr v1, v2

    sub-float v9, v0, v1

    .line 86
    .local v9, "x":F
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    :goto_3
    div-int/lit8 v0, v8, 0x2

    add-int/2addr v0, v10

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 72
    .end local v6    # "a":I
    .end local v7    # "rad":I
    .end local v9    # "x":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_0

    .line 82
    :cond_1
    const/high16 v0, 0x420c0000    # 35.0f

    iget v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v0, v1

    float-to-int v7, v0

    .restart local v7    # "rad":I
    goto :goto_1

    .line 88
    .restart local v6    # "a":I
    .restart local v9    # "x":F
    :cond_2
    if-nez v6, :cond_4

    .line 89
    iget v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 92
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 95
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 99
    .end local v9    # "x":F
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->rect:Landroid/graphics/RectF;

    int-to-float v2, v7

    mul-int/lit8 v0, v7, 0x2

    rsub-int v0, v0, 0x168

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-int/lit8 v1, v8, 0x2

    add-int/2addr v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V

    .line 105
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 144
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 139
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 130
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->isChat:Z

    .line 35
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->lastUpdateTime:J

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->invalidateSelf()V

    .line 58
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->progress:F

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable;->started:Z

    .line 63
    return-void
.end method

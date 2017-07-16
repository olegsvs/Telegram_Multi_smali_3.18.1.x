.class public Lorg/telegram/ui/Components/ProgressView;
.super Ljava/lang/Object;
.source "ProgressView.java"


# instance fields
.field public currentProgress:F

.field public height:I

.field private innerPaint:Landroid/graphics/Paint;

.field private outerPaint:Landroid/graphics/Paint;

.field public progressHeight:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->width:I

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->width:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    mul-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    goto :goto_0
.end method

.method public setProgressColors(II)V
    .locals 1
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

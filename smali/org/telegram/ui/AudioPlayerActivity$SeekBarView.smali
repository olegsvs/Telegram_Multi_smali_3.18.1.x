.class Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;
.super Landroid/widget/FrameLayout;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarView"
.end annotation


# instance fields
.field private innerPaint1:Landroid/graphics/Paint;

.field private outerPaint1:Landroid/graphics/Paint;

.field private pressed:Z

.field final synthetic this$0:Lorg/telegram/ui/AudioPlayerActivity;

.field public thumbDX:I

.field private thumbHeight:I

.field private thumbWidth:I

.field public thumbX:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbDX:I

    iput-boolean v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    const-string/jumbo v1, "player_progressBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    const-string/jumbo v1, "player_progress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbHeight:I

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .local v6, "y":I
    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    int-to-float v2, v0

    iget-boolean v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .local v0, "additionWidth":I
    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    iget v5, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    iput-boolean v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbDX:I

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->invalidate()V

    .end local v0    # "additionWidth":I
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    iget v4, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/AudioPlayerActivity;->access$000(Lorg/telegram/ui/AudioPlayerActivity;F)V

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->pressed:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbDX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    if-gez v3, :cond_5

    iput v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->invalidate()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .local v0, "newThumbX":I
    iget v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->thumbX:I

    goto :goto_0
.end method

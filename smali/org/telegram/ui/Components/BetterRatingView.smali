.class public Lorg/telegram/ui/Components/BetterRatingView;
.super Landroid/view/View;
.source "BetterRatingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;
    }
.end annotation


# instance fields
.field private filledStar:Landroid/graphics/Bitmap;

.field private hollowStar:Landroid/graphics/Bitmap;

.field private listener:Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;

.field private numStars:I

.field private paint:Landroid/graphics/Paint;

.field private selectedRating:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->numStars:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BetterRatingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->filledStar:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BetterRatingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->hollowStar:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getRating()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->numStars:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "calls_ratingStarSelected"

    :goto_1
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->filledStar:Landroid/graphics/Bitmap;

    :goto_2
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/BetterRatingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "calls_ratingStar"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->hollowStar:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x42000000    # 32.0f

    iget v0, p0, Lorg/telegram/ui/Components/BetterRatingView;->numStars:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/BetterRatingView;->numStars:I

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/BetterRatingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v2, -0x3f000000    # -8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v1, v2

    .local v1, "offset":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->numStars:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    add-int/lit8 v3, v0, 0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    iget-object v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->listener:Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/BetterRatingView;->listener:Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;

    iget v3, p0, Lorg/telegram/ui/Components/BetterRatingView;->selectedRating:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;->onRatingChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BetterRatingView;->invalidate()V

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnRatingChangeListener(Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;)V
    .locals 0
    .param p1, "l"    # Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/BetterRatingView;->listener:Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;

    return-void
.end method

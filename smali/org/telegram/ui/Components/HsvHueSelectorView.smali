.class public Lorg/telegram/ui/Components/HsvHueSelectorView;
.super Landroid/widget/LinearLayout;
.source "HsvHueSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;
    }
.end annotation


# instance fields
.field private down:Z

.field private hue:F

.field private imgHue:Landroid/widget/ImageView;

.field private imgSeekSelector:Landroid/widget/ImageView;

.field private listener:Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;

.field private minOffset:I

.field private seekSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->minOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->down:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->minOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->down:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->init()V

    return-void
.end method

.method private buildUI()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setOrientation(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setGravity(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->seekSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->seekSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->seekSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "paramsSeek":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/Components/HsvHueSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getOffset()I

    move-result v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getSelectorOffset()I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getOffset()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->minOffset:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getSelectorOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSelectorOffset()I
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->seekSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->seekSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->buildUI()V

    return-void
.end method

.method private onHueChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->listener:Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->listener:Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;

    iget v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    invoke-interface {v0, p0, v1}, Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;->hueChanged(Lorg/telegram/ui/Components/HsvHueSelectorView;F)V

    :cond_0
    return-void
.end method

.method private placeSelector()V
    .locals 7

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    iget v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .local v0, "hueY":I
    iget-object v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getSelectorOffset()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getOffset()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getSelectorOffset()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgSeekSelector:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private setPosition(I)V
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getOffset()I

    move-result v1

    sub-int v0, p1, v1

    .local v0, "hueY":I
    int-to-float v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float v1, v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->placeSelector()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->onHueChanged()V

    return-void
.end method


# virtual methods
.method public getHue()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->placeSelector()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->down:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setPosition(I)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->down:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->down:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/HsvHueSelectorView;->setPosition(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHue(F)V
    .locals 1
    .param p1, "hue"    # F

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->hue:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->placeSelector()V

    goto :goto_0
.end method

.method public setMinContentOffset(I)V
    .locals 4
    .param p1, "minOffset"    # I

    .prologue
    const/4 v3, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->minOffset:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getOffset()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvHueSelectorView;->getSelectorOffset()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->imgHue:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnHueChangedListener(Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/HsvHueSelectorView;->listener:Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;

    return-void
.end method

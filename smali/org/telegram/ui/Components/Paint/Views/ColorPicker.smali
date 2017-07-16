.class public Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
.super Landroid/widget/FrameLayout;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LOCATIONS:[F


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private changingWeight:Z

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

.field private dragging:Z

.field private draggingFactor:F

.field private gradientPaint:Landroid/graphics/Paint;

.field private interacting:Z

.field private interpolator:Landroid/view/animation/OvershootInterpolator;

.field private location:F

.field private rectF:Landroid/graphics/RectF;

.field private settingsButton:Landroid/widget/ImageView;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private swatchPaint:Landroid/graphics/Paint;

.field private swatchStrokePaint:Landroid/graphics/Paint;

.field private wasChangingWeight:Z

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    .line 53
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        -0x15d8c7
        -0x24c52e
        -0xcfae1d
        -0xb63a13
        -0x7f379c
        -0x3219b
        -0x369b3
        -0x1000000
        -0x1
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x0
        0x3e0f5c29    # 0.14f
        0x3e75c28f    # 0.24f
        0x3ec7ae14    # 0.39f
        0x3efae148    # 0.49f
        0x3f1eb852    # 0.62f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    .line 74
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    .line 75
    const v0, 0x3e8a3d71    # 0.27f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    .line 81
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWillNotDraw(Z)V

    .line 82
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x3c

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-string/jumbo v0, "paint"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_color_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    .line 101
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    return-object v0
.end method

.method private interpolateColors(IIF)I
    .locals 12
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I
    .param p3, "factor"    # F

    .prologue
    const/16 v11, 0xff

    .line 155
    const/4 v9, 0x0

    invoke-static {p3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 157
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 158
    .local v7, "r1":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 160
    .local v8, "r2":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 161
    .local v4, "g1":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 163
    .local v5, "g2":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 164
    .local v1, "b1":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 166
    .local v2, "b2":I
    int-to-float v9, v7

    sub-int v10, v8, v7

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 167
    .local v6, "r":I
    int-to-float v9, v4

    sub-int v10, v5, v4

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 168
    .local v3, "g":I
    int-to-float v9, v1

    sub-int v10, v2, v1

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    .local v0, "b":I
    invoke-static {v11, v6, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private setDragging(ZZ)V
    .locals 7
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 291
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-ne v3, p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 294
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    .line 295
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-eqz v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 296
    .local v2, "target":F
    :goto_1
    if-eqz p2, :cond_3

    .line 297
    const-string/jumbo v3, "draggingFactor"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 298
    .local v0, "a":Landroid/animation/Animator;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    const/16 v1, 0x12c

    .line 300
    .local v1, "duration":I
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    if-eqz v3, :cond_1

    .line 301
    int-to-float v3, v1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v5, 0x42960000    # 75.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 303
    :cond_1
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 304
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 295
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v1    # "duration":I
    .end local v2    # "target":F
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 306
    .restart local v2    # "target":F
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDraggingFactor(F)V

    goto :goto_0
.end method

.method private setDraggingFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 282
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    .line 283
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 284
    return-void
.end method


# virtual methods
.method public colorForLocation(F)I
    .locals 11
    .param p1, "location"    # F

    .prologue
    .line 126
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_0

    .line 127
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 151
    :goto_0
    return v9

    .line 128
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_1

    .line 129
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v10, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 132
    :cond_1
    const/4 v3, -0x1

    .line 133
    .local v3, "leftIndex":I
    const/4 v6, -0x1

    .line 135
    .local v6, "rightIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 136
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v8, v9, v1

    .line 137
    .local v8, "value":F
    cmpl-float v9, v8, p1

    if-lez v9, :cond_3

    .line 138
    add-int/lit8 v3, v1, -0x1

    .line 139
    move v6, v1

    .line 144
    .end local v8    # "value":F
    :cond_2
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v4, v9, v3

    .line 145
    .local v4, "leftLocation":F
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v2, v9, v3

    .line 147
    .local v2, "leftColor":I
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v7, v9, v6

    .line 148
    .local v7, "rightLocation":F
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v5, v9, v6

    .line 150
    .local v5, "rightColor":I
    sub-float v9, p1, v4

    sub-float v10, v7, v4

    div-float v0, v9, v10

    .line 151
    .local v0, "factor":F
    invoke-direct {p0, v2, v5, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolateColors(IIF)I

    move-result v9

    goto :goto_0

    .line 135
    .end local v0    # "factor":F
    .end local v2    # "leftColor":I
    .end local v4    # "leftLocation":F
    .end local v5    # "rightColor":I
    .end local v7    # "rightLocation":F
    .restart local v8    # "value":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDraggingFactor()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    return v0
.end method

.method public getSettingsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 267
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v6, 0x433e0000    # 190.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    :goto_0
    sub-float v4, v5, v4

    float-to-int v0, v4

    .line 268
    .local v0, "cx":I
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v1, v4, v5

    .line 270
    .local v1, "cy":I
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v5, v9

    mul-float/2addr v5, v11

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 271
    .local v2, "side":I
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41980000    # 19.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v5, v9

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .line 276
    .local v3, "swatchRadius":F
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v7, v9

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 278
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    return-void

    .line 267
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "side":I
    .end local v3    # "swatchRadius":F
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 251
    sub-int v10, p4, p2

    .line 252
    .local v10, "width":I
    sub-int v9, p5, p3

    .line 254
    .local v9, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v8, v0, v1

    .line 255
    .local v8, "backHeight":I
    iget-object v13, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v6, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 256
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v10, v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v11, v0, v1

    .line 257
    .local v11, "x":I
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .line 258
    .local v12, "y":I
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    int-to-float v1, v11

    int-to-float v2, v12

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v11

    int-to-float v3, v3

    add-int v4, v12, v8

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v9, v2

    invoke-virtual {v0, v1, v2, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 261
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v5

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float v3, v7, v8

    .line 203
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v4, v7, v8

    .line 205
    .local v4, "y":F
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v7, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_0

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 210
    .local v0, "action":I
    const/4 v7, 0x3

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    const/4 v7, 0x6

    if-ne v0, v7, :cond_5

    .line 211
    :cond_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v7, :cond_4

    .line 212
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onFinishedColorPicking()V

    .line 214
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "paint"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "last_color_location"

    iget v9, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    :cond_4
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    .line 217
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    iput-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    .line 218
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    .line 219
    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    goto :goto_0

    .line 220
    :cond_5
    if-eqz v0, :cond_6

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 221
    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v5, :cond_7

    .line 222
    iput-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    .line 223
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v5, :cond_7

    .line 224
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onBeganColorPicking()V

    .line 228
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v4, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 229
    .local v1, "colorLocation":F
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 231
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    .line 233
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    .line 234
    iput-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    .line 235
    neg-float v5, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/high16 v7, 0x433e0000    # 190.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float v2, v5, v7

    .line 236
    .local v2, "weightLocation":F
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 237
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    .line 240
    .end local v2    # "weightLocation":F
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v5, :cond_9

    .line 241
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onColorValueChanged()V

    :cond_9
    move v5, v6

    .line 243
    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V
    .locals 0
    .param p1, "colorPickerDelegate"    # Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    .line 106
    return-void
.end method

.method public setLocation(F)V
    .locals 10
    .param p1, "value"    # F

    .prologue
    const/4 v9, 0x2

    const v8, 0x3f6b851f    # 0.92f

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    .line 174
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v1

    .line 175
    .local v1, "color":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    const/4 v3, 0x3

    new-array v2, v3, [F

    .line 178
    .local v2, "hsv":[F
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 180
    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v3, 0x1

    aget v3, v2, v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    aget v3, v2, v9

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    .line 181
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v2, v9

    sub-float/2addr v4, v8

    const v5, 0x3da3d70a    # 0.08f

    div-float/2addr v4, v5

    const v5, 0x3e6147ae    # 0.22f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 182
    .local v0, "c":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    .end local v0    # "c":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 189
    return-void

    .line 184
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setSettingsButtonImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 1
    .param p1, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;

    .prologue
    .line 121
    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 122
    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    .line 123
    return-void
.end method

.method public setWeight(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 192
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 194
    return-void
.end method

.class public Lorg/telegram/ui/Components/Crop/CropRotationWheel;
.super Landroid/widget/FrameLayout;
.source "CropRotationWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;
    }
.end annotation


# static fields
.field private static final DELTA_ANGLE:I = 0x5

.field private static final MAX_ANGLE:I = 0x2d


# instance fields
.field private aspectRatioButton:Landroid/widget/ImageView;

.field private bluePaint:Landroid/graphics/Paint;

.field private degreesLabel:Landroid/widget/TextView;

.field private prevX:F

.field protected rotation:F

.field private rotation90Button:Landroid/widget/ImageView;

.field private rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

.field private tempRect:Landroid/graphics/RectF;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const/16 v1, 0x46

    const/16 v2, 0x40

    const/16 v3, 0x13

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropRotationWheel$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$2;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const/16 v1, 0x46

    const/16 v2, 0x40

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setWillNotDraw(Z)V

    .line 96
    invoke-virtual {p0, v4, v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    return-object v0
.end method


# virtual methods
.method protected drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "delta"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "center"    # Z
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 202
    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 204
    .local v12, "radius":I
    const/high16 v2, 0x42b40000    # 90.0f

    mul-int/lit8 v3, p2, 0x5

    int-to-float v3, v3

    add-float v3, v3, p3

    sub-float v9, v2, v3

    .line 205
    .local v9, "angle":F
    int-to-double v2, v12

    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v13, v2

    .line 206
    .local v13, "val":I
    div-int/lit8 v2, p4, 0x2

    add-int v15, v2, v13

    .line 208
    .local v15, "x":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v10, v2, v3

    .line 209
    .local v10, "f":F
    const/16 v2, 0xff

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v10, v10

    sub-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 211
    .local v8, "alpha":I
    if-eqz p6, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    move-object/from16 p7, v0

    .line 214
    :cond_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    if-eqz p6, :cond_1

    const/4 v14, 0x4

    .line 217
    .local v14, "w":I
    :goto_0
    if-eqz p6, :cond_2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 219
    .local v11, "h":I
    :goto_1
    div-int/lit8 v2, v14, 0x2

    sub-int v2, v15, v2

    int-to-float v3, v2

    sub-int v2, p5, v11

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    div-int/lit8 v2, v14, 0x2

    add-int/2addr v2, v15

    int-to-float v5, v2

    add-int v2, p5, v11

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    return-void

    .line 216
    .end local v11    # "h":I
    .end local v14    # "w":I
    :cond_1
    const/4 v14, 0x2

    goto :goto_0

    .line 217
    .restart local v14    # "w":I
    :cond_2
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->getWidth()I

    move-result v4

    .line 171
    .local v4, "width":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->getHeight()I

    move-result v5

    .line 173
    .local v5, "height":I
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v8, v0, v1

    .line 174
    .local v8, "angle":F
    const/high16 v0, 0x40a00000    # 5.0f

    rem-float v3, v8, v0

    .line 175
    .local v3, "delta":F
    const/high16 v0, 0x40a00000    # 5.0f

    div-float v0, v8, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 177
    .local v10, "segments":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v0, 0x10

    if-ge v9, v0, :cond_7

    .line 178
    iget-object v7, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    .line 179
    .local v7, "paint":Landroid/graphics/Paint;
    move v2, v9

    .line 180
    .local v2, "a":I
    if-lt v2, v10, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    .line 181
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    .line 183
    :cond_1
    if-eq v2, v10, :cond_2

    if-nez v2, :cond_4

    const/4 v0, -0x1

    if-ne v10, v0, :cond_4

    :cond_2
    const/4 v6, 0x1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    .line 185
    if-eqz v9, :cond_3

    .line 186
    neg-int v2, v9

    .line 187
    if-le v2, v10, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    .line 188
    :goto_2
    add-int/lit8 v0, v10, 0x1

    if-ne v2, v0, :cond_6

    const/4 v6, 0x1

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    .line 177
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 183
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 187
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 188
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 192
    .end local v2    # "a":I
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 106
    .local v0, "width":I
    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 107
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 134
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 136
    .local v3, "x":F
    if-nez v0, :cond_1

    .line 137
    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    .line 139
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onStart()V

    .line 163
    :cond_0
    :goto_0
    return v10

    .line 141
    :cond_1
    if-eq v0, v10, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 142
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {v4, v5}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onEnd(F)V

    goto :goto_0

    .line 144
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 145
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    sub-float v1, v4, v3

    .line 147
    .local v1, "delta":F
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v5, v1, v5

    float-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x3ffa666660000000L    # 1.649999976158142

    div-double/2addr v6, v8

    double-to-float v5, v6

    add-float v2, v4, v5

    .line 148
    .local v2, "newAngle":F
    const/high16 v4, -0x3dcc0000    # -45.0f

    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 150
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 151
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 152
    const/4 v2, 0x0

    .line 154
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v4, :cond_5

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {v4, v5}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onChange(F)V

    .line 159
    :cond_5
    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    .line 111
    return-void
.end method

.method public setAspectLock(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f020276

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    return-void

    .line 128
    :cond_0
    const v0, 0x7f020275

    goto :goto_0
.end method

.method public setFreeform(Z)V
    .locals 2
    .param p1, "freeform"    # Z

    .prologue
    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    .line 115
    return-void
.end method

.method public setRotation(FZ)V
    .locals 6
    .param p1, "rotation"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    .line 120
    .local v0, "value":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb95810624dd2f2L    # 0.099

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    const-string/jumbo v2, "%.1f\u00ba"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->invalidate()V

    .line 125
    return-void
.end method

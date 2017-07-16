.class public Lorg/telegram/ui/Components/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;,
        Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_OLD_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SHOW_OLD_COLOR:Ljava/lang/String; = "showColor"


# instance fields
.field private mAngle:F

.field private mCenterHaloPaint:Landroid/graphics/Paint;

.field private mCenterNewColor:I

.field private mCenterNewPaint:Landroid/graphics/Paint;

.field private mCenterOldColor:I

.field private mCenterOldPaint:Landroid/graphics/Paint;

.field private mCenterRectangle:Landroid/graphics/RectF;

.field private mColorCenterHaloRadius:I

.field private mColorCenterRadius:I

.field private mColorPointerHaloRadius:I

.field private mColorPointerRadius:I

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:I

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelThickness:I

.field private mHSV:[F

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPreferredColorCenterHaloRadius:I

.field private mPreferredColorCenterRadius:I

.field private mPreferredColorWheelRadius:I

.field private mShowCenterOldColor:Z

.field private mSlopX:F

.field private mSlopY:F

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private oldChangedListenerColor:I

.field private oldSelectedListenerColor:I

.field private onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

.field private onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x1
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    .line 57
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    .line 57
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    .line 83
    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    .line 88
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 211
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private calculateColor(F)I
    .locals 14
    .param p1, "angle"    # F

    .prologue
    .line 215
    float-to-double v10, p1

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v10, v12

    double-to-float v8, v10

    .line 216
    .local v8, "unit":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 217
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    .line 220
    :cond_0
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    .line 221
    sget-object v9, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 238
    :goto_0
    return v9

    .line 223
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    .line 224
    sget-object v9, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    sget-object v10, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 227
    :cond_2
    sget-object v9, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 228
    .local v6, "p":F
    float-to-int v5, v6

    .line 229
    .local v5, "i":I
    int-to-float v9, v5

    sub-float/2addr v6, v9

    .line 231
    sget-object v9, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    aget v2, v9, v5

    .line 232
    .local v2, "c0":I
    sget-object v9, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 233
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v0

    .line 234
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v7

    .line 235
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v4

    .line 236
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v1

    .line 238
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 317
    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 318
    .local v0, "x":F
    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 320
    .local v1, "y":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private colorToAngle(I)F
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 254
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 255
    .local v0, "colors":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 257
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-float v1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    .line 109
    const/high16 v1, 0x42f80000    # 124.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    .line 110
    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    .line 111
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    .line 112
    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterRadius:I

    .line 113
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    .line 114
    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterHaloRadius:I

    .line 115
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerRadius:I

    .line 116
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    .line 118
    const v1, -0x4036f025

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    .line 120
    new-instance v0, Landroid/graphics/SweepGradient;

    sget-object v1, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    const/4 v2, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 122
    .local v0, "s":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    .line 147
    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    .line 148
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    .line 149
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    return v0
.end method

.method public getShowOldCenterColor()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 153
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 156
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculatePointerPosition(F)[F

    move-result-object v6

    .line 158
    .local v6, "pointerPosition":[F
    aget v0, v6, v8

    aget v1, v6, v4

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    aget v0, v6, v8

    aget v1, v6, v4

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerRadius:I

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    .line 172
    iget v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    add-int/2addr v8, v9

    mul-int/lit8 v3, v8, 0x2

    .line 174
    .local v3, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 175
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 176
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 177
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 182
    .local v2, "heightSize":I
    if-ne v6, v11, :cond_0

    .line 183
    move v5, v7

    .line 190
    .local v5, "width":I
    :goto_0
    if-ne v1, v11, :cond_2

    .line 191
    move v0, v2

    .line 198
    .local v0, "height":I
    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 199
    .local v4, "min":I
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Components/ColorPickerView;->setMeasuredDimension(II)V

    .line 200
    int-to-float v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    .line 202
    div-int/lit8 v8, v4, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    .line 203
    iget-object v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 205
    iget v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterRadius:I

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    .line 206
    iget v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterHaloRadius:I

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    .line 207
    iget-object v8, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    return-void

    .line 184
    .end local v0    # "height":I
    .end local v4    # "min":I
    .end local v5    # "width":I
    :cond_0
    if-ne v6, v10, :cond_1

    .line 185
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0

    .line 187
    .end local v5    # "width":I
    :cond_1
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 192
    :cond_2
    if-ne v1, v10, :cond_3

    .line 193
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 195
    .end local v0    # "height":I
    :cond_3
    move v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 371
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 373
    .local v1, "savedState":Landroid/os/Bundle;
    const-string/jumbo v3, "parent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 374
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 376
    const-string/jumbo v3, "angle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    .line 377
    const-string/jumbo v3, "color"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    .line 378
    const-string/jumbo v3, "showColor"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    .line 379
    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v0

    .line 380
    .local v0, "currentColor":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setNewCenterColor(I)V

    .line 382
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 358
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 360
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    const-string/jumbo v2, "angle"

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 363
    const-string/jumbo v2, "color"

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string/jumbo v2, "showColor"

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    sub-float v1, v5, v6

    .line 265
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    sub-float v2, v5, v6

    .line 267
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    .line 313
    :goto_1
    return v3

    .line 269
    :pswitch_0
    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ColorPickerView;->calculatePointerPosition(F)[F

    move-result-object v0

    .line 270
    .local v0, "pointerPosition":[F
    aget v5, v0, v3

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    aget v5, v0, v3

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_1

    aget v5, v0, v4

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    aget v5, v0, v4

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    .line 271
    aget v3, v0, v3

    sub-float v3, v1, v3

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopX:F

    .line 272
    aget v3, v0, v4

    sub-float v3, v2, v3

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopY:F

    .line 273
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 275
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_2

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    if-eqz v5, :cond_2

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getOldCenterColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ColorPickerView;->setColor(I)V

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 285
    .end local v0    # "pointerPosition":[F
    :pswitch_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    if-eqz v5, :cond_3

    .line 286
    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopY:F

    sub-float v3, v2, v3

    float-to-double v6, v3

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopX:F

    sub-float v3, v1, v3

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v3, v6

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ColorPickerView;->setNewCenterColor(I)V

    .line 289
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 296
    :pswitch_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    .line 297
    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    if-eq v3, v5, :cond_4

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-interface {v3, v5}, Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;->onColorSelected(I)V

    .line 301
    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    .line 304
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 307
    :pswitch_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    if-eq v3, v5, :cond_0

    .line 308
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-interface {v3, v5}, Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;->onColorSelected(I)V

    .line 309
    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iput v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPickerView;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    .line 251
    return-void
.end method

.method public setNewCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 324
    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    if-nez v0, :cond_0

    .line 327
    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldChangedListenerColor:I

    if-eq p1, v0, :cond_1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 332
    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldChangedListenerColor:I

    .line 334
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    .line 335
    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 338
    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    .line 341
    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    .line 101
    return-void
.end method

.method public setOnColorSelectedListener(Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    .line 105
    return-void
.end method

.method public setShowOldCenterColor(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    .line 349
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    .line 350
    return-void
.end method

.class public Lorg/telegram/ui/Components/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    const v8, 0x3ecccccd    # 0.4f

    sput v8, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    sget v8, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    const/4 v7, 0x0

    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v13, :cond_2

    int-to-float v8, v2

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    .local v3, "t":F
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .local v5, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .local v1, "d":F
    sget-object v8, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_1

    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v12, v8, v13

    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    sput v12, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    invoke-static {v12}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    const v0, 0x43c10b3d

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    sget v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    :goto_0
    sget v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    iget-boolean v10, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-eqz v10, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .local v7, "timePassed":I
    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    if-ge v7, v10, :cond_3

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    mul-float v8, v10, v11

    .local v8, "x":F
    iget-object v10, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    invoke-static {v8}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v8

    :goto_1
    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .local v6, "t_sup":F
    sget-object v10, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aget v0, v10, v3

    .local v0, "d_inf":F
    sget-object v10, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .local v2, "distanceCoef":F
    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v12, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v12, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v11, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    if-ne v10, v11, :cond_0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    goto/16 :goto_0

    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v10, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v10, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->timePassed()I

    move-result v0

    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 28
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Scroller;->getCurrVelocity()F

    move-result v14

    .local v14, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v7, v0

    .local v7, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v8, v0

    .local v8, "dy":F
    mul-float v19, v7, v7

    mul-float v20, v8, v8

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .local v9, "hyp":F
    div-float v12, v7, v9

    .local v12, "ndx":F
    div-float v13, v8, v9

    .local v13, "ndy":F
    mul-float v15, v12, v14

    .local v15, "oldVelocityX":F
    mul-float v16, v13, v14

    .local v16, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v20

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v20

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p4, v0

    .end local v7    # "dx":F
    .end local v8    # "dy":F
    .end local v9    # "hyp":F
    .end local v12    # "ndx":F
    .end local v13    # "ndy":F
    .end local v14    # "oldVel":F
    .end local v15    # "oldVelocityX":F
    .end local v16    # "oldVelocityY":F
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mMode:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    mul-int v19, p3, p3

    mul-int v20, p4, p4

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .local v18, "velocity":F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    const/high16 v4, 0x44480000    # 800.0f

    .local v4, "ALPHA":F
    sget v19, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float v19, v19, v18

    div-float v19, v19, v4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    .local v10, "l":D
    const-wide v20, 0x408f400000000000L    # 1000.0

    sget v19, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    div-double v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-nez v19, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "coeffX":F
    :goto_0
    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-nez v19, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "coeffY":F
    :goto_1
    float-to-double v0, v4

    move-wide/from16 v20, v0

    sget v19, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sget v19, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v24, v24, v26

    div-double v22, v22, v24

    mul-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v17, v0

    .local v17, "totalDistance":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v19, v19, p1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v19, v19, p2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return-void

    .end local v5    # "coeffX":F
    .end local v6    # "coeffY":F
    .end local v17    # "totalDistance":I
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v5, v19, v18

    goto/16 :goto_0

    .restart local v5    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v19, v18

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    iput p5, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iput p2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

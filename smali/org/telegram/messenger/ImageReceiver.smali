.class public Lorg/telegram/messenger/ImageReceiver;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageReceiver$1;,
        Lorg/telegram/messenger/ImageReceiver$SetImageBackup;,
        Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    }
.end annotation


# static fields
.field private static roundPaint:Landroid/graphics/Paint;

.field private static selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private allowStartAnimation:Z

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapShaderThumb:Landroid/graphics/BitmapShader;

.field private canceledLoading:Z

.field private centerRotation:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private crossfadeAlpha:B

.field private crossfadeWithThumb:Z

.field private currentAlpha:F

.field private currentCacheOnly:Z

.field private currentExt:Ljava/lang/String;

.field private currentFilter:Ljava/lang/String;

.field private currentHttpUrl:Ljava/lang/String;

.field private currentImage:Landroid/graphics/drawable/Drawable;

.field private currentImageLocation:Lorg/telegram/tgnet/TLObject;

.field private currentKey:Ljava/lang/String;

.field private currentSize:I

.field private currentThumb:Landroid/graphics/drawable/Drawable;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentThumbKey:Ljava/lang/String;

.field private currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private drawRegion:Landroid/graphics/Rect;

.field private forcePreview:Z

.field private imageH:I

.field private imageW:I

.field private imageX:I

.field private imageY:I

.field private invalidateAll:Z

.field private isAspectFit:Z

.field private isPressed:Z

.field private isVisible:Z

.field private lastUpdateAlphaTime:J

.field private needsQualityThumb:Z

.field private orientation:I

.field private overrideAlpha:F

.field private parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private parentView:Landroid/view/View;

.field private roundRadius:I

.field private roundRect:Landroid/graphics/RectF;

.field private setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private shouldGenerateQualityThumb:Z

.field private staticThumb:Landroid/graphics/drawable/Drawable;

.field private tag:Ljava/lang/Integer;

.field private thumbTag:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0x222223

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    .line 78
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 95
    iput-byte v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    .line 104
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 105
    sget-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 108
    :cond_0
    return-void
.end method

.method private checkAlphaAnimation(Z)V
    .locals 10
    .param p1, "skip"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 599
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    .line 600
    if-nez p1, :cond_1

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 602
    .local v0, "currentTime":J
    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    sub-long v2, v0, v4

    .line 603
    .local v2, "dt":J
    const-wide/16 v4, 0x12

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 604
    const-wide/16 v2, 0x12

    .line 606
    :cond_0
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    long-to-float v5, v2

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 607
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 608
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 611
    .end local v0    # "currentTime":J
    .end local v2    # "dt":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 612
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 613
    iget-boolean v4, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 620
    :cond_2
    :goto_0
    return-void

    .line 616
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I
    .param p4, "shader"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 389
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_27

    move-object/from16 v12, p2

    .line 390
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 393
    .local v12, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p4, :cond_4

    .line 394
    sget-object v21, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 398
    .local v21, "paint":Landroid/graphics/Paint;
    :goto_0
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v19, 0x1

    .line 399
    .local v19, "hasFilter":Z
    :goto_1
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-nez v2, :cond_7

    .line 400
    if-eqz p4, :cond_6

    .line 401
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 412
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_1

    .line 413
    if-eqz p4, :cond_9

    .line 414
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 421
    :cond_1
    :goto_3
    instance-of v2, v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_b

    .line 422
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_a

    .line 423
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v14

    .line 424
    .local v14, "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v13

    .line 438
    .local v13, "bitmapH":I
    :goto_4
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    div-float v24, v2, v3

    .line 439
    .local v24, "scaleW":F
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v3, v3

    div-float v23, v2, v3

    .line 441
    .local v23, "scaleH":F
    if-eqz p4, :cond_11

    .line 442
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 443
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 444
    .local v22, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 446
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 447
    int-to-float v2, v14

    div-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v4, v14

    div-float v4, v4, v23

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v6, v14

    div-float v6, v6, v23

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_3

    .line 456
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    .line 457
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v25, v0

    .line 458
    .local v25, "w":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    .line 459
    .local v18, "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    sub-int v3, v14, v25

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-int v4, v13, v18

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-int v5, v14, v25

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v13, v18

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 465
    .end local v18    # "h":I
    .end local v25    # "w":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 466
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 596
    .end local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    .end local v19    # "hasFilter":Z
    .end local v21    # "paint":Landroid/graphics/Paint;
    .end local v22    # "scale":F
    .end local v23    # "scaleH":F
    .end local v24    # "scaleW":F
    :cond_3
    :goto_7
    return-void

    .line 396
    .restart local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    .restart local v21    # "paint":Landroid/graphics/Paint;
    goto/16 :goto_0

    .line 398
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 402
    .restart local v19    # "hasFilter":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_0

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 405
    :cond_7
    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-eqz v2, :cond_0

    .line 406
    if-eqz p4, :cond_8

    .line 407
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_2

    .line 409
    :cond_8
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 416
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 426
    :cond_a
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v14

    .line 427
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 430
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_d

    .line 431
    :cond_c
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 432
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 434
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 435
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 450
    .restart local v22    # "scale":F
    .restart local v23    # "scaleH":F
    .restart local v24    # "scaleW":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v5, v13

    div-float v5, v5, v24

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v7, v13

    div-float v7, v7, v24

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 453
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 462
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    int-to-float v6, v13

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6

    .line 470
    .end local v22    # "scale":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v2, :cond_14

    .line 471
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 472
    .restart local v22    # "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    int-to-float v2, v14

    div-float v2, v2, v22

    float-to-int v14, v2

    .line 474
    int-to-float v2, v13

    div-float v2, v2, v22

    float-to-int v13, v2

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v4, v14

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v5, v13

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 478
    :try_start_0
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 480
    :catch_0
    move-exception v17

    .line 481
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 482
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 488
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 489
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 484
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 485
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_9

    .line 493
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "scale":F
    :cond_14
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 497
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    if-eqz v2, :cond_15

    .line 498
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v2, :cond_19

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 505
    :cond_15
    :goto_a
    int-to-float v2, v14

    div-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    .line 506
    int-to-float v2, v14

    div-float v2, v2, v23

    float-to-int v14, v2

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int v4, v14, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 512
    :goto_b
    instance-of v2, v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_16

    move-object v2, v12

    .line 513
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(IIII)V

    .line 515
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1b

    .line 516
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v26, v2, 0x2

    .line 517
    .local v26, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 518
    .local v20, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 519
    .local v15, "centerX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v16, v2, 0x2

    .line 520
    .local v16, "centerY":I
    sub-int v2, v15, v20

    sub-int v3, v16, v26

    add-int v4, v15, v20

    add-int v5, v16, v26

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 524
    .end local v15    # "centerX":I
    .end local v16    # "centerY":I
    .end local v20    # "height":I
    .end local v26    # "width":I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_18

    .line 526
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :cond_18
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 501
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_a

    .line 509
    :cond_1a
    int-to-float v2, v13

    div-float v2, v2, v24

    float-to-int v13, v2

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int v5, v13, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b

    .line 522
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 528
    :catch_1
    move-exception v17

    .line 529
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 530
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 536
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 537
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 532
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 533
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_e

    .line 543
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 544
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    if-eqz v2, :cond_1f

    .line 545
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v2, :cond_23

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 551
    :cond_1f
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 552
    instance-of v2, v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_20

    move-object v2, v12

    .line 553
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(IIII)V

    .line 555
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_24

    .line 556
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v26, v2, 0x2

    .line 557
    .restart local v26    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 558
    .restart local v20    # "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 559
    .restart local v15    # "centerX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v16, v2, 0x2

    .line 560
    .restart local v16    # "centerY":I
    sub-int v2, v15, v20

    sub-int v3, v16, v26

    add-int v4, v15, v20

    add-int v5, v16, v26

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 564
    .end local v15    # "centerX":I
    .end local v16    # "centerY":I
    .end local v20    # "height":I
    .end local v26    # "width":I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_22

    .line 566
    :try_start_2
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 567
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 580
    :cond_22
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 548
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_f

    .line 562
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_10

    .line 568
    :catch_2
    move-exception v17

    .line 569
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 570
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 576
    :cond_25
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 577
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 572
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_25

    .line 573
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_12

    .line 585
    .end local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "hasFilter":Z
    .end local v21    # "paint":Landroid/graphics/Paint;
    .end local v23    # "scaleH":F
    .end local v24    # "scaleW":F
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 587
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_3

    .line 589
    :try_start_3
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 590
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    .line 591
    :catch_3
    move-exception v17

    .line 592
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method

.method private recycleBitmap(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "newKey"    # Ljava/lang/String;
    .param p2, "thumb"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1024
    if-eqz p2, :cond_2

    .line 1025
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1026
    .local v4, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1031
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 1032
    instance-of v5, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_3

    move-object v2, v3

    .line 1033
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1034
    .local v2, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1045
    .end local v2    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .end local v3    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 1046
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1047
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1052
    :goto_2
    return-void

    .line 1028
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 1029
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .restart local v3    # "image":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1035
    :cond_3
    instance-of v5, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 1036
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1037
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v1

    .line 1038
    .local v1, "canDelete":Z
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageLoader;->isInCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1039
    if-eqz v1, :cond_1

    .line 1040
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1049
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canDelete":Z
    :cond_4
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 1050
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadImage()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    .line 113
    return-void
.end method

.method public clearImage()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 354
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 358
    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1056
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    if-ne p1, v3, :cond_5

    .line 1057
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 1058
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1059
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1062
    :cond_0
    aget-object v3, p2, v6

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1063
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_3

    .line 1064
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1065
    .local v1, "object":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 1069
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 1070
    iput-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 1072
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1073
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v3, :cond_4

    .line 1074
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1101
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1067
    .restart local v0    # "key":Ljava/lang/String;
    :cond_3
    iput-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 1076
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    .line 1080
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-ne p1, v3, :cond_2

    .line 1081
    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/String;

    .line 1082
    .local v2, "oldKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1083
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 1084
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 1086
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1087
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1088
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1090
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v3, :cond_2

    .line 1091
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1092
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 1093
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 1095
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1096
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1097
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x437f0000    # 255.0f

    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v6

    .line 626
    .local v0, "animationNotReady":Z
    :goto_0
    const/4 v3, 0x0

    .line 627
    .local v3, "isThumb":Z
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    .line 628
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 636
    :cond_0
    :goto_1
    if-eqz v1, :cond_d

    .line 637
    iget-byte v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    if-eqz v5, :cond_a

    .line 638
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 639
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v1, v5, v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 664
    :goto_2
    if-eqz v0, :cond_c

    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v5, v6

    .line 676
    .end local v0    # "animationNotReady":Z
    .end local v3    # "isThumb":Z
    :goto_4
    return v5

    :cond_1
    move v0, v7

    .line 625
    goto :goto_0

    .line 629
    .restart local v0    # "animationNotReady":Z
    .restart local v3    # "isThumb":Z
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    .line 630
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 631
    const/4 v3, 0x1

    goto :goto_1

    .line 632
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 633
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 634
    const/4 v3, 0x1

    goto :goto_1

    .line 641
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    .line 642
    const/4 v4, 0x0

    .line 643
    .local v4, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v1, v5, :cond_8

    .line 644
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 645
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 654
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 655
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v4, v5, v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 658
    .end local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    mul-float/2addr v5, v8

    mul-float/2addr v5, v9

    float-to-int v8, v5

    if-eqz v3, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_6
    invoke-direct {p0, p1, v1, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 673
    .end local v0    # "animationNotReady":Z
    .end local v3    # "isThumb":Z
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    move v5, v7

    .line 676
    goto :goto_4

    .line 646
    .restart local v0    # "animationNotReady":Z
    .restart local v3    # "isThumb":Z
    .restart local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 647
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 649
    :cond_8
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v1, v5, :cond_5

    .line 650
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 651
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 658
    .end local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_6

    .line 661
    :cond_a
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v8, v5

    if-eqz v3, :cond_b

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_8
    invoke-direct {p0, p1, v1, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_8

    :cond_c
    move v5, v7

    .line 664
    goto :goto_3

    .line 666
    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    .line 667
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-direct {p0, p1, v5, v8, v9}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 668
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v5, v6

    .line 669
    goto/16 :goto_4

    .line 671
    :cond_e
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method public getAnimatedOrientation()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    .line 303
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 682
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 688
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapHeight()I
    .locals 3

    .prologue
    const/16 v2, 0xb4

    .line 705
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 706
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 711
    :goto_0
    return v1

    .line 706
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    .line 707
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 708
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    .line 710
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 711
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public getBitmapWidth()I
    .locals 3

    .prologue
    const/16 v2, 0xb4

    .line 695
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 696
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 701
    :goto_0
    return v1

    .line 696
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 697
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 698
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 700
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 701
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getCacheOnly()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpImageLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    return v0
.end method

.method public getImageLocation()Lorg/telegram/tgnet/TLObject;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    return v0
.end method

.method public getImageX()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    return v0
.end method

.method public getImageX2()I
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageY()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    return v0
.end method

.method public getImageY2()I
    .locals 2

    .prologue
    .line 784
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    return v0
.end method

.method public getParentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    return v0
.end method

.method public getRoundRadius()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    return v0
.end method

.method public getStaticThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTag(Z)Ljava/lang/Integer;
    .locals 1
    .param p1, "thumb"    # Z

    .prologue
    .line 917
    if-eqz p1, :cond_0

    .line 918
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    .line 920
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowStartAnimation()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForcePreview()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 800
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedsQualityThumb()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public onAttachedToWindow()Z
    .locals 10

    .prologue
    .line 380
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v0, :cond_1

    .line 363
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 366
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 369
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 370
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iput v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    .line 372
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    .line 375
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 376
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 377
    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 889
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 890
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 733
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 734
    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 749
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    .line 750
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    .line 264
    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 737
    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    .line 738
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .line 268
    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 844
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    .line 845
    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 10
    .param p1, "httpUrl"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move v7, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "size"    # I
    .param p5, "ext"    # Ljava/lang/String;
    .param p6, "cacheOnly"    # Z

    .prologue
    .line 120
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "cacheOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "httpUrl"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p5, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p6, "thumbFilter"    # Ljava/lang/String;
    .param p7, "size"    # I
    .param p8, "ext"    # Ljava/lang/String;
    .param p9, "cacheOnly"    # Z

    .prologue
    .line 136
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 138
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 140
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    if-eqz p1, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v5, :cond_9

    .line 149
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 150
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 151
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 153
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 154
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 155
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 156
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 157
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 158
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 159
    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 160
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 161
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 162
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 163
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 165
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 166
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 167
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 168
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v5, :cond_6

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 174
    :cond_3
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_5

    .line 175
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    :cond_4
    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 260
    :cond_5
    :goto_3
    return-void

    .line 171
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 175
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 180
    :cond_9
    move-object/from16 v0, p5

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v5, :cond_a

    .line 181
    const/16 p5, 0x0

    .line 184
    :cond_a
    const/4 v2, 0x0

    .line 185
    .local v2, "key":Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 186
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_13

    move-object v3, p1

    .line 187
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 188
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    .line 208
    if-eqz p3, :cond_c

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    :cond_c
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v5, :cond_f

    if-eqz v2, :cond_f

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 214
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_e

    .line 215
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_18

    :cond_d
    const/4 v5, 0x1

    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_19

    const/4 v6, 0x1

    :goto_6
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 217
    :cond_e
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v5, :cond_5

    .line 222
    :cond_f
    const/4 v4, 0x0

    .line 223
    .local v4, "thumbKey":Ljava/lang/String;
    if-eqz p5, :cond_10

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    if-eqz p6, :cond_10

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    :cond_10
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 231
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 233
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 237
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 240
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 241
    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 242
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 243
    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 244
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 245
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 246
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 248
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_12

    .line 249
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_11

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_11

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1a

    :cond_11
    const/4 v5, 0x1

    :goto_7
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1b

    const/4 v6, 0x1

    :goto_8
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 252
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 253
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 254
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v5, :cond_1c

    .line 255
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 189
    .end local v4    # "thumbKey":Ljava/lang/String;
    :cond_13
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v5, :cond_14

    move-object v3, p1

    .line 190
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 191
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    goto/16 :goto_4

    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_14
    move-object v3, p1

    .line 193
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 194
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$Document;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v5, :cond_16

    .line 195
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v5, :cond_15

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 198
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 201
    :cond_16
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 204
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_17
    if-eqz p2, :cond_b

    .line 205
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 215
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 249
    .restart local v4    # "thumbKey":Ljava/lang/String;
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 257
    :cond_1c
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "thumbFilter"    # Ljava/lang/String;
    .param p5, "size"    # I
    .param p6, "ext"    # Ljava/lang/String;
    .param p7, "cacheOnly"    # Z

    .prologue
    .line 132
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "thumbFilter"    # Ljava/lang/String;
    .param p5, "ext"    # Ljava/lang/String;
    .param p6, "cacheOnly"    # Z

    .prologue
    .line 128
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 311
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void

    :cond_0
    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 315
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 316
    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 317
    invoke-direct {p0, v3, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 318
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 319
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 320
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 321
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 322
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 323
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 324
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 325
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 326
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 327
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 328
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 329
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 330
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 331
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 332
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 334
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 336
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 338
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 339
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-interface {v2, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 342
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 343
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 349
    :cond_4
    :goto_0
    return-void

    .line 346
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "thumb"    # Z
    .param p4, "memCache"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 933
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1018
    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return v3

    .line 936
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    if-nez p3, :cond_11

    .line 937
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_2

    .line 941
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 943
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 944
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v2, :cond_d

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_d

    .line 945
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_c

    move-object v2, p1

    .line 946
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    .line 955
    :goto_1
    if-nez p4, :cond_f

    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v2, :cond_f

    .line 956
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    .line 957
    :cond_4
    iput v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 959
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    :cond_5
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    .line 964
    :cond_6
    :goto_3
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_7

    move-object v0, p1

    .line 965
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 966
    .local v0, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 967
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_7

    .line 968
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    .line 972
    .end local v0    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 973
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v2, :cond_10

    .line 974
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1015
    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_8
    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v2, :cond_b

    .line 1016
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    :cond_9
    move v2, v4

    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_a

    move v3, v4

    :cond_a
    invoke-interface {v5, p0, v2, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_b
    move v3, v4

    .line 1018
    goto/16 :goto_0

    .line 948
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 949
    .local v1, "object":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    .line 952
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :cond_d
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    :cond_e
    move v2, v3

    .line 959
    goto :goto_2

    .line 962
    :cond_f
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_3

    .line 976
    :cond_10
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_4

    .line 979
    :cond_11
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v2, :cond_8

    .line 980
    :cond_13
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 985
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 987
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_15

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_15

    .line 988
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_14

    .line 989
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    .line 998
    :goto_6
    if-nez p4, :cond_17

    iget-byte v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 v5, 0x2

    if-eq v2, v5, :cond_17

    .line 999
    iput v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 1001
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v4

    :goto_7
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    .line 1006
    :goto_8
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 1007
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v2, :cond_18

    .line 1008
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    .line 991
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 992
    .restart local v1    # "object":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    .line 995
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :cond_15
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_16
    move v2, v3

    .line 1001
    goto :goto_7

    .line 1003
    :cond_17
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_8

    .line 1010
    :cond_18
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_4

    :cond_19
    move v2, v3

    .line 1016
    goto/16 :goto_5
.end method

.method public setImageCoords(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 765
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    .line 766
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    .line 767
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    .line 768
    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    .line 769
    return-void
.end method

.method public setImageY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 761
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    .line 762
    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    .line 291
    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    .line 869
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    .line 870
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "center"    # Z

    .prologue
    .line 279
    :goto_0
    if-gez p1, :cond_0

    .line 280
    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 282
    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    .line 283
    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 285
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    .line 286
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    .line 287
    return-void
.end method

.method public setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 860
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 861
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 753
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 754
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 755
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 756
    .local v0, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 758
    .end local v0    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    .line 272
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 852
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    .line 853
    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    .line 882
    return-void
.end method

.method protected setTag(Ljava/lang/Integer;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "thumb"    # Z

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 926
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    .line 930
    :goto_0
    return-void

    .line 928
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setVisible(ZZ)V
    .locals 6
    .param p1, "value"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    .line 719
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 720
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 723
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    .line 900
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 906
    :cond_0
    return-void
.end method

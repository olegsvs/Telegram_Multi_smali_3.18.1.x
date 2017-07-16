.class public Lorg/telegram/ui/Components/CloseProgressDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "CloseProgressDrawable2.java"


# instance fields
.field private angle:F

.field private animating:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "newTime":J
    const/4 v12, 0x0

    .local v12, "invalidate":Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    sub-long v10, v14, v2

    .local v10, "dt":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v10

    long-to-float v3, v4

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44340000    # 720.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    .end local v10    # "dt":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v13, 0x3f800000    # 1.0f

    .local v13, "progress1":F
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "progress2":F
    const/high16 v17, 0x3f800000    # 1.0f

    .local v17, "progress3":F
    const/16 v18, 0x0

    .local v18, "progress4":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v13, v2, v3

    :cond_2
    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v2, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v3, v2, v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v4, v2, v17

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v2, v18

    const/4 v4, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .local v8, "cx":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .local v9, "cy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v8, v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v8

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_f

    const/4 v2, 0x0

    :goto_2
    const/high16 v4, 0x42340000    # 45.0f

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    return-void

    .end local v8    # "cx":I
    .end local v9    # "cy":I
    .end local v13    # "progress1":F
    .end local v16    # "progress2":F
    .end local v17    # "progress3":F
    .end local v18    # "progress4":F
    .restart local v10    # "dt":J
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit16 v3, v3, 0x2d0

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    goto/16 :goto_0

    .end local v10    # "dt":J
    .restart local v13    # "progress1":F
    .restart local v16    # "progress2":F
    .restart local v17    # "progress3":F
    .restart local v18    # "progress4":F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    const/4 v13, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v16, v2, v3

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    const/16 v16, 0x0

    move/from16 v13, v16

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v17, v2, v3

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    const/16 v17, 0x0

    move/from16 v16, v17

    move/from16 v13, v17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v18, v2, v3

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    const/16 v17, 0x0

    move/from16 v16, v17

    move/from16 v13, v17

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v18, v2, v3

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    const/16 v17, 0x0

    move/from16 v16, v17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v13, v2, v3

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v16, v2, v3

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44340000    # 720.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v17, v2, v3

    goto/16 :goto_1

    .restart local v8    # "cx":I
    .restart local v9    # "cy":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v2, v4

    goto/16 :goto_2

    :cond_10
    const/high16 v2, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    sub-float v5, v2, v5

    goto/16 :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    return-void
.end method

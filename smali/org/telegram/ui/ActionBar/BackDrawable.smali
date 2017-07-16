.class public Lorg/telegram/ui/ActionBar/BackDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackDrawable.java"


# instance fields
.field private alwaysClose:Z

.field private animationInProgress:Z

.field private animationTime:F

.field private color:I

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private paintB:Landroid/graphics/Paint;

.field private reverseAngle:Z

.field private rotated:Z

.field private rotatedColor:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "close"    # Z

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paintB:Landroid/graphics/Paint;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    .line 34
    const v0, -0x8a8a8b

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    .line 35
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    .line 36
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-eqz v2, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    move-wide/from16 v18, v0

    sub-long v10, v6, v18

    .line 90
    .local v10, "dt":J
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-long v6, v2

    add-long/2addr v6, v10

    long-to-int v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 91
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 101
    .end local v10    # "dt":J
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v2, v4

    float-to-int v13, v2

    .line 106
    .local v13, "rD":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v2, v4

    float-to-int v14, v2

    .line 107
    .local v14, "rG":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v2, v4

    float-to-int v12, v2

    .line 108
    .local v12, "rB":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v6, v12

    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 109
    .local v8, "c":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 114
    .local v15, "rotation":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    if-nez v2, :cond_8

    .line 115
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v2, :cond_7

    const/16 v2, -0xe1

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 120
    :goto_5
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    sub-float v3, v2, v4

    const/4 v4, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 122
    .local v16, "startYDiff":F
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    add-float v9, v2, v4

    .line 123
    .local v9, "endYDiff":F
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    add-float v3, v2, v4

    .line 124
    .local v3, "startXDiff":F
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    sub-float v5, v2, v4

    .line 125
    .local v5, "endXDiff":F
    move/from16 v0, v16

    neg-float v4, v0

    neg-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v4, v16

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-void

    .line 94
    .end local v3    # "startXDiff":F
    .end local v5    # "endXDiff":F
    .end local v8    # "c":I
    .end local v9    # "endYDiff":F
    .end local v12    # "rB":I
    .end local v13    # "rD":I
    .end local v14    # "rG":I
    .end local v15    # "rotation":F
    .end local v16    # "startYDiff":F
    .restart local v10    # "dt":J
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    div-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    .line 97
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    .line 105
    .end local v10    # "dt":J
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 106
    .restart local v13    # "rD":I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 107
    .restart local v14    # "rG":I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 115
    .restart local v8    # "c":I
    .restart local v12    # "rB":I
    .restart local v15    # "rotation":F
    :cond_7
    const/16 v2, 0x87

    goto/16 :goto_4

    .line 117
    :cond_8
    const/high16 v4, 0x43070000    # 135.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v2, :cond_9

    const/16 v2, -0xb4

    :goto_6
    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 118
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 117
    :cond_9
    const/16 v2, 0xb4

    goto :goto_6
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 157
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 152
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 138
    return-void
.end method

.method public setAnimationTime(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    .line 78
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    .line 46
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 47
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 143
    return-void
.end method

.method public setRotated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    .line 82
    return-void
.end method

.method public setRotatedColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    .line 51
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 52
    return-void
.end method

.method public setRotation(FZ)V
    .locals 6
    .param p1, "rotation"    # F
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 56
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 61
    :cond_0
    :goto_0
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 62
    if-eqz p2, :cond_3

    .line 63
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 64
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 68
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 69
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    .line 73
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 74
    return-void

    .line 58
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    sub-float v0, v2, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    goto :goto_1

    .line 71
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    goto :goto_2
.end method

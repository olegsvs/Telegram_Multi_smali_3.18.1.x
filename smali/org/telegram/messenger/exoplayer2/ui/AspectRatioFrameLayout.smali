.class public Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
    }
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private resizeMode:I

.field private rotation:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 81
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 119
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 125
    .local v9, "width":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 126
    .local v4, "height":I
    int-to-float v10, v9

    int-to-float v11, v4

    div-float v8, v10, v11

    .line 127
    .local v8, "viewAspectRatio":F
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v1, v10, v11

    .line 128
    .local v1, "aspectDeformation":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    .line 133
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v10, :pswitch_data_0

    .line 141
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_4

    .line 142
    int-to-float v10, v9

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 148
    :goto_1
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-super {p0, v10, v11}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 149
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildCount()I

    move-result v3

    .line 150
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 152
    .local v2, "child":Landroid/view/View;
    instance-of v10, v2, Landroid/view/TextureView;

    if-eqz v10, :cond_5

    .line 153
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 154
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 155
    .local v5, "px":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    div-int/lit8 v6, v10, 0x2

    .line 156
    .local v6, "py":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    int-to-float v11, v11

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 157
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_2

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_3

    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 159
    .local v7, "ratio":F
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v7

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 161
    .end local v7    # "ratio":F
    :cond_3
    check-cast v2, Landroid/view/TextureView;

    .end local v2    # "child":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v5    # "px":I
    .end local v6    # "py":I
    :pswitch_0
    int-to-float v10, v9

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 136
    goto :goto_1

    .line 138
    :pswitch_1
    int-to-float v10, v4

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 139
    goto :goto_1

    .line 144
    :cond_4
    int-to-float v10, v4

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_1

    .line 150
    .restart local v0    # "a":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "count":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(FI)V
    .locals 1
    .param p1, "widthHeightRatio"    # F
    .param p2, "rotation"    # I

    .prologue
    .line 89
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    if-eq v0, p2, :cond_1

    .line 90
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 91
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    .line 92
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 94
    :cond_1
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 110
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 112
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 114
    :cond_0
    return-void
.end method

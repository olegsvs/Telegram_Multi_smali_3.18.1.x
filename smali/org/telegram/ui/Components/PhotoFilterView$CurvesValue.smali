.class public Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurvesValue"
.end annotation


# instance fields
.field public blacksLevel:F

.field public cachedDataPoints:[F

.field public highlightsLevel:F

.field public midtonesLevel:F

.field public previousBlacksLevel:F

.field public previousHighlightsLevel:F

.field public previousMidtonesLevel:F

.field public previousShadowsLevel:F

.field public previousWhitesLevel:F

.field public shadowsLevel:F

.field public whitesLevel:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v1, 0x41c80000    # 25.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    return-void
.end method


# virtual methods
.method public getDataPoints()[F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    return-object v0
.end method

.method public interpolateCurve()[F
    .locals 26

    .prologue
    const/16 v22, 0xe

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v22, 0x0

    const v23, -0x457ced91    # -0.001f

    aput v23, v17, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    aput v23, v17, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0x4

    const/high16 v23, 0x3e800000    # 0.25f

    aput v23, v17, v22

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0x6

    const/high16 v23, 0x3f000000    # 0.5f

    aput v23, v17, v22

    const/16 v22, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0x8

    const/high16 v23, 0x3f400000    # 0.75f

    aput v23, v17, v22

    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0xa

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v17, v22

    const/16 v22, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    const/16 v22, 0xc

    const v23, 0x3f8020c5    # 1.001f

    aput v23, v17, v22

    const/16 v22, 0xd

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    aput v23, v17, v22

    .local v17, "points":[F
    new-instance v3, Ljava/util/ArrayList;

    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "dataPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v6, Ljava/util/ArrayList;

    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "interpolatedPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v22, 0x0

    aget v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x1

    aget v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .local v5, "index":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v22

    if-ge v5, v0, :cond_3

    add-int/lit8 v22, v5, -0x1

    mul-int/lit8 v22, v22, 0x2

    aget v9, v17, v22

    .local v9, "point0x":F
    add-int/lit8 v22, v5, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    aget v10, v17, v22

    .local v10, "point0y":F
    mul-int/lit8 v22, v5, 0x2

    aget v11, v17, v22

    .local v11, "point1x":F
    mul-int/lit8 v22, v5, 0x2

    add-int/lit8 v22, v22, 0x1

    aget v12, v17, v22

    .local v12, "point1y":F
    add-int/lit8 v22, v5, 0x1

    mul-int/lit8 v22, v22, 0x2

    aget v13, v17, v22

    .local v13, "point2x":F
    add-int/lit8 v22, v5, 0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    aget v14, v17, v22

    .local v14, "point2y":F
    add-int/lit8 v22, v5, 0x2

    mul-int/lit8 v22, v22, 0x2

    aget v15, v17, v22

    .local v15, "point3x":F
    add-int/lit8 v22, v5, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    aget v16, v17, v22

    .local v16, "point3y":F
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const/16 v22, 0x64

    move/from16 v0, v22

    if-ge v4, v0, :cond_2

    int-to-float v0, v4

    move/from16 v22, v0

    const v23, 0x3c23d70a    # 0.01f

    mul-float v19, v22, v23

    .local v19, "t":F
    mul-float v20, v19, v19

    .local v20, "tt":F
    mul-float v21, v20, v19

    .local v21, "ttt":F
    const/high16 v22, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v11

    sub-float v24, v13, v9

    mul-float v24, v24, v19

    add-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v24, v24, v9

    const/high16 v25, 0x40a00000    # 5.0f

    mul-float v25, v25, v11

    sub-float v24, v24, v25

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v13

    add-float v24, v24, v25

    sub-float v24, v24, v15

    mul-float v24, v24, v20

    add-float v23, v23, v24

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v24, v24, v11

    sub-float v24, v24, v9

    const/high16 v25, 0x40400000    # 3.0f

    mul-float v25, v25, v13

    sub-float v24, v24, v25

    add-float v24, v24, v15

    mul-float v24, v24, v21

    add-float v23, v23, v24

    mul-float v7, v22, v23

    .local v7, "pix":F
    const/high16 v22, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v12

    sub-float v24, v14, v10

    mul-float v24, v24, v19

    add-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v24, v24, v10

    const/high16 v25, 0x40a00000    # 5.0f

    mul-float v25, v25, v12

    sub-float v24, v24, v25

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v14

    add-float v24, v24, v25

    sub-float v24, v24, v16

    mul-float v24, v24, v20

    add-float v23, v23, v24

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v24, v24, v12

    sub-float v24, v24, v10

    const/high16 v25, 0x40400000    # 3.0f

    mul-float v25, v25, v14

    sub-float v24, v24, v25

    add-float v24, v24, v16

    mul-float v24, v24, v21

    add-float v23, v23, v24

    mul-float v8, v22, v23

    .local v8, "piy":F
    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v22, v7, v9

    if-lez v22, :cond_0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v22, v4, -0x1

    rem-int/lit8 v22, v22, 0x2

    if-nez v22, :cond_1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v7    # "pix":F
    .end local v8    # "piy":F
    .end local v19    # "t":F
    .end local v20    # "tt":F
    .end local v21    # "ttt":F
    :cond_2
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .end local v4    # "i":I
    .end local v9    # "point0x":F
    .end local v10    # "point0y":F
    .end local v11    # "point1x":F
    .end local v12    # "point1y":F
    .end local v13    # "point2x":F
    .end local v14    # "point2y":F
    .end local v15    # "point3x":F
    .end local v16    # "point3y":F
    :cond_3
    const/16 v22, 0xc

    aget v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0xd

    aget v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    move-object/from16 v23, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .local v18, "retValue":[F
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v2, v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v18
.end method

.method public isDefault()Z
    .locals 4

    .prologue
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v1, 0x42960000    # 75.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreValues()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    return-void
.end method

.method public saveValues()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    return-void
.end method

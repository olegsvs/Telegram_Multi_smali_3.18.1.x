.class public Lorg/telegram/ui/Components/Paint/Render;
.super Ljava/lang/Object;
.source "Render.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 39
    .param p0, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    new-instance v29, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v29, "dataBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v28

    .local v28, "count":I
    if-nez v28, :cond_0

    :goto_0
    return-object v29

    :cond_0
    const/16 v8, 0x14

    .local v8, "vertexDataSize":I
    mul-int/lit8 v4, v28, 0x4

    add-int/lit8 v5, v28, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int v25, v8, v4

    .local v25, "capacity":I
    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    .local v24, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v36

    .local v36, "vertexData":Ljava/nio/FloatBuffer;
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    const/16 v31, 0x0

    .local v31, "n":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v37

    .local v37, "x":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v38

    .local v38, "y":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v34

    .local v34, "size":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v23

    .local v23, "angle":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v22

    .local v22, "alpha":F
    new-instance v33, Landroid/graphics/RectF;

    sub-float v4, v37, v34

    sub-float v5, v38, v34

    add-float v6, v37, v34

    add-float v7, v38, v34

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v33, "rect":Landroid/graphics/RectF;
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v32, v0

    const/4 v4, 0x0

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v32, v4

    const/4 v4, 0x1

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v32, v4

    const/4 v4, 0x2

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v32, v4

    const/4 v4, 0x3

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v32, v4

    const/4 v4, 0x4

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v32, v4

    const/4 v4, 0x5

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v32, v4

    const/4 v4, 0x6

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v32, v4

    const/4 v4, 0x7

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v32, v4

    .local v32, "points":[F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    .local v26, "centerX":F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    .local v27, "centerY":F
    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    .local v35, "t":Landroid/graphics/Matrix;
    move/from16 v0, v23

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    move-object/from16 v0, v35

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static/range {v33 .. v33}, Lorg/telegram/ui/Components/Paint/Utils;->RectFIntegral(Landroid/graphics/RectF;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    if-eqz v31, :cond_1

    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    :cond_1
    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    const/4 v4, 0x2

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    const/4 v4, 0x4

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    const/4 v4, 0x6

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v31, v31, 0x1

    :cond_2
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .end local v22    # "alpha":F
    .end local v23    # "angle":F
    .end local v26    # "centerX":F
    .end local v27    # "centerY":F
    .end local v32    # "points":[F
    .end local v33    # "rect":Landroid/graphics/RectF;
    .end local v34    # "size":F
    .end local v35    # "t":Landroid/graphics/Matrix;
    .end local v37    # "x":F
    .end local v38    # "y":F
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v9

    .local v9, "coordData":Ljava/nio/FloatBuffer;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v15

    .local v15, "texData":Ljava/nio/FloatBuffer;
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x1

    move v14, v8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v21

    .local v21, "alphaData":Ljava/nio/FloatBuffer;
    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x1406

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method private static PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 27
    .param p0, "lastPoint"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p1, "point"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p2, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v18, v0

    .local v18, "distance":D
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v26

    .local v26, "vector":Lorg/telegram/ui/Components/Paint/Point;
    new-instance v3, Lorg/telegram/ui/Components/Paint/Point;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    .local v3, "unitVector":Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move-object/from16 v0, p2

    iget v7, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    .local v7, "vectorAngle":F
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v6, v4, v5

    .local v6, "brushWeight":F
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v24, v0

    .local v24, "step":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v18, v4

    if-lez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, v18

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    const v9, 0x3f933333    # 1.15f

    mul-float/2addr v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .local v13, "boldenedAlpha":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .local v2, "boldenHead":Z
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .local v15, "boldenTail":Z
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    sub-double v4, v18, v4

    div-double v4, v4, v24

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v16, v0

    .local v16, "count":I
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v17

    .local v17, "currentCount":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v22

    .local v22, "start":Lorg/telegram/ui/Components/Paint/Point;
    const/16 v23, 0x1

    .local v23, "succeed":Z
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    move-wide/from16 v20, v0

    .local v20, "f":D
    :goto_1
    cmpg-double v4, v20, v18

    if-gtz v4, :cond_1

    if-eqz v2, :cond_4

    move v8, v13

    .local v8, "alpha":F
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v5

    const/4 v9, -0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    move-result v23

    if-nez v23, :cond_5

    .end local v8    # "alpha":F
    :cond_1
    if-eqz v23, :cond_2

    if-eqz v15, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v10

    const/4 v14, -0x1

    move-object/from16 v9, p2

    move v11, v6

    move v12, v7

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    :cond_2
    sub-double v4, v20, v18

    move-object/from16 v0, p2

    iput-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    return-void

    .end local v2    # "boldenHead":Z
    .end local v6    # "brushWeight":F
    .end local v7    # "vectorAngle":F
    .end local v13    # "boldenedAlpha":F
    .end local v15    # "boldenTail":Z
    .end local v16    # "count":I
    .end local v17    # "currentCount":I
    .end local v20    # "f":D
    .end local v22    # "start":Lorg/telegram/ui/Components/Paint/Point;
    .end local v23    # "succeed":Z
    .end local v24    # "step":D
    :cond_3
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    move-object/from16 v0, v26

    iget-wide v10, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v7, v4

    goto/16 :goto_0

    .restart local v2    # "boldenHead":Z
    .restart local v6    # "brushWeight":F
    .restart local v7    # "vectorAngle":F
    .restart local v13    # "boldenedAlpha":F
    .restart local v15    # "boldenTail":Z
    .restart local v16    # "count":I
    .restart local v17    # "currentCount":I
    .restart local v20    # "f":D
    .restart local v22    # "start":Lorg/telegram/ui/Components/Paint/Point;
    .restart local v23    # "succeed":Z
    .restart local v24    # "step":D
    :cond_4
    move-object/from16 v0, p2

    iget v8, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    goto :goto_2

    .restart local v8    # "alpha":F
    :cond_5
    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v22

    const/4 v2, 0x0

    add-double v20, v20, v24

    goto :goto_1
.end method

.method private static PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 6
    .param p0, "point"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p1, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    const/4 v3, 0x0

    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    iget v5, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v2, v0, v5

    .local v2, "brushWeight":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v1

    .local v1, "start":Landroid/graphics/PointF;
    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    .local v3, "angle":F
    :cond_0
    iget v4, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    .local v4, "alpha":F
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    return-void
.end method

.method public static RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "path"    # Lorg/telegram/ui/Components/Paint/Path;
    .param p1, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBaseWeight()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getSpacing()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getAlpha()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getAngle()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getScale()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getLength()I

    move-result v1

    .local v1, "length":I
    if-nez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    :cond_1
    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    iput-wide v4, p0, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Render;->Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    .local v2, "points":[Lorg/telegram/ui/Components/Paint/Point;
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.class public Lorg/telegram/ui/Components/Paint/Input;
.super Ljava/lang/Object;
.source "Input.java"


# instance fields
.field private beganDrawing:Z

.field private clearBuffer:Z

.field private hasMoved:Z

.field private invertMatrix:Landroid/graphics/Matrix;

.field private isFirst:Z

.field private lastLocation:Lorg/telegram/ui/Components/Paint/Point;

.field private lastRemainder:D

.field private points:[Lorg/telegram/ui/Components/Paint/Point;

.field private pointsCount:I

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private tempPoint:[F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 1
    .param p1, "render"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/Input;D)D
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Input;
    .param p1, "x1"    # D

    .prologue
    iput-wide p1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    return-wide p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Input;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Input;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    return p1
.end method

.method private paintPath(Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 3
    .param p1, "path"    # Lorg/telegram/ui/Components/Paint/Path;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Path;->setup(IFLorg/telegram/ui/Components/Paint/Brush;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    iput-wide v0, p1, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    new-instance v2, Lorg/telegram/ui/Components/Paint/Input$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Input$1;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    return-void
.end method

.method private smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;F)Lorg/telegram/ui/Components/Paint/Point;
    .locals 16
    .param p1, "midPoint1"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p2, "midPoint2"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p3, "prev1"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p4, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, p4

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .local v10, "a1":D
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, p4

    mul-float/2addr v2, v3

    mul-float v2, v2, p4

    float-to-double v12, v2

    .local v12, "a2":D
    mul-float v2, p4, p4

    float-to-double v14, v2

    .local v14, "a3":D
    new-instance v3, Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v4, v10

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v6, v10

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v3
.end method

.method private smoothenAndPaintPoints(Z)V
    .locals 26
    .param p1, "ended"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .local v12, "points":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/telegram/ui/Components/Paint/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v14, v19, v20

    .local v14, "prev2":Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v13, v19, v20

    .local v13, "prev1":Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v4, v19, v20

    .local v4, "cur":Lorg/telegram/ui/Components/Paint/Point;
    if-eqz v4, :cond_0

    if-eqz v13, :cond_0

    if-nez v14, :cond_1

    .end local v4    # "cur":Lorg/telegram/ui/Components/Paint/Point;
    .end local v12    # "points":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/telegram/ui/Components/Paint/Point;>;"
    .end local v13    # "prev1":Lorg/telegram/ui/Components/Paint/Point;
    .end local v14    # "prev2":Lorg/telegram/ui/Components/Paint/Point;
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "cur":Lorg/telegram/ui/Components/Paint/Point;
    .restart local v12    # "points":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/telegram/ui/Components/Paint/Point;>;"
    .restart local v13    # "prev1":Lorg/telegram/ui/Components/Paint/Point;
    .restart local v14    # "prev2":Lorg/telegram/ui/Components/Paint/Point;
    :cond_1
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v0, v20

    invoke-virtual {v13, v14, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v7

    .local v7, "midPoint1":Lorg/telegram/ui/Components/Paint/Point;
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v0, v20

    invoke-virtual {v4, v13, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v8

    .local v8, "midPoint2":Lorg/telegram/ui/Components/Paint/Point;
    const/16 v16, 0x1

    .local v16, "segmentDistance":I
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v5

    .local v5, "distance":F
    const-wide/high16 v20, 0x4048000000000000L    # 48.0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v5, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4038000000000000L    # 24.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    .local v9, "numberOfSegments":I
    const/16 v18, 0x0

    .local v18, "t":F
    const/high16 v19, 0x3f800000    # 1.0f

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v17, v19, v20

    .local v17, "step":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v9, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v8, v13, v1}, Lorg/telegram/ui/Components/Paint/Input;->smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;F)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v11

    .local v11, "point":Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v11, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    :cond_2
    invoke-virtual {v12, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-float v18, v18, v17

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v11    # "point":Lorg/telegram/ui/Components/Paint/Point;
    :cond_3
    if-eqz p1, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v8, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    :cond_4
    invoke-virtual {v12, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v15, v0, [Lorg/telegram/ui/Components/Paint/Point;

    .local v15, "result":[Lorg/telegram/ui/Components/Paint/Point;
    invoke-virtual {v12, v15}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v10, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .local v10, "path":Lorg/telegram/ui/Components/Paint/Path;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto/16 :goto_0

    .end local v4    # "cur":Lorg/telegram/ui/Components/Paint/Point;
    .end local v5    # "distance":F
    .end local v6    # "j":I
    .end local v7    # "midPoint1":Lorg/telegram/ui/Components/Paint/Point;
    .end local v8    # "midPoint2":Lorg/telegram/ui/Components/Paint/Point;
    .end local v9    # "numberOfSegments":I
    .end local v10    # "path":Lorg/telegram/ui/Components/Paint/Path;
    .end local v12    # "points":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/telegram/ui/Components/Paint/Point;>;"
    .end local v13    # "prev1":Lorg/telegram/ui/Components/Paint/Point;
    .end local v14    # "prev2":Lorg/telegram/ui/Components/Paint/Point;
    .end local v15    # "result":[Lorg/telegram/ui/Components/Paint/Point;
    .end local v16    # "segmentDistance":I
    .end local v17    # "step":F
    .end local v18    # "t":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v15, v0, [Lorg/telegram/ui/Components/Paint/Point;

    .restart local v15    # "result":[Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v10, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .restart local v10    # "path":Lorg/telegram/ui/Components/Paint/Path;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .local v9, "x":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v10, v2, v3

    .local v10, "y":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aput v9, v2, v12

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aput v10, v2, v11

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aget v2, v2, v12

    float-to-double v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aget v4, v4, v11

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    .local v1, "location":Lorg/telegram/ui/Components/Paint/Point;
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    if-nez v2, :cond_1

    iput-boolean v11, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    iput-boolean v12, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    iput-boolean v11, p0, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    aput-object v1, v2, v12

    iput v11, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iput-boolean v11, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v8

    .local v8, "distance":F
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->onBeganDrawing()V

    iput-boolean v11, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    aput-object v1, v2, v3

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v12}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(Z)V

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    goto :goto_0

    .end local v8    # "distance":F
    :pswitch_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->shouldDraw()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v11, v1, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    new-instance v2, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Paint/Path;-><init>(Lorg/telegram/ui/Components/Paint/Point;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Input;->reset()V

    :cond_5
    :goto_1
    iput v12, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Painting;->commitStroke(I)V

    iput-boolean v12, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->onFinishedDrawing(Z)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    if-lez v2, :cond_5

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

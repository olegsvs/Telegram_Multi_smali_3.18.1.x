.class public Lorg/telegram/ui/Components/Paint/RenderView;
.super Landroid/view/TextureView;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;,
        Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private color:I

.field private delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

.field private input:Lorg/telegram/ui/Components/Paint/Input;

.field private internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

.field private orientation:I

.field private painting:Lorg/telegram/ui/Components/Paint/Painting;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private shuttingDown:Z

.field private transformedBitmap:Z

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private weight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paint"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p3, "b"    # Landroid/graphics/Bitmap;
    .param p4, "rotation"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Input;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Input;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->updateTransform()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Paint/RenderView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private brushWeightForSize(F)F
    .locals 3
    .param p1, "size"    # F

    .prologue
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v0, v1, Lorg/telegram/ui/Components/Size;->width:F

    .local v0, "paintingWidth":F
    const/high16 v1, 0x3b800000    # 0.00390625f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3d340000

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    return v1
.end method

.method private updateTransform()V
    .locals 13

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getWidth()I

    move-result v12

    .local v12, "width":I
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    if-eqz v1, :cond_1

    int-to-float v1, v12

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float v11, v1, v2

    .local v11, "scale":F
    :goto_0
    cmpg-float v1, v11, v0

    if-gtz v1, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v9

    .local v9, "paintingSize":Lorg/telegram/ui/Components/Size;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    neg-float v1, v11

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v1, v9, Lorg/telegram/ui/Components/Size;->width:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, v9, Lorg/telegram/ui/Components/Size;->height:F

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Paint/Input;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, -0x40800000    # -1.0f

    move v2, v0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object v10

    .local v10, "proj":[F
    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v6

    .local v6, "effectiveProjection":[F
    invoke-static {v10, v6}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v7

    .local v7, "finalProjection":[F
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderProjection([F)V

    return-void

    .end local v6    # "effectiveProjection":[F
    .end local v7    # "finalProjection":[F
    .end local v9    # "paintingSize":Lorg/telegram/ui/Components/Size;
    .end local v10    # "proj":[F
    .end local v11    # "scale":F
    :cond_1
    move v11, v5

    goto :goto_0
.end method


# virtual methods
.method public getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method public getCurrentColor()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    return v0
.end method

.method public getCurrentWeight()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    return v0
.end method

.method public getPainting()Lorg/telegram/ui/Components/Paint/Painting;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object v0
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeganDrawing()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onBeganDrawing()V

    :cond_0
    return-void
.end method

.method public onFinishedDrawing(Z)V
    .locals 1
    .param p1, "moved"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onFinishedDrawing(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Input;->process(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public performInContext(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$4;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 1
    .param p1, "value"    # Lorg/telegram/ui/Components/Paint/Brush;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void
.end method

.method public setBrushSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->brushWeightForSize(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V
    .locals 0
    .param p1, "renderViewDelegate"    # Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    return-void
.end method

.method public setQueue(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0
    .param p1, "dispatchQueue"    # Lorg/telegram/messenger/DispatchQueue;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method public setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V
    .locals 0
    .param p1, "store"    # Lorg/telegram/ui/Components/Paint/UndoStore;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    return-void
.end method

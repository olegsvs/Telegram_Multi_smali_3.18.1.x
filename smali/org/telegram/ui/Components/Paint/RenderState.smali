.class public Lorg/telegram/ui/Components/Paint/RenderState;
.super Ljava/lang/Object;
.source "RenderState.java"


# static fields
.field private static final DEFAULT_STATE_SIZE:I = 0x100


# instance fields
.field private allocatedCount:I

.field public alpha:F

.field public angle:F

.field public baseWeight:F

.field private buffer:Ljava/nio/ByteBuffer;

.field private count:I

.field public remainder:D

.field public scale:F

.field public spacing:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;FFFI)Z
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "size"    # F
    .param p3, "angle"    # F
    .param p4, "alpha"    # F
    .param p5, "index"    # I

    .prologue
    const/4 v2, -0x1

    if-eq p5, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    if-ge p5, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderState;->resizeBuffer()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-eq p5, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p5, 0x5

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public appendValuesCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    iget v1, p0, Lorg/telegram/ui/Components/Paint/RenderState;->count:I

    add-int v0, v1, p1

    .local v0, "newTotalCount":I
    iget v1, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderState;->resizeBuffer()V

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->count:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->count:I

    return v0
.end method

.method public prepare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/Paint/RenderState;->count:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x100

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public read()F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/Paint/RenderState;->count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public resizeBuffer()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->allocatedCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderState;->buffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x5

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

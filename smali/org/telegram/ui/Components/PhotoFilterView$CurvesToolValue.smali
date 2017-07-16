.class public Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurvesToolValue"
.end annotation


# static fields
.field public static final CurvesTypeBlue:I = 0x3

.field public static final CurvesTypeGreen:I = 0x2

.field public static final CurvesTypeLuminance:I = 0x0

.field public static final CurvesTypeRed:I = 0x1


# instance fields
.field public activeType:I

.field public blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

.field public curveBuffer:Ljava/nio/ByteBuffer;

.field public greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

.field public luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

.field public redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 278
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 279
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 280
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    .line 291
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 293
    return-void
.end method


# virtual methods
.method public fillBuffer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 296
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->getDataPoints()[F

    move-result-object v3

    .line 298
    .local v3, "luminanceCurveData":[F
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->getDataPoints()[F

    move-result-object v4

    .line 299
    .local v4, "redCurveData":[F
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->getDataPoints()[F

    move-result-object v2

    .line 300
    .local v2, "greenCurveData":[F
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->getDataPoints()[F

    move-result-object v1

    .line 301
    .local v1, "blueCurveData":[F
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v5, 0xc8

    if-ge v0, v5, :cond_0

    .line 302
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    aget v6, v4, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 303
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    aget v6, v2, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 304
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    aget v6, v1, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    aget v6, v3, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    return-void
.end method

.method public shouldBeSkipped()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

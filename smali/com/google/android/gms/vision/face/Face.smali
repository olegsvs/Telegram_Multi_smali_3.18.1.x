.class public Lcom/google/android/gms/vision/face/Face;
.super Ljava/lang/Object;


# static fields
.field public static final UNCOMPUTED_PROBABILITY:F = -1.0f


# instance fields
.field private mId:I

.field private zzbOL:Landroid/graphics/PointF;

.field private zzbOM:F

.field private zzbON:F

.field private zzbOO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation
.end field

.field private zzbOP:F

.field private zzbOQ:F

.field private zzbOR:F

.field private zzbpt:F

.field private zzbpu:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    iput-object p2, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:Landroid/graphics/PointF;

    iput p3, p0, Lcom/google/android/gms/vision/face/Face;->zzbpt:F

    iput p4, p0, Lcom/google/android/gms/vision/face/Face;->zzbpu:F

    iput p5, p0, Lcom/google/android/gms/vision/face/Face;->zzbOM:F

    iput p6, p0, Lcom/google/android/gms/vision/face/Face;->zzbON:F

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOO:Ljava/util/List;

    cmpl-float v0, p8, v2

    if-ltz v0, :cond_0

    cmpg-float v0, p8, v3

    if-gtz v0, :cond_0

    iput p8, p0, Lcom/google/android/gms/vision/face/Face;->zzbOP:F

    :goto_0
    cmpl-float v0, p9, v2

    if-ltz v0, :cond_1

    cmpg-float v0, p9, v3

    if-gtz v0, :cond_1

    iput p9, p0, Lcom/google/android/gms/vision/face/Face;->zzbOQ:F

    :goto_1
    cmpl-float v0, p10, v2

    if-ltz v0, :cond_2

    cmpg-float v0, p10, v3

    if-gtz v0, :cond_2

    iput p10, p0, Lcom/google/android/gms/vision/face/Face;->zzbOR:F

    :goto_2
    return-void

    :cond_0
    iput v1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOP:F

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOQ:F

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOR:F

    goto :goto_2
.end method


# virtual methods
.method public getEulerY()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOM:F

    return v0
.end method

.method public getEulerZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbON:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbpu:F

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    return v0
.end method

.method public getIsLeftEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOP:F

    return v0
.end method

.method public getIsRightEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOQ:F

    return v0
.end method

.method public getIsSmilingProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOR:F

    return v0
.end method

.method public getLandmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOO:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/google/android/gms/vision/face/Face;->zzbpt:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/google/android/gms/vision/face/Face;->zzbpu:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbpt:F

    return v0
.end method

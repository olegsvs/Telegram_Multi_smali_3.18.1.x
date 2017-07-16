.class public Lorg/telegram/ui/Components/Crop/CropState;
.super Ljava/lang/Object;
.source "CropState.java"


# instance fields
.field private height:F

.field private matrix:Landroid/graphics/Matrix;

.field private minimumScale:F

.field private rotation:F

.field private scale:F

.field private values:[F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->width:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->height:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->rotation:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->values:[F

    return-void
.end method

.method private updateValues()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method


# virtual methods
.method public getConcatMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "toMatrix"    # Landroid/graphics/Matrix;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->height:F

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->width:F

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropState;->updateValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->values:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropState;->updateValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->values:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public reset(Lorg/telegram/ui/Components/Crop/CropAreaView;)V
    .locals 3
    .param p1, "areaView"    # Lorg/telegram/ui/Components/Crop/CropAreaView;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->y:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->rotation:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->minimumScale:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->minimumScale:F

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method

.method public rotate(FFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->rotation:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "s"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->scale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->x:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

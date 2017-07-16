.class public Lorg/telegram/ui/Components/Crop/CropAreaView;
.super Landroid/view/View;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropAreaView$3;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    }
.end annotation


# instance fields
.field private activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field private actualRect:Landroid/graphics/RectF;

.field private animator:Landroid/animation/Animator;

.field private bottomEdge:Landroid/graphics/RectF;

.field private bottomLeftCorner:Landroid/graphics/RectF;

.field private bottomPadding:F

.field private bottomRightCorner:Landroid/graphics/RectF;

.field dimPaint:Landroid/graphics/Paint;

.field private dimVisibile:Z

.field framePaint:Landroid/graphics/Paint;

.field private frameVisible:Z

.field private gridAnimator:Landroid/animation/Animator;

.field private gridProgress:F

.field private gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field handlePaint:Landroid/graphics/Paint;

.field interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private isDragging:Z

.field private leftEdge:Landroid/graphics/RectF;


.field private listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

.field private lockAspectRatio:F

.field private minWidth:F

.field private previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field private previousX:I

.field private previousY:I

.field private rightEdge:Landroid/graphics/RectF;

.field shadowPaint:Landroid/graphics/Paint;

.field private sidePadding:F

.field private tempRect:Landroid/graphics/RectF;

.field private topEdge:Landroid/graphics/RectF;

.field private topLeftCorner:Landroid/graphics/RectF;

.field private topRightCorner:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V



    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V


    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V


    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropAreaView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropAreaView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method private constrainRectByHeight(Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .local v0, "h":F
    mul-float v1, v0, p2

    .local v1, "w":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private constrainRectByWidth(Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .local v1, "w":F
    div-float v0, v1, p2

    .local v0, "h":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private getGridProgress()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    return v0
.end method

.method private setCropBottom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropLeft(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropRight(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropTop(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setGridProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private updateTouchAreas()V
    .locals 7

    .prologue
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .local v0, "touchPadding":I
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public calculateRect(Landroid/graphics/RectF;F)V
    .locals 18
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "cropAspectRatio"    # F

    .prologue
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_0

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v11, v14

    .local v11, "statusBarHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    sub-float/2addr v14, v15

    sub-float v8, v14, v11

    .local v8, "measuredHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v2, v14, v8

    .local v2, "aspectRatio":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v9, v14, v15

    .local v9, "minSide":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v13, v14, v15

    .local v13, "width":F
    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    mul-float/2addr v14, v15

    sub-float v6, v8, v14

    .local v6, "height":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .local v4, "centerX":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v8, v14

    add-float v5, v11, v14

    .local v5, "centerY":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    sub-float v7, v4, v14

    .local v7, "left":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    sub-float v12, v5, v14

    .local v12, "top":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    add-float v10, v4, v14

    .local v10, "right":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    add-float v3, v5, v14

    .local v3, "bottom":F
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .end local v2    # "aspectRatio":F
    .end local v3    # "bottom":F
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v6    # "height":F
    .end local v7    # "left":F
    .end local v8    # "measuredHeight":F
    .end local v9    # "minSide":F
    .end local v10    # "right":F
    .end local v11    # "statusBarHeight":F
    .end local v12    # "top":F
    .end local v13    # "width":F
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v2    # "aspectRatio":F
    .restart local v4    # "centerX":F
    .restart local v5    # "centerY":F
    .restart local v6    # "height":F
    .restart local v8    # "measuredHeight":F
    .restart local v9    # "minSide":F
    .restart local v11    # "statusBarHeight":F
    .restart local v13    # "width":F
    :cond_1
    cmpl-float v14, p2, v2

    if-lez v14, :cond_2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v13, v14

    sub-float v7, v4, v14

    .restart local v7    # "left":F
    div-float v14, v13, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v12, v5, v14

    .restart local v12    # "top":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v13, v14

    add-float v10, v4, v14

    .restart local v10    # "right":F
    div-float v14, v13, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v3, v5, v14

    .restart local v3    # "bottom":F
    goto :goto_1

    .end local v3    # "bottom":F
    .end local v7    # "left":F
    .end local v10    # "right":F
    .end local v12    # "top":F
    :cond_2
    mul-float v14, v6, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v7, v4, v14

    .restart local v7    # "left":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    sub-float v12, v5, v14

    .restart local v12    # "top":F
    mul-float v14, v6, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v10, v4, v14

    .restart local v10    # "right":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    add-float v3, v5, v14

    .restart local v3    # "bottom":F
    goto :goto_1
.end method

.method public fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V
    .locals 10
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p2, "scaleAnimator"    # Landroid/animation/Animator;
    .param p3, "animated"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x5

    new-array v0, v2, [Landroid/animation/Animator;

    .local v0, "animators":[Landroid/animation/Animator;
    const-string/jumbo v2, "cropLeft"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    aget-object v2, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropTop"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v0, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropRight"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    aget-object v2, v0, v7

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropBottom"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    aget-object v2, v0, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object p2, v0, v9

    aget-object v2, v0, v9

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lorg/telegram/ui/Components/Crop/CropAreaView$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .end local v0    # "animators":[Landroid/animation/Animator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getCropBottom()F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getCropCenterX()F
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropCenterY()F
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getCropRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getCropRight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public getCropTop()F
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getCropWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method public getLockAspectRatio()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    return v0
.end method

.method public getTargetRectToFill()Landroid/graphics/RectF;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .local v9, "handleSize":I
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .local v10, "handleThickness":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int v16, v1, v15

    .local v16, "originX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int v17, v1, v15

    .local v17, "originY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v15, 0x2

    add-int v19, v1, v2

    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v15, 0x2

    add-int v11, v1, v2

    .local v11, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v17, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    add-int v1, v17, v15

    int-to-float v3, v1

    add-int v1, v16, v15

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v15

    int-to-float v2, v1

    add-int v1, v17, v15

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    sub-int v13, v10, v15

    .local v13, "inset":I
    mul-int/lit8 v1, v10, 0x2

    sub-int v8, v19, v1

    .local v8, "gridWidth":I
    mul-int/lit8 v1, v10, 0x2

    sub-int v7, v11, v1

    .local v7, "gridHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v18, v0

    .local v18, "type":Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v18, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0


    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x43320000    # 178.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v12, v1, :cond_6

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_4

    const/4 v14, 0x1

    .local v14, "j":I
    :goto_2
    const/4 v1, 0x4

    if-ge v14, v1, :cond_5

    const/4 v1, 0x2

    if-ne v12, v1, :cond_3

    const/4 v1, 0x3

    if-ne v14, v1, :cond_3

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v14

    add-int/2addr v1, v4

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v14

    add-int/2addr v1, v4

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0


    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v14

    add-int/2addr v1, v3

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v14

    add-int/2addr v1, v5

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v14

    add-int/2addr v1, v3

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v14

    add-int/2addr v1, v5

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0


    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .end local v14    # "j":I
    :cond_4
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_5

    if-lez v12, :cond_5

    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0


    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0


    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_6
    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v13

    add-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v13

    add-int/2addr v1, v15

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    sub-int/2addr v1, v15

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    sub-int/2addr v1, v15

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v9

    int-to-float v4, v1

    add-int v1, v17, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v10

    int-to-float v4, v1

    add-int v1, v17, v9

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v9

    int-to-float v2, v1

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v10

    int-to-float v2, v1

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v9

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v16

    int-to-float v2, v0

    add-int v1, v17, v11

    sub-int/2addr v1, v10

    int-to-float v3, v1

    add-int v1, v16, v9

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v16

    int-to-float v2, v0

    add-int v1, v17, v11

    sub-int/2addr v1, v9

    int-to-float v3, v1

    add-int v1, v16, v10

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v9

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v10

    int-to-float v3, v1

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v16, v19

    sub-int/2addr v1, v10

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v9

    int-to-float v3, v1

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    sub-float v10, v11, v10

    float-to-int v8, v10

    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    sub-float v10, v11, v10

    float-to-int v9, v10

    .local v9, "y":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_1

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v3, v10

    .local v3, "statusBarHeight":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_a

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    :goto_1
    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeBegan()V

    :cond_0
    const/4 v10, 0x1

    :goto_2
    return v10

    .end local v0    # "action":I
    .end local v3    # "statusBarHeight":F
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .restart local v0    # "action":I
    .restart local v3    # "statusBarHeight":F
    :cond_2
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto/16 :goto_1

    :cond_9
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    const/4 v10, 0x1

    if-eq v0, v10, :cond_b

    const/4 v10, 0x3

    if-ne v0, v10, :cond_e

    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v11, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-ne v10, v11, :cond_c

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeEnded()V

    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v10, 0x2

    if-ne v0, v10, :cond_20

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v11, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-ne v10, v11, :cond_f

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    sub-int v10, v8, v10

    int-to-float v5, v10

    .local v5, "translationX":F
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sub-int v10, v9, v10

    int-to-float v6, v10

    .local v6, "translationY":F
    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$3;->$SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control:[I

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :cond_10
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1d

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_11

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v12, v13

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    :cond_11
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    iput v11, v10, Landroid/graphics/RectF;->left:F

    :cond_12
    :goto_4
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float v4, v3, v10

    .local v4, "topPadding":F
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float v1, v10, v11

    .local v1, "finalBottomPadidng":F
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v4

    if-gez v10, :cond_1e

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v4

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    :cond_13
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iput v4, v10, Landroid/graphics/RectF;->top:F

    :cond_14
    :goto_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_15

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    :cond_15
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_16

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    :cond_16
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_17

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1f

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_17

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    :cond_17
    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChange()V

    :cond_18
    const/4 v10, 0x1

    goto/16 :goto_2

    .end local v1    # "finalBottomPadidng":F
    .end local v4    # "topPadding":F
    :pswitch_0
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    .local v7, "w":F
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "h":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v7

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_19
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_7

    .end local v2    # "h":F
    .end local v7    # "w":F
    :pswitch_1
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .restart local v2    # "h":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1a

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_8
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_1a
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_8

    .end local v2    # "h":F
    :pswitch_2
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    .restart local v7    # "w":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1b

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_9
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v7

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    :cond_1b
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_9

    .end local v7    # "w":F
    :pswitch_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1c

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_1c
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_1d
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .restart local v1    # "finalBottomPadidng":F
    .restart local v4    # "topPadding":F
    :cond_1e
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_1f
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_17

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .end local v1    # "finalBottomPadidng":F
    .end local v4    # "topPadding":F
    .end local v5    # "translationX":F
    .end local v6    # "translationY":F
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public resetAnimator()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public setActualRect(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public setActualRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;ZZ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sideward"    # Z
    .param p3, "freeform"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .local v0, "aspectRatio":F
    :goto_1
    if-nez p3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    goto :goto_0

    .end local v0    # "aspectRatio":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .restart local v0    # "aspectRatio":F
    goto :goto_1
.end method

.method public setBottomPadding(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    return-void
.end method

.method public setDimVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    return-void
.end method

.method public setFrameVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    return-void
.end method

.method public setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V
    .locals 8
    .param p1, "type"    # Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-eq v1, p1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v1, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x0

    .local v0, "targetProgress":F
    :goto_1
    if-nez p2, :cond_4

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    goto :goto_0

    .end local v0    # "targetProgress":F
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .restart local v0    # "targetProgress":F
    :cond_4
    const-string/jumbo v1, "gridProgress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    new-instance v2, Lorg/telegram/ui/Components/Crop/CropAreaView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V
    .locals 0
    .param p1, "l"    # Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    return-void
.end method

.method public setLockedAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    return-void
.end method

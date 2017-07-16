.class Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "PhotoCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCropView"
.end annotation


# instance fields
.field bitmapHeight:I

.field bitmapWidth:I

.field bitmapX:I

.field bitmapY:I

.field circlePaint:Landroid/graphics/Paint;

.field draggingState:I

.field freeform:Z

.field halfPaint:Landroid/graphics/Paint;

.field oldX:F

.field oldY:F

.field rectPaint:Landroid/graphics/Paint;

.field rectSizeX:F

.field rectSizeY:F

.field rectX:F

.field rectY:F

.field final synthetic this$0:Lorg/telegram/ui/PhotoCropActivity;

.field viewHeight:I

.field viewWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoCropActivity;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x44160000    # 600.0f

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    iput v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iput v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const v1, 0x3ffafafa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x38000000    # -131072.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0xcccccd

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;-><init>(Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateBitmapSize()V
    .locals 12

    .prologue
    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v10, 0x41600000    # 14.0f

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    if-eqz v8, :cond_0

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .local v3, "percX":F
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .local v4, "percY":F
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .local v1, "percSizeX":F
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .local v2, "percSizeY":F
    iget-object v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .local v7, "w":F
    iget-object v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .local v0, "h":F
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    int-to-float v8, v8

    div-float v5, v8, v7

    .local v5, "scaleX":F
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    int-to-float v8, v8

    div-float v6, v8, v0

    .local v6, "scaleY":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_2

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    mul-float v8, v7, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    :goto_1
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_5

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->invalidate()V

    goto/16 :goto_0

    :cond_2
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    mul-float v8, v0, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    goto :goto_1

    :cond_3
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    if-le v8, v9, :cond_4

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_2

    :cond_4
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_2

    :cond_5
    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_2
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    iget v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .local v4, "percX":F
    iget v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .local v5, "percY":F
    iget v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    div-float v2, v10, v11

    .local v2, "percSizeX":F
    iget v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    div-float v3, v10, v11

    .local v3, "percSizeY":F
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .local v8, "x":I
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v9, v10

    .local v9, "y":I
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    float-to-int v6, v10

    .local v6, "sizeX":I
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v7, v10

    .local v7, "sizeY":I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    :cond_0
    if-gez v9, :cond_1

    const/4 v9, 0x0

    :cond_1
    add-int v10, v8, v6

    iget-object v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v11}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-le v10, v11, :cond_2

    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v6, v10, v8

    :cond_2
    add-int v10, v9, v7

    iget-object v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v11}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_3

    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int v7, v10, v9

    :cond_3
    :try_start_0
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v8, v9, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "tmessags"

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_1
    iget-object v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v8, v9, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x41a00000    # 20.0f

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .local v8, "side":I
    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v8

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v2, v8

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v3, v8

    add-float/2addr v0, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    mul-int/lit8 v4, v8, 0x3

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v8

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v2, v8

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v8

    add-float/2addr v0, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    int-to-float v1, v8

    sub-float/2addr v0, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v2, v8

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    int-to-float v3, v8

    sub-float v3, v0, v3

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    mul-int/lit8 v4, v8, 0x3

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    mul-int/lit8 v1, v8, 0x3

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v2, v8

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    int-to-float v3, v8

    sub-float v3, v0, v3

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v4, v8

    add-float/2addr v0, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v8

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    int-to-float v2, v8

    sub-float/2addr v0, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    int-to-float v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v8

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    mul-int/lit8 v2, v8, 0x3

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v3, v8

    add-float/2addr v0, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    int-to-float v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    int-to-float v1, v8

    sub-float/2addr v0, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    mul-int/lit8 v2, v8, 0x3

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    int-to-float v3, v8

    sub-float v3, v0, v3

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    int-to-float v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    mul-int/lit8 v1, v8, 0x3

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    int-to-float v2, v8

    sub-float/2addr v0, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    int-to-float v3, v8

    sub-float v3, v0, v3

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    int-to-float v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x1

    .local v6, "a":I
    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    div-float/2addr v1, v10

    int-to-float v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v2, v8

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v3, v8

    add-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    div-float/2addr v3, v10

    int-to-float v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    int-to-float v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v8

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    div-float/2addr v2, v10

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v3, v8

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    div-float/2addr v4, v10

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    int-to-float v4, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "a":I
    .end local v8    # "side":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v6    # "a":I
    .restart local v8    # "side":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    sub-int v0, p5, p3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->updateBitmapSize()V

    return-void
.end method

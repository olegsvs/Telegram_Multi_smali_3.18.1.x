.class Lcom/github/clans/fab/FloatingActionButton$Shadow;
.super Landroid/graphics/drawable/Drawable;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shadow"
.end annotation


# instance fields
.field private mErase:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 675
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 671
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mPaint:Landroid/graphics/Paint;

    .line 672
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mErase:Landroid/graphics/Paint;

    .line 676
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton$Shadow;->init()V

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/clans/fab/FloatingActionButton;
    .param p2, "x1"    # Lcom/github/clans/fab/FloatingActionButton$1;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$Shadow;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 680
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 681
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 682
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->access$600(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 684
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mErase:Landroid/graphics/Paint;

    invoke-static {}, Lcom/github/clans/fab/FloatingActionButton;->access$700()Landroid/graphics/Xfermode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 686
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, v1, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    iget v2, v2, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    iget v3, v3, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    iget v4, v4, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->access$800(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mRadius:F

    .line 692
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->access$200(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->access$900(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mRadius:F

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->access$300(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mRadius:F

    .line 695
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->access$1000(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->access$1100(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mRadius:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 700
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->access$1000(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->access$1100(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mRadius:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$Shadow;->mErase:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 701
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 706
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 711
    return-void
.end method

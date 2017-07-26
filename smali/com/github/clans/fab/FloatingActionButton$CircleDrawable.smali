.class Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleDrawable"
.end annotation


# instance fields
.field private circleInsetHorizontal:I

.field private circleInsetVertical:I

.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 648
    return-void
.end method

.method private constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 3
    .param p2, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    const/4 v1, 0x0

    .line 650
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    .line 651
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 652
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v2, p1, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetHorizontal:I

    .line 653
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetVertical:I

    .line 655
    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->access$200(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetHorizontal:I

    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->access$300(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetHorizontal:I

    .line 657
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetVertical:I

    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->access$300(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetVertical:I

    .line 659
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 652
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/clans/fab/FloatingActionButton;
    .param p2, "x1"    # Landroid/graphics/drawable/shapes/Shape;
    .param p3, "x2"    # Lcom/github/clans/fab/FloatingActionButton$1;

    .prologue
    .line 642
    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 663
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetHorizontal:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetVertical:I

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v2}, Lcom/github/clans/fab/FloatingActionButton;->access$400(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetHorizontal:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    .line 664
    invoke-static {v3}, Lcom/github/clans/fab/FloatingActionButton;->access$500(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->circleInsetVertical:I

    sub-int/2addr v3, v4

    .line 663
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->setBounds(IIII)V

    .line 665
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    return-void
.end method

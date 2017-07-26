.class Lcom/github/clans/fab/FloatingActionButton$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$2;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$2;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 578
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionDown()V

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$2;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionDown()V

    .line 582
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$2;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 588
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$2;->this$0:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    .line 592
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

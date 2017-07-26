.class Lcom/github/clans/fab/FloatingActionMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->initBackgroundDimAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;

.field final synthetic val$blue:I

.field final synthetic val$green:I

.field final synthetic val$red:I


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$red:I

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$green:I

    iput p4, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$blue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 232
    .local v0, "alpha":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$red:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$green:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->val$blue:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setBackgroundColor(I)V

    .line 233
    return-void
.end method

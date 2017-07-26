.class Lcom/github/clans/fab/FloatingActionMenu$4;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;

.field final synthetic val$animate:Z

.field final synthetic val$fab:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v2}, Lcom/github/clans/fab/FloatingActionMenu;->access$100(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 655
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$animate:Z

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->show(Z)V

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 659
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->isHandleVisibilityChanges()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/Label;->show(Z)V

    goto :goto_0
.end method

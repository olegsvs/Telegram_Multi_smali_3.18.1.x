.class Lcom/github/clans/fab/FloatingActionMenu$8;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->hideMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->val$animate:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenu;->access$400(Lcom/github/clans/fab/FloatingActionMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->access$502(Lcom/github/clans/fab/FloatingActionMenu;Z)Z

    .line 852
    return-void
.end method

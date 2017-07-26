.class Lcom/github/clans/fab/FloatingActionMenu$9;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButton(Z)V
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
    .line 895
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$9;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu$9;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$9;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$9;->val$animate:Z

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->access$600(Lcom/github/clans/fab/FloatingActionMenu;Z)V

    .line 899
    return-void
.end method

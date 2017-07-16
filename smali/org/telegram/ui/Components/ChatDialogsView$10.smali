.class Lorg/telegram/ui/Components/ChatDialogsView$10;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1400(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1500(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$500(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-le v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$10;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1600(Lorg/telegram/ui/Components/ChatDialogsView;Z)V

    .line 418
    :cond_0
    return-void
.end method

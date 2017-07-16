.class Lorg/telegram/ui/ChatActivity$39;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2753
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 2757
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$10102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2758
    return-void

    .line 2757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 2763
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2764
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 2768
    .local v0, "lastVisibleItem":I
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x0

    .line 2769
    .local v1, "visibleItemCount":I
    :goto_1
    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_0

    .line 2770
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotForNextOffset()V

    .line 2772
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)V

    .line 2773
    return-void

    .line 2766
    .end local v0    # "lastVisibleItem":I
    .end local v1    # "visibleItemCount":I
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .restart local v0    # "lastVisibleItem":I
    goto :goto_0

    :cond_2
    move v1, v0

    .line 2768
    goto :goto_1
.end method

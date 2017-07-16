.class Lorg/telegram/ui/MediaActivity$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 653
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

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

    .line 656
    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 659
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/MediaActivity;->access$2202(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 660
    return-void

    .line 659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 11
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 668
    .local v8, "firstVisibleItem":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    const/4 v10, 0x0

    .line 669
    .local v10, "visibleItemCount":I
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 671
    .local v9, "totalItemCount":I
    if-eqz v10, :cond_0

    add-int v0, v8, v10

    add-int/lit8 v1, v9, -0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 674
    const/4 v5, 0x0

    .line 684
    .local v5, "type":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_7

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x32

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v4

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_0

    .line 668
    .end local v5    # "type":I
    .end local v9    # "totalItemCount":I
    .end local v10    # "visibleItemCount":I
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    goto/16 :goto_1

    .line 675
    .restart local v9    # "totalItemCount":I
    .restart local v10    # "visibleItemCount":I
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 676
    const/4 v5, 0x1

    .restart local v5    # "type":I
    goto :goto_2

    .line 677
    .end local v5    # "type":I
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 678
    const/4 v5, 0x2

    .restart local v5    # "type":I
    goto :goto_2

    .line 679
    .end local v5    # "type":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 680
    const/4 v5, 0x4

    .restart local v5    # "type":I
    goto/16 :goto_2

    .line 682
    .end local v5    # "type":I
    :cond_6
    const/4 v5, 0x3

    .restart local v5    # "type":I
    goto/16 :goto_2

    .line 687
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x32

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$2700(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_0
.end method

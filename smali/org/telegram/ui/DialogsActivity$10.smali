.class Lorg/telegram/ui/DialogsActivity$10;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 15
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .local v3, "firstVisibleItem":I
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .local v9, "visibleItemCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    .local v8, "totalItemCount":I
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lez v9, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    add-int/lit8 v11, v8, -0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isMessagesSearchEndReached()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v9, :cond_3

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    if-lt v10, v11, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v10, :cond_a

    const/4 v4, 0x1

    .local v4, "fromCache":Z
    :goto_1
    if-nez v4, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    if-nez v10, :cond_3

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, -0x1

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .end local v4    # "fromCache":Z
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "topChild":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "firstViewTop":I
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_4
    const/4 v1, 0x1

    .local v1, "changed":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-ne v10, v3, :cond_d

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    sub-int v7, v10, v2

    .local v7, "topDelta":I
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-ge v2, v10, :cond_b

    const/4 v5, 0x1

    .local v5, "goingDown":Z
    :goto_2
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_c

    const/4 v1, 0x1

    .end local v7    # "topDelta":I
    :goto_3
    if-eqz v1, :cond_7

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-eqz v10, :cond_6

    :cond_5
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10, v5}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10, v3}, Lorg/telegram/ui/DialogsActivity;->access$4102(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10, v2}, Lorg/telegram/ui/DialogsActivity;->access$4202(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v5    # "goingDown":Z
    .end local v6    # "topChild":Landroid/view/View;
    :cond_8
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v10, :cond_0

    if-ge v9, v8, :cond_0

    const/4 v10, 0x1

    move/from16 v0, p3

    if-le v0, v10, :cond_9

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-gez v10, :cond_9

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v10, :cond_f

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;Z)V

    :cond_9
    :goto_4
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ge v0, v10, :cond_0

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v10, :cond_12

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;Z)V

    if-nez v3, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    const/4 v13, 0x0

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    :goto_5
    const/4 v14, 0x0

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v11, :cond_11

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    :goto_6
    invoke-virtual {v12, v13, v10, v14, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .restart local v1    # "changed":Z
    .restart local v2    # "firstViewTop":I
    .restart local v6    # "topChild":Landroid/view/View;
    .restart local v7    # "topDelta":I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .restart local v5    # "goingDown":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    .end local v5    # "goingDown":Z
    .end local v7    # "topDelta":I
    :cond_d
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-le v3, v10, :cond_e

    const/4 v5, 0x1

    .restart local v5    # "goingDown":Z
    :goto_7
    goto/16 :goto_3

    .end local v5    # "goingDown":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v6    # "topChild":Landroid/view/View;
    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_4

    :cond_10
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    goto :goto_6

    :cond_12
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_0
.end method

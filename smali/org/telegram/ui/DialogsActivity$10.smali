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
    .line 1124
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
    .line 1127
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

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1130
    :cond_0
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 15
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1134
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 1135
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

    .line 1136
    .local v9, "visibleItemCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    .line 1138
    .local v8, "totalItemCount":I
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1139
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

    .line 1140
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    if-lez v9, :cond_3

    .line 1146
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

    .line 1147
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v10, :cond_a

    const/4 v4, 0x1

    .line 1148
    .local v4, "fromCache":Z
    :goto_1
    if-nez v4, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    if-nez v10, :cond_3

    .line 1149
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, -0x1

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 1166
    .end local v4    # "fromCache":Z
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_8

    .line 1167
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1168
    .local v6, "topChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1169
    .local v2, "firstViewTop":I
    if-eqz v6, :cond_4

    .line 1170
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1173
    :cond_4
    const/4 v1, 0x1

    .line 1174
    .local v1, "changed":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-ne v10, v3, :cond_d

    .line 1175
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    sub-int v7, v10, v2

    .line 1176
    .local v7, "topDelta":I
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-ge v2, v10, :cond_b

    const/4 v5, 0x1

    .line 1177
    .local v5, "goingDown":Z
    :goto_2
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_c

    const/4 v1, 0x1

    .line 1181
    .end local v7    # "topDelta":I
    :goto_3
    if-eqz v1, :cond_7

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1182
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

    .line 1184
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10, v3}, Lorg/telegram/ui/DialogsActivity;->access$4102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1185
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10, v2}, Lorg/telegram/ui/DialogsActivity;->access$4202(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1186
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1189
    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v5    # "goingDown":Z
    .end local v6    # "topChild":Landroid/view/View;
    :cond_8
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v10, :cond_0

    if-ge v9, v8, :cond_0

    .line 1191
    const/4 v10, 0x1

    move/from16 v0, p3

    if-le v0, v10, :cond_9

    .line 1193
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-gez v10, :cond_9

    .line 1194
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v10, :cond_f

    .line 1195
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1202
    :cond_9
    :goto_4
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ge v0, v10, :cond_0

    .line 1204
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v10, :cond_12

    .line 1205
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1206
    if-nez v3, :cond_0

    .line 1207
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

    .line 1147
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1176
    .restart local v1    # "changed":Z
    .restart local v2    # "firstViewTop":I
    .restart local v6    # "topChild":Landroid/view/View;
    .restart local v7    # "topDelta":I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1177
    .restart local v5    # "goingDown":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1179
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

    .line 1197
    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v6    # "topChild":Landroid/view/View;
    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_4

    .line 1207
    :cond_10
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    goto :goto_6

    .line 1210
    :cond_12
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_0
.end method

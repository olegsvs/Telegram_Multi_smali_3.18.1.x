.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapterRecycler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p2, "x1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 120
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 122
    .local v0, "cell":Lorg/telegram/ui/Cells/HintDialogCell;
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 123
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 124
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v1, 0x0

    .line 125
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v6, 0x0

    .line 126
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v3, 0x0

    .line 127
    .local v3, "did":I
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_2

    .line 128
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 129
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 137
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HintDialogCell;->setTag(Ljava/lang/Object;)V

    .line 138
    const-string/jumbo v4, ""

    .line 139
    .local v4, "name":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 140
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    :cond_1
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7, v4}, Lorg/telegram/ui/Cells/HintDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 145
    return-void

    .line 130
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v7, :cond_3

    .line 131
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v7

    .line 132
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_3
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v7, :cond_0

    .line 134
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v7

    .line 135
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    goto :goto_0

    .line 141
    .restart local v4    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_1

    .line 142
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 108
    new-instance v0, Lorg/telegram/ui/Cells/HintDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HintDialogCell;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

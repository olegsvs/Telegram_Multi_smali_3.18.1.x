.class Lorg/telegram/ui/ChatActivity$52;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private message:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "dragDirs"    # I
    .param p3, "swipeDirs"    # I

    .prologue
    .line 3373
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x1

    .line 3390
    iget-object v4, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_6

    .line 3391
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$52;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v3

    .line 3392
    .local v3, "type":I
    const/4 v0, 0x1

    .line 3393
    .local v0, "allowChatActions":Z
    iget-object v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3394
    .local v2, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->message:Lorg/telegram/messenger/MessageObject;

    .line 3395
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    .line 3396
    .local v1, "isVoiceMsg":Z
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x2e

    if-lt v4, v5, :cond_4

    :cond_0
    if-ne v3, v8, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    .line 3397
    :cond_4
    const/4 v0, 0x0

    .line 3399
    :cond_5
    if-eqz v0, :cond_6

    .line 3400
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 3401
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 3404
    .end local v0    # "allowChatActions":Z
    .end local v1    # "isVoiceMsg":Z
    .end local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v3    # "type":I
    :goto_0
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3409
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "swipeDir"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3415
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 3416
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 3419
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3420
    .local v6, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 3421
    .local v2, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v7

    .line 3422
    .local v7, "type":I
    if-ne v7, v1, :cond_1

    .line 3423
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3424
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 3429
    :cond_0
    :goto_0
    return-void

    .line 3426
    :cond_1
    if-eqz v7, :cond_0

    const/16 v0, 0x14

    if-eq v7, v0, :cond_0

    .line 3427
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$52;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    goto :goto_0
.end method

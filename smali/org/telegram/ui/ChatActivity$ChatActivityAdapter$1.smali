.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10211
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .prologue
    .line 10328
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10310
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 10311
    return-void
.end method

.method public didLongPressedAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 10316
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10317
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10323
    :cond_0
    :goto_0
    return-void

    .line 10320
    :cond_1
    if-eqz p2, :cond_0

    .line 10321
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$9500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;ILorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_0
.end method

.method public didPressedBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 10291
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_1

    .line 10298
    :cond_0
    :goto_0
    return-void

    .line 10297
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0
.end method

.method public didPressedCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10302
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10303
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v1, :cond_0

    .line 10304
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 10306
    :cond_0
    return-void
.end method

.method public didPressedChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p3, "postId"    # I

    .prologue
    .line 10245
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10246
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10259
    :cond_0
    :goto_0
    return-void

    .line 10249
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eq p2, v1, :cond_0

    .line 10250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10251
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "chat_id"

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10252
    if-eqz p3, :cond_2

    .line 10253
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10255
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10256
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method

.method public didPressedImage(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 19
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10428
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v17

    .line 10429
    .local v17, "message":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 10516
    :cond_0
    :goto_0
    return-void

    .line 10432
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10435
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 10436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :goto_1
    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 10437
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 10438
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    .line 10441
    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10442
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    :goto_2
    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10443
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 10442
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 10445
    :cond_a
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 10446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    .line 10448
    const/4 v10, 0x0

    .line 10449
    .local v10, "f":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 10450
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10    # "f":Ljava/io/File;
    .local v11, "f":Ljava/io/File;
    move-object v10, v11

    .line 10452
    .end local v11    # "f":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 10453
    :cond_c
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v10

    .line 10455
    :cond_d
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10456
    .local v14, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_e

    .line 10457
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.plus.provider"

    invoke-static {v2, v3, v10}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 10462
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v14, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10463
    .end local v14    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 10464
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 10460
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_e
    :try_start_1
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 10466
    .end local v10    # "f":Ljava/io/File;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 10467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10470
    new-instance v12, Lorg/telegram/ui/LocationActivity;

    invoke-direct {v12}, Lorg/telegram/ui/LocationActivity;-><init>()V

    .line 10471
    .local v12, "fragment":Lorg/telegram/ui/LocationActivity;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 10472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 10473
    .end local v12    # "fragment":Lorg/telegram/ui/LocationActivity;
    :cond_10
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_11

    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v2, :cond_0

    .line 10474
    :cond_11
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 10475
    const/16 v16, 0x0

    .line 10476
    .local v16, "locFile":Ljava/io/File;
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    .line 10477
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10478
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 10479
    move-object/from16 v16, v10

    .line 10482
    .end local v10    # "f":Ljava/io/File;
    :cond_12
    if-nez v16, :cond_13

    .line 10483
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v10

    .line 10484
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 10485
    move-object/from16 v16, v10

    .line 10488
    .end local v10    # "f":Ljava/io/File;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 10489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v15

    .line 10490
    .local v15, "lastPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_16

    .line 10491
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19402(Lorg/telegram/ui/ChatActivity;I)I

    .line 10492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 10493
    .local v13, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v13, :cond_15

    .line 10494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v13, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19502(Lorg/telegram/ui/ChatActivity;I)I

    .line 10502
    .end local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v15    # "lastPosition":I
    :cond_14
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v18

    .line 10503
    .local v18, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    if-eqz v18, :cond_17

    .line 10504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 10496
    .end local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .restart local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v15    # "lastPosition":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19402(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_5

    .line 10499
    .end local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19402(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_5

    .line 10507
    .end local v15    # "lastPosition":I
    .restart local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19402(Lorg/telegram/ui/ChatActivity;I)I

    .line 10511
    .end local v16    # "locFile":Ljava/io/File;
    .end local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_18
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 10512
    :catch_1
    move-exception v9

    .line 10513
    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0
.end method

.method public didPressedInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10520
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10521
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v1, :cond_0

    .line 10522
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10523
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    .line 10525
    :cond_0
    return-void
.end method

.method public didPressedOther(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10263
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 10264
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 10265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    .line 10269
    :cond_0
    :goto_0
    return-void

    .line 10267
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 10
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 10411
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10412
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, p2, v4, v2, v1}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;IIZI)V

    .line 10413
    return-void

    .line 10412
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public didPressedShare(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 10214
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10229
    :goto_0
    return-void

    .line 10217
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10218
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    goto :goto_0

    .line 10220
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    .line 10221
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 10223
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$18300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v10, v1

    :goto_1
    move-object v9, v3

    move-object v11, v3

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_3
    move v10, v5

    goto :goto_1
.end method

.method public didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
    .locals 16
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "url"    # Landroid/text/style/CharacterStyle;
    .param p3, "longPress"    # Z

    .prologue
    .line 10333
    if-nez p2, :cond_1

    .line 10402
    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_0
    :goto_0
    return-void

    .line 10336
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_1
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v9, :cond_2

    .line 10337
    check-cast p2, Lorg/telegram/ui/Components/URLSpanMono;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 10338
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "TextCopied"

    const v11, 0x7f07061f

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10339
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_2
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v9, :cond_3

    .line 10340
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    check-cast p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 10341
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_0

    .line 10342
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    .line 10344
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_3
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v9, :cond_8

    .line 10345
    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 10346
    .local v6, "str":Ljava/lang/String;
    const-string/jumbo v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 10347
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_0

    .line 10348
    :cond_4
    const-string/jumbo v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 10349
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 10350
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v6}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10352
    :cond_5
    new-instance v3, Lorg/telegram/ui/DialogsActivity;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 10353
    .local v3, "fragment":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v3, v6}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 10354
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 10356
    .end local v3    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_6
    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10357
    sget-boolean v9, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v9, :cond_0

    .line 10358
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v9, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v10, v0, v6, v1, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .end local v6    # "str":Ljava/lang/String;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_8
    move-object/from16 v9, p2

    .line 10362
    check-cast v9, Landroid/text/style/URLSpan;

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 10363
    .local v7, "urlFinal":Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 10364
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 10365
    .local v2, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 10366
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string/jumbo v11, "Open"

    const v12, 0x7f070462

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "Copy"

    const v12, 0x7f0701a4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 10382
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 10384
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_9
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v9, :cond_a

    .line 10385
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanReplacement;->getURL()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 10386
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_a
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/text/style/URLSpan;

    if-eqz v9, :cond_e

    .line 10387
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v9, :cond_c

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v9, :cond_c

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v9, :cond_c

    .line 10388
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 10389
    .local v4, "lowerUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 10390
    .local v5, "lowerUrl2":Ljava/lang/String;
    const-string/jumbo v9, "telegra.ph"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 10391
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10392
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_0

    .line 10396
    .end local v4    # "lowerUrl":Ljava/lang/String;
    .end local v5    # "lowerUrl2":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_d

    const/4 v9, 0x1

    :goto_2
    invoke-static {v10, v7, v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v9, 0x0

    goto :goto_2

    .line 10397
    :cond_e
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/text/style/ClickableSpan;

    if-eqz v9, :cond_0

    .line 10398
    check-cast p2, Landroid/text/style/ClickableSpan;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public didPressedUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 10273
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10274
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10287
    :cond_0
    :goto_0
    return-void

    .line 10284
    :cond_1
    if-eqz p2, :cond_0

    .line 10285
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$9500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;ILorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_0
.end method

.method public didPressedViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 10417
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 10424
    :cond_1
    :goto_0
    return-void

    .line 10420
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 10421
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 10422
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_0
.end method

.method public needOpenWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 10406
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$18300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 10407
    return-void
.end method

.method public needPlayAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 10233
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10234
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 10235
    .local v0, "result":Z
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p1, v2}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    .line 10240
    .end local v0    # "result":Z
    :goto_1
    return v0

    .line 10235
    .restart local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10237
    .end local v0    # "result":Z
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10238
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 10240
    goto :goto_1
.end method

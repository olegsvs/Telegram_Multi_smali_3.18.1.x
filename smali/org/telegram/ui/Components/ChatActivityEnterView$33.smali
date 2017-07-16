.class Lorg/telegram/ui/Components/ChatActivityEnterView$33;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 2456
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 12
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2459
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 2460
    .local v9, "uid":I
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 2463
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 2464
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v10, :cond_2

    .line 2465
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 2495
    :cond_1
    :goto_0
    return-void

    .line 2468
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide v0, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 2469
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_7

    .line 2470
    long-to-int v8, p2

    .line 2471
    .local v8, "lower_part":I
    if-eqz v8, :cond_6

    .line 2472
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2473
    .local v6, "args":Landroid/os/Bundle;
    if-lez v8, :cond_4

    .line 2474
    const-string/jumbo v0, "user_id"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2478
    :cond_3
    :goto_1
    invoke-static {v6, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2481
    new-instance v7, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 2482
    .local v7, "chatActivity":Lorg/telegram/ui/ChatActivity;
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2483
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2484
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 2475
    .end local v7    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    :cond_4
    if-gez v8, :cond_3

    .line 2476
    const-string/jumbo v0, "chat_id"

    neg-int v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2487
    .restart local v7    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_0

    .line 2490
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v7    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto :goto_0

    .line 2493
    .end local v8    # "lower_part":I
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_0
.end method

.class Lorg/telegram/messenger/MessagesController$60;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3871
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3874
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$5000(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3876
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_2

    .line 3877
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v3

    .line 3883
    .local v2, "peer":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3884
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 3885
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3886
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3888
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3889
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3891
    :cond_1
    return-void

    .line 3878
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "peer":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_3

    .line 3879
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v3

    .restart local v2    # "peer":I
    goto :goto_0

    .line 3881
    .end local v2    # "peer":I
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$60;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v2    # "peer":I
    goto :goto_0
.end method

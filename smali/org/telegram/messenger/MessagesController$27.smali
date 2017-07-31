.class Lorg/telegram/messenger/MessagesController$27;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1749
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$27;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v7, 0x1

    .line 1752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v0, "blocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1754
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-nez p2, :cond_1

    move-object v2, p1

    .line 1755
    check-cast v2, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;

    .line 1756
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;

    .line 1757
    .local v1, "contactBlocked":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1759
    .end local v1    # "contactBlocked":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    :cond_0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->users:Ljava/util/ArrayList;

    .line 1760
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->users:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1761
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    .line 1763
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$27;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Lorg/telegram/messenger/MessagesController;->processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1764
    return-void
.end method

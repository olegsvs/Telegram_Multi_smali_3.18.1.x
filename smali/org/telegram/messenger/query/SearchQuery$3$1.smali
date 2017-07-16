.class Lorg/telegram/messenger/query/SearchQuery$3$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/SearchQuery$3;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/SearchQuery$3;

    .prologue
    .line 333
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$3;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 336
    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    .line 337
    .local v3, "topPeers":Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 338
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 339
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 340
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    .line 341
    .local v1, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    sput-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    .line 339
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    sput-object v4, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    goto :goto_1

    .line 347
    .end local v1    # "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->buildShortcuts()V

    .line 348
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$400()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 351
    .local v2, "inlineDatesCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/SearchQuery$3$1$1;

    invoke-direct {v5, p0, v3, v2}, Lorg/telegram/messenger/query/SearchQuery$3$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

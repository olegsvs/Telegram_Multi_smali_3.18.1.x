.class Lorg/telegram/messenger/query/SearchQuery$3$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;


.field final synthetic val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/query/SearchQuery$3$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;


    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string/jumbo v11, "DELETE FROM chat_hints WHERE 1"

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    iget-object v12, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string/jumbo v11, "REPLACE INTO chat_hints VALUES(?, ?, ?, ?)"

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    .local v2, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;


    if-eqz v9, :cond_0

    const/4 v8, 0x1

    .local v8, "type":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .local v6, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v9, :cond_1

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .local v4, "did":I
    :goto_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "date":Ljava/lang/Integer;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v9, 0x3

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-virtual {v7, v9, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(ID)V

    const/4 v11, 0x4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_4
    invoke-virtual {v7, v11, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "b":I
    .end local v3    # "date":Ljava/lang/Integer;
    .end local v4    # "did":I
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v8    # "type":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "type":I
    goto :goto_1

    .restart local v1    # "b":I
    .restart local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_1
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v9, :cond_2

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v9

    .restart local v4    # "did":I
    goto :goto_3

    .end local v4    # "did":I
    :cond_2
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v9

    .restart local v4    # "did":I
    goto :goto_3

    .restart local v3    # "date":Ljava/lang/Integer;
    :cond_3
    move v9, v10

    goto :goto_4

    .end local v3    # "date":Ljava/lang/Integer;
    .end local v4    # "did":I
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "b":I
    .end local v2    # "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    .end local v8    # "type":I
    :cond_5
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    new-instance v9, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3$1$1;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "a":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_5
    return-void

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

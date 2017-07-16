.class final Lorg/telegram/messenger/query/SearchQuery$2;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 256
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v4, "hintsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v5, "inlineBotsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v6, "inlineDatesNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v13, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v7, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "SELECT did, type, rating, date FROM chat_hints WHERE 1 ORDER BY rating DESC"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 265
    .local v8, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 267
    .local v9, "did":I
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    .line 268
    .local v12, "type":I
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    .line 269
    .local v11, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->doubleValue(I)D

    move-result-wide v0

    iput-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    .line 270
    if-lez v9, :cond_1

    .line 271
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 272
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v9, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_1
    if-nez v12, :cond_2

    .line 280
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "did":I
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v12    # "type":I
    .end local v13    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v10

    .line 313
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 315
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 275
    .restart local v7    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "did":I
    .restart local v11    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .restart local v12    # "type":I
    .restart local v13    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 276
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-int v1, v9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 277
    neg-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_2
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 282
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v9    # "did":I
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v12    # "type":I
    :cond_3
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 287
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 288
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 291
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 294
    :cond_5
    new-instance v0, Lorg/telegram/messenger/query/SearchQuery$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/SearchQuery$2$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

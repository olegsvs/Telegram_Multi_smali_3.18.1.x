.class Lorg/telegram/messenger/MessagesStorage$64;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3970
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$64;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$64;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3974
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3975
    .local v5, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$64;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT uid, type, data FROM download_queue WHERE type = %d ORDER BY date DESC LIMIT 3"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$64;->val$type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3976
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3977
    new-instance v2, Lorg/telegram/messenger/DownloadObject;

    invoke-direct {v2}, Lorg/telegram/messenger/DownloadObject;-><init>()V

    .line 3978
    .local v2, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v2, Lorg/telegram/messenger/DownloadObject;->type:I

    .line 3979
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/messenger/DownloadObject;->id:J

    .line 3980
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 3981
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_0

    .line 3982
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    .line 3983
    .local v4, "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3984
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1

    .line 3985
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v6, v2, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 3990
    .end local v4    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_0
    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4000
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v5    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    :catch_0
    move-exception v3

    .line 4001
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4003
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 3986
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v2    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .restart local v4    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .restart local v5    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    :cond_1
    :try_start_1
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_0

    .line 3987
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    goto :goto_1

    .line 3992
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v4    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3994
    new-instance v6, Lorg/telegram/messenger/MessagesStorage$64$1;

    invoke-direct {v6, p0, v5}, Lorg/telegram/messenger/MessagesStorage$64$1;-><init>(Lorg/telegram/messenger/MessagesStorage$64;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.class Lorg/telegram/messenger/MessagesStorage$22;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:J

.field final synthetic val$messagesOnly:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IJ)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1387
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 1391
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1392
    const/4 v13, -0x1

    .line 1393
    .local v13, "lastMid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1394
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1395
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 1397
    :cond_0
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1398
    if-eqz v13, :cond_1

    .line 1517
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "lastMid":I
    :goto_0
    return-void

    .line 1402
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1403
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "SELECT data FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1404
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1406
    .local v11, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1407
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 1408
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_3

    .line 1409
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v19

    .line 1410
    .local v19, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1411
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 1412
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 1413
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1414
    .local v21, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1415
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 1416
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1432
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "file":Ljava/io/File;
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v21    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :catch_0
    move-exception v9

    .line 1433
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1435
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1436
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 1439
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1440
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM chat_settings_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM chat_pinned WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM channel_users_v2 WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM search_recent WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 1446
    .local v18, "lower_id":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x20

    shr-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 1447
    .local v12, "high_id":I
    if-eqz v18, :cond_c

    .line 1448
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_b

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM chats WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1500
    .end local v12    # "high_id":I
    .end local v18    # "lower_id":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0 WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1507
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 1508
    new-instance v24, Lorg/telegram/messenger/MessagesStorage$22$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage$22$1;-><init>(Lorg/telegram/messenger/MessagesStorage$22;)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1514
    :catch_1
    move-exception v9

    .line 1515
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1419
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9
    :try_start_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 1420
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1421
    .restart local v10    # "file":Ljava/io/File;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_a

    .line 1422
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1425
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 1426
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1450
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v12    # "high_id":I
    .restart local v18    # "lower_id":I
    :cond_b
    if-gez v18, :cond_8

    goto/16 :goto_3

    .line 1454
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM enc_chats WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_3

    .line 1457
    .end local v12    # "high_id":I
    .end local v18    # "lower_id":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "SELECT last_mid_i, last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1459
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/16 v20, -0x1

    .line 1460
    .local v20, "messageId":I
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1461
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v16

    .line 1462
    .local v16, "last_mid_i":J
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    .line 1463
    .local v14, "last_mid":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "SELECT data FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AND mid IN ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v7

    .line 1465
    .local v7, "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_e
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1466
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 1467
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_e

    .line 1468
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v19

    .line 1469
    .restart local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1470
    if-eqz v19, :cond_e

    .line 1471
    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v20, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 1475
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_2
    move-exception v9

    .line 1476
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1478
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AND mid != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AND mid != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1486
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    const-string/jumbo v25, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v22

    .line 1489
    .local v22, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    const-string/jumbo v25, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v23

    .line 1490
    .local v23, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 1491
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 1493
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1494
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1496
    .end local v7    # "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v14    # "last_mid":J
    .end local v16    # "last_mid_i":J
    .end local v22    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v23    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_11
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

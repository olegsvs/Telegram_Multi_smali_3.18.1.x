.class Lorg/telegram/messenger/MessagesStorage$34;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$ifExist:Z

.field final synthetic val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1968
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$ifExist:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1972
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$ifExist:Z

    if-eqz v15, :cond_1

    .line 1973
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "SELECT uid FROM chat_settings_v2 WHERE uid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 1974
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    .line 1975
    .local v6, "exist":Z
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1976
    if-nez v6, :cond_1

    .line 2026
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v6    # "exist":Z
    :cond_0
    :goto_0
    return-void

    .line 1980
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    const-string/jumbo v16, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    .line 1981
    .local v14, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v15}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v15

    invoke-direct {v3, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1982
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1983
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1984
    const/4 v15, 0x2

    invoke-virtual {v14, v15, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1985
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1986
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1987
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1988
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1990
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v15, :cond_0

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "SELECT date, pts, last_mid, inbox_max, outbox_max, pinned FROM dialogs WHERE did = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 1992
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1993
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 1994
    .local v8, "inbox_max":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    if-gt v8, v15, :cond_3

    .line 1995
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    sub-int v7, v15, v8

    .line 1996
    .local v7, "inbox_diff":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    if-ge v7, v15, :cond_2

    .line 1997
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput v7, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    .line 1999
    :cond_2
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 2000
    .local v4, "dialog_date":I
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2001
    .local v13, "pts":I
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v10

    .line 2002
    .local v10, "last_mid":J
    const/4 v15, 0x4

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 2003
    .local v9, "outbox_max":I
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    .line 2005
    .local v12, "pinned":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$34;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    const-string/jumbo v16, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    .line 2006
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2007
    const/4 v15, 0x2

    invoke-virtual {v14, v15, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2008
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2009
    const/4 v15, 0x4

    invoke-virtual {v14, v15, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2010
    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2011
    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$34;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2012
    const/4 v15, 0x7

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2013
    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2014
    const/16 v15, 0x9

    invoke-virtual {v14, v15, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2015
    const/16 v15, 0xa

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2016
    const/16 v15, 0xb

    invoke-virtual {v14, v15, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2017
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2018
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2021
    .end local v4    # "dialog_date":I
    .end local v7    # "inbox_diff":I
    .end local v8    # "inbox_max":I
    .end local v9    # "outbox_max":I
    .end local v10    # "last_mid":J
    .end local v12    # "pinned":I
    .end local v13    # "pts":I
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2023
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v14    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v5

    .line 2024
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

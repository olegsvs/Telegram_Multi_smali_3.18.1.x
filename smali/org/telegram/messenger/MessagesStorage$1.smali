.class Lorg/telegram/messenger/MessagesStorage$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateDbToLastVersion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$currentVersion:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 236
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$1;->val$currentVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    .line 240
    :try_start_0
    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$1;->val$currentVersion:I

    .line 241
    .local v11, "version":I
    if-ge v11, v14, :cond_0

    .line 242
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 244
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS read_state_out_idx_messages;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 245
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS ttl_idx_messages;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 246
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS date_idx_messages;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 248
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 249
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 250
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 252
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 253
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 254
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 256
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 258
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 260
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS blocked_users(uid INTEGER PRIMARY KEY)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 262
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 263
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 265
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 267
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS send_state_idx_messages ON messages(mid, send_state, date) WHERE mid < 0 AND send_state = 1;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 269
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 271
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "UPDATE messages SET send_state = 2 WHERE mid < 0 AND send_state = 1"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 273
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$100(Lorg/telegram/messenger/MessagesStorage;)V

    .line 274
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 4"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 275
    const/4 v11, 0x4

    .line 277
    :cond_0
    if-ne v11, v14, :cond_3

    .line 278
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 279
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 280
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 281
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "SELECT date, data FROM enc_tasks WHERE 1"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 282
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "REPLACE INTO enc_tasks_v2 VALUES(?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 283
    .local v10, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 284
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    .line 285
    .local v6, "date":I
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    .line 286
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    .line 288
    .local v8, "length":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    div-int/lit8 v12, v8, 0x4

    if-ge v0, v12, :cond_1

    .line 289
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 290
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 291
    const/4 v12, 0x2

    invoke-virtual {v10, v12, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 292
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 297
    .end local v0    # "a":I
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "date":I
    .end local v8    # "length":I
    :cond_2
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 298
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 299
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 301
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS date_idx_enc_tasks;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 302
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS enc_tasks;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 304
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE messages ADD COLUMN media INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 305
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 6"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 306
    const/4 v11, 0x6

    .line 308
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3
    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    .line 309
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 310
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 311
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN layer INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 312
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN seq_in INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 313
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN seq_out INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 314
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 7"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 315
    const/4 v11, 0x7

    .line 322
    :cond_4
    const/4 v12, 0x7

    if-eq v11, v12, :cond_5

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5

    const/16 v12, 0x9

    if-ne v11, v12, :cond_6

    .line 323
    :cond_5
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN use_count INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 324
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN exchange_id INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 325
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN key_date INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 326
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN fprint INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 327
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN fauthkey BLOB default NULL"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 328
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN khash BLOB default NULL"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 329
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 10"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 330
    const/16 v11, 0xa

    .line 332
    :cond_6
    const/16 v12, 0xa

    if-ne v11, v12, :cond_7

    .line 333
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, PRIMARY KEY (id, type));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 334
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 11"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 335
    const/16 v11, 0xb

    .line 337
    :cond_7
    const/16 v12, 0xb

    if-eq v11, v12, :cond_8

    const/16 v12, 0xc

    if-ne v11, v12, :cond_9

    .line 338
    :cond_8
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS uid_mid_idx_media;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 339
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS mid_idx_media;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 340
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS uid_date_mid_idx_media;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 341
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS media;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 342
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS media_counts;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 344
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 345
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 346
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 348
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 350
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 13"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 351
    const/16 v11, 0xd

    .line 353
    :cond_9
    const/16 v12, 0xd

    if-ne v11, v12, :cond_a

    .line 354
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE messages ADD COLUMN replydata BLOB default NULL"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 355
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 14"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 356
    const/16 v11, 0xe

    .line 358
    :cond_a
    const/16 v12, 0xe

    if-ne v11, v12, :cond_b

    .line 359
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 360
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 15"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 361
    const/16 v11, 0xf

    .line 363
    :cond_b
    const/16 v12, 0xf

    if-ne v11, v12, :cond_c

    .line 364
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 365
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 16"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 366
    const/16 v11, 0x10

    .line 368
    :cond_c
    const/16 v12, 0x10

    if-ne v11, v12, :cond_d

    .line 369
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN inbox_max INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 370
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN outbox_max INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 371
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 17"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 372
    const/16 v11, 0x11

    .line 374
    :cond_d
    const/16 v12, 0x11

    if-ne v11, v12, :cond_e

    .line 375
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE bot_info(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 376
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 18"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 377
    const/16 v11, 0x12

    .line 379
    :cond_e
    const/16 v12, 0x12

    if-ne v11, v12, :cond_f

    .line 380
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS stickers;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 381
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 382
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 19"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 383
    const/16 v11, 0x13

    .line 385
    :cond_f
    const/16 v12, 0x13

    if-ne v11, v12, :cond_10

    .line 386
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 387
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 388
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 20"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 389
    const/16 v11, 0x14

    .line 391
    :cond_10
    const/16 v12, 0x14

    if-ne v11, v12, :cond_11

    .line 392
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 393
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 21"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 394
    const/16 v11, 0x15

    .line 396
    :cond_11
    const/16 v12, 0x15

    if-ne v11, v12, :cond_15

    .line 397
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 399
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "SELECT uid, participants FROM chat_settings WHERE uid < 0"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 400
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "REPLACE INTO chat_settings_v2 VALUES(?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 401
    .restart local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_12
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 402
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    .line 403
    .local v2, "chat_id":I
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    .line 404
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v4, :cond_12

    .line 405
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-result-object v9

    .line 406
    .local v9, "participants":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 407
    if-eqz v9, :cond_12

    .line 408
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 409
    .local v1, "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    .line 410
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 411
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 412
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 413
    iput-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 414
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->getObjectSize()I

    move-result v12

    invoke-direct {v5, v12}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 415
    .local v5, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 416
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 417
    const/4 v12, 0x1

    invoke-virtual {v10, v12, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 418
    const/4 v12, 0x2

    invoke-virtual {v10, v12, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 419
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 420
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 530
    .end local v1    # "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    .end local v2    # "chat_id":I
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v5    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "participants":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    .end local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v11    # "version":I
    :catch_0
    move-exception v7

    .line 531
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 533
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_2
    return-void

    .line 424
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v11    # "version":I
    :cond_14
    :try_start_1
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 425
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 427
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS chat_settings;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 428
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN last_mid_i INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 429
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN unread_count_i INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 430
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN pts INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 431
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN date_i INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 432
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 433
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 434
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE messages ADD COLUMN imp INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 435
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 436
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 437
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 22"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 438
    const/16 v11, 0x16

    .line 440
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_15
    const/16 v12, 0x16

    if-ne v11, v12, :cond_16

    .line 441
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 442
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 443
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 23"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 444
    const/16 v11, 0x17

    .line 446
    :cond_16
    const/16 v12, 0x17

    if-eq v11, v12, :cond_17

    const/16 v12, 0x18

    if-ne v11, v12, :cond_18

    .line 447
    :cond_17
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DELETE FROM media_holes_v2 WHERE uid != 0 AND type >= 0 AND start IN (0, 1)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 448
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 25"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 449
    const/16 v11, 0x19

    .line 451
    :cond_18
    const/16 v12, 0x19

    if-eq v11, v12, :cond_19

    const/16 v12, 0x1a

    if-ne v11, v12, :cond_1a

    .line 452
    :cond_19
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 453
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 27"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 454
    const/16 v11, 0x1b

    .line 456
    :cond_1a
    const/16 v12, 0x1b

    if-ne v11, v12, :cond_1b

    .line 457
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE web_recent_v3 ADD COLUMN document BLOB default NULL"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 458
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 28"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 459
    const/16 v11, 0x1c

    .line 461
    :cond_1b
    const/16 v12, 0x1c

    if-eq v11, v12, :cond_1c

    const/16 v12, 0x1d

    if-ne v11, v12, :cond_1d

    .line 462
    :cond_1c
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DELETE FROM sent_files_v2 WHERE 1"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 463
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DELETE FROM download_queue WHERE 1"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 464
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 30"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 465
    const/16 v11, 0x1e

    .line 467
    :cond_1d
    const/16 v12, 0x1e

    if-ne v11, v12, :cond_1e

    .line 468
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE chat_settings_v2 ADD COLUMN pinned INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 469
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 470
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS chat_pinned(uid INTEGER PRIMARY KEY, pinned INTEGER, data BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 471
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS chat_pinned_mid_idx ON chat_pinned(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 472
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 473
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 31"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 474
    const/16 v11, 0x1f

    .line 476
    :cond_1e
    const/16 v12, 0x1f

    if-ne v11, v12, :cond_1f

    .line 477
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP TABLE IF EXISTS bot_recent;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 478
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 479
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 480
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 32"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 481
    const/16 v11, 0x20

    .line 483
    :cond_1f
    const/16 v12, 0x20

    if-ne v11, v12, :cond_20

    .line 484
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS uid_mid_idx_imp_messages;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 485
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "DROP INDEX IF EXISTS uid_date_mid_imp_idx_messages;"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 486
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 33"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 487
    const/16 v11, 0x21

    .line 489
    :cond_20
    const/16 v12, 0x21

    if-ne v11, v12, :cond_21

    .line 490
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 491
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 34"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 492
    const/16 v11, 0x22

    .line 494
    :cond_21
    const/16 v12, 0x22

    if-ne v11, v12, :cond_22

    .line 495
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 496
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 35"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 497
    const/16 v11, 0x23

    .line 499
    :cond_22
    const/16 v12, 0x23

    if-ne v11, v12, :cond_23

    .line 500
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 501
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 36"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 502
    const/16 v11, 0x24

    .line 504
    :cond_23
    const/16 v12, 0x24

    if-ne v11, v12, :cond_24

    .line 505
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN in_seq_no INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 506
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 37"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 507
    const/16 v11, 0x25

    .line 509
    :cond_24
    const/16 v12, 0x25

    if-ne v11, v12, :cond_25

    .line 510
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 511
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 512
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 38"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 513
    const/16 v11, 0x26

    .line 515
    :cond_25
    const/16 v12, 0x26

    if-ne v11, v12, :cond_26

    .line 516
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE dialogs ADD COLUMN pinned INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 517
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 39"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 518
    const/16 v11, 0x27

    .line 520
    :cond_26
    const/16 v12, 0x27

    if-ne v11, v12, :cond_27

    .line 521
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "ALTER TABLE enc_chats ADD COLUMN admin_id INTEGER default 0"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 522
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 40"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 523
    const/16 v11, 0x28

    .line 525
    :cond_27
    const/16 v12, 0x28

    if-ne v11, v12, :cond_13

    .line 526
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$100(Lorg/telegram/messenger/MessagesStorage;)V

    .line 527
    iget-object v12, p0, Lorg/telegram/messenger/MessagesStorage$1;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v12}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "PRAGMA user_version = 41"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

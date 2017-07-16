.class public Lorg/telegram/SQLite/SQLitePreparedStatement;
.super Ljava/lang/Object;
.source "SQLitePreparedStatement.java"


# instance fields
.field private finalizeAfterQuery:Z

.field private isFinalized:Z

.field private sqliteStatementHandle:I


# direct methods
.method public constructor <init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "db"    # Lorg/telegram/SQLite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "finalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    iput-boolean p3, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->getSQLiteHandle()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->prepare(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    return-void
.end method


# virtual methods
.method native bindByteBuffer(IILjava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(IILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/telegram/tgnet/NativeByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    iget-object v1, p2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(IILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(IID)V

    return-void
.end method

.method native bindDouble(IID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method native bindInt(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindInteger(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(III)V

    return-void
.end method

.method native bindLong(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IIJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(II)V

    return-void
.end method

.method native bindNull(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method native bindString(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(IILjava/lang/String;)V

    return-void
.end method

.method checkFinalized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "Prepared query finalized"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeQuery()V

    :cond_0
    return-void
.end method

.method native finalize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public finalizeQuery()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    iget v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalize(I)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/telegram/SQLite/SQLiteException;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStatementHandle()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    return v0
.end method

.method native prepare(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    iget v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(I)V

    const/4 v0, 0x1

    .local v0, "i":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, p1, v2

    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_1

    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(II)V

    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(III)V

    goto :goto_1

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v4, v0, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(IID)V

    goto :goto_1

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v4, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(IILjava/lang/String;)V

    goto :goto_1

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v2, Lorg/telegram/SQLite/SQLiteCursor;

    invoke-direct {v2, p0}, Lorg/telegram/SQLite/SQLiteCursor;-><init>(Lorg/telegram/SQLite/SQLitePreparedStatement;)V

    return-object v2
.end method

.method public requery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(I)V

    return-void
.end method

.method native reset(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public step()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(I)I

    move-result v0

    return v0
.end method

.method native step(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(I)I

    return-object p0
.end method

.class final Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private length:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "length"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 67
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 68
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    .line 69
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;J)V

    .line 56
    return-void
.end method

.method private getSpanInternal(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 7
    .param p1, "position"    # J

    .prologue
    .line 198
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 199
    .local v1, "lookupSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 200
    .local v0, "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .end local v0    # "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 1
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    return-wide v0
.end method

.method public getSpan(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 7
    .param p1, "position"    # J

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpanInternal(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 110
    .local v1, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 112
    .local v0, "ceilEntry":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    .line 115
    .end local v0    # "ceilEntry":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_0
    return-object v2

    .line 112
    .restart local v0    # "ceilEntry":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v4, p1

    .line 113
    invoke-static {v2, p1, p2, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    goto :goto_0

    .end local v0    # "ceilEntry":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_1
    move-object v2, v1

    .line 115
    goto :goto_0
.end method

.method public getSpans()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public headerHashCode()I
    .locals 7

    .prologue
    .line 187
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 188
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 190
    return v0
.end method

.method public isCached(JJ)Z
    .locals 13
    .param p1, "position"    # J
    .param p3, "length"    # J

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpanInternal(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    .line 121
    .local v2, "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v6, v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-nez v6, :cond_0

    .line 123
    const/4 v6, 0x0

    .line 145
    :goto_0
    return v6

    .line 125
    :cond_0
    add-long v4, p1, p3

    .line 126
    .local v4, "queryEndPosition":J
    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v8, v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long v0, v6, v8

    .line 127
    .local v0, "currentEndPosition":J
    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 129
    const/4 v6, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 132
    .local v3, "next":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    cmp-long v7, v8, v0

    if-lez v7, :cond_3

    .line 134
    const/4 v6, 0x0

    goto :goto_0

    .line 138
    :cond_3
    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 139
    cmp-long v7, v0, v4

    if-ltz v7, :cond_2

    .line 141
    const/4 v6, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "next":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)Z
    .locals 1
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "length"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    .line 92
    return-void
.end method

.method public touch(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "cacheSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 160
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithUpdatedLastAccessTime(I)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 162
    .local v0, "newCacheSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Renaming of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 82
    return-void
.end method

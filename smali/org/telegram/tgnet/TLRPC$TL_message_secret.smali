.class public Lorg/telegram/tgnet/TLRPC$TL_message_secret;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_secret"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25811
    const v0, 0x555555f9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25810
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 25814
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 25815
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->unread:Z

    .line 25816
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->out:Z

    .line 25817
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->mentioned:Z

    .line 25818
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media_unread:Z

    .line 25819
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    .line 25820
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->ttl:I

    .line 25821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->from_id:I

    .line 25822
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25823
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->date:I

    .line 25824
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    .line 25825
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25826
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 25827
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_4

    .line 25828
    if-eqz p2, :cond_5

    .line 25829
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_0
    move v4, v6

    .line 25815
    goto :goto_0

    :cond_1
    move v4, v6

    .line 25816
    goto :goto_1

    :cond_2
    move v4, v6

    .line 25817
    goto :goto_2

    :cond_3
    move v4, v6

    .line 25818
    goto :goto_3

    .line 25833
    .restart local v2    # "magic":I
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 25834
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_7

    .line 25835
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 25836
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_6

    .line 25850
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_5
    :goto_5
    return-void

    .line 25839
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_6
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25834
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25841
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_8

    .line 25842
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->via_bot_name:Ljava/lang/String;

    .line 25844
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    .line 25845
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->reply_to_random_id:J

    .line 25847
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    if-ltz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25848
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->attachPath:Ljava/lang/String;

    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25853
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25854
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->unread:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 25855
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->out:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 25856
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->mentioned:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 25857
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media_unread:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 25858
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25859
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25860
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->ttl:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25861
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25862
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25863
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25864
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25865
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25866
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25867
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 25868
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25869
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 25870
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25869
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25854
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 25855
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 25856
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto :goto_2

    .line 25857
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_3

    .line 25872
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_5

    .line 25873
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->via_bot_name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25875
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 25876
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->reply_to_random_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 25878
    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25879
    return-void
.end method

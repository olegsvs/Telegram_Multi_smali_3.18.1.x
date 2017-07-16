.class public Lorg/telegram/tgnet/TLRPC$TL_message_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25669
    const v0, 0x567699b3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25668
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25673
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    .line 25674
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->unread:Z

    .line 25675
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->out:Z

    .line 25676
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->mentioned:Z

    .line 25677
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media_unread:Z

    .line 25678
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->id:I

    .line 25679
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->from_id:I

    .line 25680
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25681
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->date:I

    .line 25682
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->message:Ljava/lang/String;

    .line 25683
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25684
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->id:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25685
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->attachPath:Ljava/lang/String;

    .line 25687
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 25674
    goto :goto_0

    :cond_3
    move v0, v2

    .line 25675
    goto :goto_1

    :cond_4
    move v0, v2

    .line 25676
    goto :goto_2

    :cond_5
    move v1, v2

    .line 25677
    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25690
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25691
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->unread:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    .line 25692
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->out:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    .line 25693
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->mentioned:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    .line 25694
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media_unread:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    .line 25695
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25696
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25697
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25698
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25699
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25700
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25701
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25702
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25703
    return-void

    .line 25691
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 25692
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 25693
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 25694
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method

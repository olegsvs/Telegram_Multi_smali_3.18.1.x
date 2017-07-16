.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallRequested"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6963
    const v0, -0x7c89e31c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6962
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6967
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->id:J

    .line 6968
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->access_hash:J

    .line 6969
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->date:I

    .line 6970
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->admin_id:I

    .line 6971
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->participant_id:I

    .line 6972
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->g_a_hash:[B

    .line 6973
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 6974
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6977
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6978
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6979
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6980
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6981
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6982
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6983
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->g_a_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 6984
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6985
    return-void
.end method

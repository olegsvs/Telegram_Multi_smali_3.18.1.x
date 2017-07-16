.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaExternalDocument"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16834
    const v0, -0x56a4f23

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16833
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16839
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->id:J

    .line 16840
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->access_hash:J

    .line 16841
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->date:I

    .line 16842
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->mime_type:Ljava/lang/String;

    .line 16843
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->size:I

    .line 16844
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 16845
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->dc_id:I

    .line 16846
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 16847
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 16848
    if-eqz p2, :cond_1

    .line 16849
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16853
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 16854
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 16855
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v3

    .line 16856
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v3, :cond_2

    .line 16861
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    return-void

    .line 16859
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16864
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16865
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 16866
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 16867
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16868
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16869
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16870
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 16871
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->dc_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16872
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16873
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 16874
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16875
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 16876
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 16875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16878
    :cond_0
    return-void
.end method

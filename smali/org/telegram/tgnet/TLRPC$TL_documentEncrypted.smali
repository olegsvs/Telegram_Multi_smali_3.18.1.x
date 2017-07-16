.class public Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;
.super Lorg/telegram/tgnet/TLRPC$Document;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_documentEncrypted"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9884
    const v0, 0x55555558

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9883
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Document;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    .line 9888
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->id:J

    .line 9889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->access_hash:J

    .line 9890
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->date:I

    .line 9891
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->getPosition()I

    move-result v5

    .line 9893
    .local v5, "startReadPosiition":I
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->mime_type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9900
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->size:I

    .line 9901
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 9902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->dc_id:I

    .line 9903
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 9904
    .local v3, "magic":I
    const v6, 0x1cb5c415

    if-eq v3, v6, :cond_1

    .line 9905
    if-eqz p2, :cond_2

    .line 9906
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 9894
    .end local v3    # "magic":I
    :catch_0
    move-exception v2

    .line 9895
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "audio/ogg"

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->mime_type:Ljava/lang/String;

    .line 9896
    instance-of v6, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 9897
    check-cast v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    goto :goto_0

    .line 9910
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "magic":I
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 9911
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 9912
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v4

    .line 9913
    .local v4, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v4, :cond_3

    .line 9920
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v4    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    :goto_2
    return-void

    .line 9916
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v4    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9911
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9918
    .end local v4    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->key:[B

    .line 9919
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->iv:[B

    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9923
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9924
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 9925
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 9926
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9927
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9928
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9929
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9930
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->dc_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9931
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9932
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9933
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9934
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9935
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9937
    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->key:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 9938
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;->iv:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 9939
    return-void
.end method

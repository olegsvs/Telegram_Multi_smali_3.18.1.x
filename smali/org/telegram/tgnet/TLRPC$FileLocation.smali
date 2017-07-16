.class public Lorg/telegram/tgnet/TLRPC$FileLocation;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLocation"
.end annotation


# instance fields
.field public dc_id:I

.field public iv:[B

.field public key:[B

.field public local_id:I

.field public secret:J

.field public volume_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18217
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18226
    const/4 v0, 0x0

    .line 18227
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    sparse-switch p1, :sswitch_data_0

    .line 18238
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18239
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in FileLocation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18229
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;-><init>()V

    .line 18230
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    goto :goto_0

    .line 18232
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    .line 18233
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    goto :goto_0

    .line 18235
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$FileLocation;
    goto :goto_0

    .line 18241
    :cond_0
    if-eqz v0, :cond_1

    .line 18242
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$FileLocation;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18244
    :cond_1
    return-object v0

    .line 18227
    nop

    :sswitch_data_0
    .sparse-switch
        0x53d69076 -> :sswitch_0
        0x55555554 -> :sswitch_1
        0x7c596b46 -> :sswitch_2
    .end sparse-switch
.end method

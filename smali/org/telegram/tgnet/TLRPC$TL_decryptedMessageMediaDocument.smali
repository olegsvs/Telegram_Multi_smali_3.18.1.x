.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaDocument"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public thumb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16620
    const v0, 0x7afe8ae2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16619
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16625
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 16626
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb_w:I

    .line 16627
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb_h:I

    .line 16628
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->mime_type:Ljava/lang/String;

    .line 16629
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->size:I

    .line 16630
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->key:[B

    .line 16631
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->iv:[B

    .line 16632
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 16633
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 16634
    if-eqz p2, :cond_1

    .line 16635
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

    .line 16639
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 16640
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 16641
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v3

    .line 16642
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v3, :cond_2

    .line 16648
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    :goto_1
    return-void

    .line 16645
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16647
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->caption:Ljava/lang/String;

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16651
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16652
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16653
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb_w:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16654
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb_h:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16655
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16656
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16657
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->key:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16658
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->iv:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16659
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16660
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 16661
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16662
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 16663
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 16662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16665
    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->caption:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16666
    return-void
.end method

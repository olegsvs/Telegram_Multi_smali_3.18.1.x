.class public Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
.super Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_documentAttributeSticker"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 691
    const v0, 0x6319d612

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 695
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    .line 696
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->mask:Z

    .line 697
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 698
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 699
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .line 702
    :cond_0
    return-void

    .line 696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 705
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 706
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->mask:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    .line 707
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 708
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 710
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 713
    :cond_0
    return-void

    .line 706
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.class public Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_getFile"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public limit:I

.field public location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field public offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21645
    const v0, -0x1c59304b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21644
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21652
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21656
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21657
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21658
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21659
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21660
    return-void
.end method

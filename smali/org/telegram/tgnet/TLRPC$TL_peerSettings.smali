.class public Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerSettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public report_spam:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2887
    const v0, -0x7e7bd933

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2886
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2893
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->constructor:I

    if-eq v1, p1, :cond_1

    .line 2894
    if-eqz p2, :cond_0

    .line 2895
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_peerSettings"

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

    .line 2897
    :cond_0
    const/4 v0, 0x0

    .line 2902
    :goto_0
    return-object v0

    .line 2900
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;-><init>()V

    .line 2901
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 2906
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 2907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_spam:Z

    .line 2908
    return-void

    .line 2907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2911
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2912
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_spam:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 2913
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2914
    return-void

    .line 2912
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

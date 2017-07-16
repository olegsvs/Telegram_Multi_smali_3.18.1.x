.class public final Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 91
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private updateFrameworkCryptoInfoV16()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->mode:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 98
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public set(I[I[I[B[BI)V
    .locals 2
    .param p1, "numSubSamples"    # I
    .param p2, "numBytesOfClearData"    # [I
    .param p3, "numBytesOfEncryptedData"    # [I
    .param p4, "key"    # [B
    .param p5, "iv"    # [B
    .param p6, "mode"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    .line 65
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 66
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 67
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 68
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 69
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->mode:I

    .line 70
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->updateFrameworkCryptoInfoV16()V

    .line 73
    :cond_0
    return-void
.end method

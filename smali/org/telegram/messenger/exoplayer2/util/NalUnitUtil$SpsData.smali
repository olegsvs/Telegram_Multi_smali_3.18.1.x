.class public final Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthAspectRatio:F

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIFZZIIIZ)V
    .locals 0
    .param p1, "seqParameterSetId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelWidthAspectRatio"    # F
    .param p5, "separateColorPlaneFlag"    # Z
    .param p6, "frameMbsOnlyFlag"    # Z
    .param p7, "frameNumLength"    # I
    .param p8, "picOrderCountType"    # I
    .param p9, "picOrderCntLsbLength"    # I
    .param p10, "deltaPicOrderAlwaysZeroFlag"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    iput p7, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    iput p9, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method

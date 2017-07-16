.class public final Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final picParameterSetId:I

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "picParameterSetId"    # I
    .param p2, "seqParameterSetId"    # I
    .param p3, "bottomFieldPicOrderInFramePresentFlag"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method

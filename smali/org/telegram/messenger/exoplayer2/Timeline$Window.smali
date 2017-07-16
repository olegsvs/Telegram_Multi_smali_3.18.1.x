.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field private defaultPositionUs:J

.field private durationUs:J

.field public firstPeriodIndex:I

.field public id:Ljava/lang/Object;

.field public isDynamic:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field private positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public windowStartTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPositionMs()J
    .locals 2

    .prologue

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .prologue

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    .prologue

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .prologue

    return-wide v0
.end method

    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "presentationStartTimeMs"    # J
    .param p4, "windowStartTimeMs"    # J
    .param p6, "isSeekable"    # Z
    .param p7, "isDynamic"    # Z
    .param p8, "defaultPositionUs"    # J
    .param p10, "durationUs"    # J
    .param p12, "firstPeriodIndex"    # I
    .param p13, "lastPeriodIndex"    # I
    .param p14, "positionInFirstPeriodUs"    # J

    .prologue










    return-object p0
.end method

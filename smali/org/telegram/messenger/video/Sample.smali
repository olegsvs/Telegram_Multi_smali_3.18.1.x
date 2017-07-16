.class public Lorg/telegram/messenger/video/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# instance fields
.field private offset:J

.field private size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "size"    # J

    .prologue
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/telegram/messenger/video/Sample;->offset:J

    iput-wide v0, p0, Lorg/telegram/messenger/video/Sample;->size:J

    iput-wide p1, p0, Lorg/telegram/messenger/video/Sample;->offset:J

    iput-wide p3, p0, Lorg/telegram/messenger/video/Sample;->size:J

    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/video/Sample;->offset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/video/Sample;->size:J

    return-wide v0
.end method

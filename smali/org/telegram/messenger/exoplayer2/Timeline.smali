.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
    }
.end annotation


# static fields


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue



    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

    .locals 1
    .param p1, "periodIndex"    # I

    .prologue
    const/4 v0, 0x0


    move-result-object v0

    return-object v0
.end method

.end method

.method public abstract getPeriodCount()I
.end method

    .locals 1
    .param p1, "windowIndex"    # I

    .prologue
    const/4 v0, 0x0


    move-result-object v0

    return-object v0
.end method

    .locals 6
    .param p1, "windowIndex"    # I
    .param p3, "setIds"    # Z

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3


    move-result-object v0

    return-object v0
.end method

.end method

.method public abstract getWindowCount()I
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

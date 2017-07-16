.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
.super Ljava/lang/Object;
.source "AdaptationSet.java"


# static fields
.field public static final UNSET_ID:I = -0x1


# instance fields
.field public final id:I

.field public final representations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    .line 36
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 37
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 38
    return-void
.end method

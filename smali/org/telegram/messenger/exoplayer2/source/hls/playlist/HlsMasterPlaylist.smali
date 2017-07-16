.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
.super Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    }
.end annotation


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p5, "muxedAudioFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p6, "muxedCaptionFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .local p3, "audios":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .local p4, "subtitles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 70
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 71
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 72
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 73
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 74
    return-void
.end method

.method public static createSingleVariantMasterPlaylist(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 7
    .param p0, "variantUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->createMediaPlaylistHlsUrl(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "variant":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "emptyList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-object v4, v3

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v0
.end method

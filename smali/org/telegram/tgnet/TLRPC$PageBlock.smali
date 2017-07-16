.class public Lorg/telegram/tgnet/TLRPC$PageBlock;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageBlock"
.end annotation


# instance fields
.field public allow_scrolling:Z

.field public author:Ljava/lang/String;

.field public author_photo_id:J

.field public autoplay:Z

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field public bottom:Z

.field public caption:Lorg/telegram/tgnet/TLRPC$RichText;

.field public cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field public date:I

.field public first:Z

.field public flags:I

.field public full_width:Z

.field public h:I

.field public html:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public level:I

.field public loop:Z

.field public name:Ljava/lang/String;

.field public ordered:Z

.field public photo_id:J

.field public poster_photo_id:J

.field public published_date:I

.field public text:Lorg/telegram/tgnet/TLRPC$RichText;

.field public url:Ljava/lang/String;

.field public video_id:J

.field public w:I

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10053
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10083
    const/4 v0, 0x0

    .line 10084
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    sparse-switch p1, :sswitch_data_0

    .line 10155
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10156
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PageBlock"

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

    .line 10086
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;-><init>()V

    .line 10087
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10089
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;-><init>()V

    .line 10090
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10092
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;-><init>()V

    .line 10093
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10095
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;-><init>()V

    .line 10096
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10098
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;-><init>()V

    .line 10099
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10101
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;-><init>()V

    .line 10102
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10104
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;-><init>()V

    .line 10105
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10107
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;-><init>()V

    .line 10108
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10110
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 10111
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10113
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;-><init>()V

    .line 10114
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10116
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;-><init>()V

    .line 10117
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10119
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;-><init>()V

    .line 10120
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10122
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    .line 10123
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10125
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer60;-><init>()V

    .line 10126
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10128
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;-><init>()V

    .line 10129
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10131
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;-><init>()V

    .line 10132
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10134
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;-><init>()V

    .line 10135
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto :goto_0

    .line 10137
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;-><init>()V

    .line 10138
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10140
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;-><init>()V

    .line 10141
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10143
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;-><init>()V

    .line 10144
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10146
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;-><init>()V

    .line 10147
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10149
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;-><init>()V

    .line 10150
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10152
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PageBlock;
    goto/16 :goto_0

    .line 10158
    :cond_0
    if-eqz v0, :cond_1

    .line 10159
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PageBlock;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10161
    :cond_1
    return-object v0

    .line 10084
    nop

    :sswitch_data_0
    .sparse-switch
        -0x700565e1 -> :sswitch_f
        -0x45501a20 -> :sswitch_1
        -0x402f9b14 -> :sswitch_5
        -0x3f8f26c2 -> :sswitch_2
        -0x321dff2f -> :sswitch_3
        -0x31f2c850 -> :sswitch_4
        -0x26ca2705 -> :sswitch_d
        -0x2628e79a -> :sswitch_6
        -0x24df4e78 -> :sswitch_0
        -0x1639667e -> :sswitch_e
        -0xed4491f -> :sswitch_14
        0x8b31c4f -> :sswitch_a
        0x130c8963 -> :sswitch_15
        0x13567e8a -> :sswitch_7
        0x263d7c26 -> :sswitch_10
        0x292c7be9 -> :sswitch_11
        0x39f23300 -> :sswitch_13
        0x3a58c7f4 -> :sswitch_c
        0x3d5b64f2 -> :sswitch_9
        0x467a0766 -> :sswitch_8
        0x48870999 -> :sswitch_b
        0x4f4456d3 -> :sswitch_16
        0x70abc3fd -> :sswitch_12
    .end sparse-switch
.end method

.class public Lorg/telegram/tgnet/TLRPC$RichText;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichText"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

.field public texts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$RichText;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24388
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 24392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 24396
    const/4 v0, 0x0

    .line 24397
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$RichText;
    sparse-switch p1, :sswitch_data_0

    .line 24429
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 24430
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in RichText"

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

    .line 24399
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    .line 24400
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24402
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textUrl;-><init>()V

    .line 24403
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24405
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textStrike;-><init>()V

    .line 24406
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24408
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    .line 24409
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24411
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textEmail;-><init>()V

    .line 24412
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24414
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 24415
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24417
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    .line 24418
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24420
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    .line 24421
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24423
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    .line 24424
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24426
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RichText;
    goto :goto_0

    .line 24432
    :cond_0
    if-eqz v0, :cond_1

    .line 24433
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 24435
    :cond_1
    return-object v0

    .line 24397
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6407446b -> :sswitch_2
        -0x3ed9dd3c -> :sswitch_9
        -0x26ed5a64 -> :sswitch_8
        -0x23c27db1 -> :sswitch_0
        -0x21a5f22a -> :sswitch_4
        0x3c2884c1 -> :sswitch_1
        0x6724abc4 -> :sswitch_7
        0x6c3f19b9 -> :sswitch_3
        0x744694e0 -> :sswitch_5
        0x7e6260d7 -> :sswitch_6
    .end sparse-switch
.end method

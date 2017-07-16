.class public Lorg/telegram/messenger/exoplayer2/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/Cue$LineType;,
        Lorg/telegram/messenger/exoplayer2/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final DIMEN_UNSET:F = 1.4E-45f

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000


# instance fields
.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final positionAnchor:I

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x1

    .line 147
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 163
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 164
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->line:F

    .line 165
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineType:I

    .line 166
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineAnchor:I

    .line 167
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    .line 168
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    .line 169
    iput p8, p0, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    .line 170
    return-void
.end method

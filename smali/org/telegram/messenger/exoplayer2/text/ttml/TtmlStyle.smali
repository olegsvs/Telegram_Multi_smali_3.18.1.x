.class final Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle$OptionalBoolean;,
        Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle$FontSizeUnit;,
        Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private id:Ljava/lang/String;

.field private inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

.field private italic:I

.field private linethrough:I

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 76
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 77
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 78
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 79
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 80
    return-void
.end method

.method private inherit(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "ancestor"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .param p2, "chaining"    # Z

    .prologue
    const/4 v1, -0x1

    .line 196
    if-eqz p1, :cond_8

    .line 197
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 198
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .line 200
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    if-ne v0, v1, :cond_1

    .line 201
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 203
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_2

    .line 204
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 209
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    if-ne v0, v1, :cond_4

    .line 210
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 212
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    if-ne v0, v1, :cond_5

    .line 213
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 215
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 216
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 218
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_7

    .line 219
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 220
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    .line 223
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8

    .line 224
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .line 227
    :cond_8
    return-object p0
.end method


# virtual methods
.method public chain(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inherit(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    return v0
.end method

.method public getFontColor()I
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 90
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v3, v0, :cond_0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v3, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    return v0
.end method

.method public inherit(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inherit(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public isLinethrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 165
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    .line 167
    return-object p0
.end method

.method public setBold(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "bold"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 119
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 120
    return-object p0

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    goto :goto_1
.end method

.method public setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "fontColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 148
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    .line 149
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    .line 150
    return-object p0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 136
    return-object p0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSize(F)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .prologue
    .line 249
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    .line 250
    return-object p0
.end method

.method public setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "fontSizeUnit"    # I

    .prologue
    .line 254
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 255
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "italic"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 125
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 126
    return-object p0

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method

.method public setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "linethrough"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 103
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 104
    return-object p0

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 244
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 245
    return-object p0
.end method

.method public setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "underline"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 113
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 114
    return-object p0

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method

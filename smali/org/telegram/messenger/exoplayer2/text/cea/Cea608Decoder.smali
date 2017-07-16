.class public final Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;
.super Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_608_ID:I = 0x4

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COUNTRY_CODE:I = 0xb5

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_MISC_CHAN_1:B = 0x14t

.field private static final CTRL_MISC_CHAN_2:B = 0x1ct

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE:I = 0x31

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field private static final TAG:Ljava/lang/String; = "Cea608Decoder"

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID:I = 0x47413934


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private captionString:Ljava/lang/String;

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private lastCaptionString:Ljava/lang/String;

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedField:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 99
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    .line 127
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    .line 147
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 157
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    .line 147
    :array_2
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    .line 157
    :array_3
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "accessibilityChannel"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 183
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 198
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 199
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 200
    return-void

    .line 189
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private backspace()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 395
    :cond_0
    return-void
.end method

.method private static getChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 447
    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, v1, -0x20

    .line 448
    .local v0, "index":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private getDisplayCaption()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 405
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 406
    .local v0, "buildLength":I
    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v6

    .line 410
    :cond_1
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    move v2, v7

    .line 411
    .local v2, "endsWithNewline":Z
    :goto_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_0

    .line 415
    :cond_2
    if-eqz v2, :cond_4

    add-int/lit8 v1, v0, -0x1

    .line 416
    .local v1, "endIndex":I
    :goto_2
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v6, v7, :cond_5

    .line 417
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v1    # "endIndex":I
    .end local v2    # "endsWithNewline":Z
    :cond_3
    move v2, v8

    .line 410
    goto :goto_1

    .restart local v2    # "endsWithNewline":Z
    :cond_4
    move v1, v0

    .line 415
    goto :goto_2

    .line 420
    .restart local v1    # "endIndex":I
    :cond_5
    const/4 v5, 0x0

    .line 421
    .local v5, "startIndex":I
    move v4, v1

    .line 422
    .local v4, "searchBackwardFromIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    if-ge v3, v6, :cond_6

    if-eq v4, v11, :cond_6

    .line 423
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n"

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 425
    :cond_6
    if-eq v4, v11, :cond_7

    .line 426
    add-int/lit8 v5, v4, 0x1

    .line 428
    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 429
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    sub-int v7, v1, v5

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 457
    and-int/lit8 v0, p0, 0x1f

    .line 458
    .local v0, "index":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 462
    and-int/lit8 v0, p0, 0x1f

    .line 463
    .local v0, "index":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getSpecialChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 452
    and-int/lit8 v0, p0, 0xf

    .line 453
    .local v0, "index":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private handleCtrl(BB)Z
    .locals 3
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result v0

    .line 319
    .local v0, "isRepeatableControl":Z
    if-eqz v0, :cond_2

    .line 320
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v2, p1, :cond_1

    iget-byte v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v2, p2, :cond_1

    .line 323
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    move v0, v1

    .line 337
    .end local v0    # "isRepeatableControl":Z
    :cond_0
    :goto_0
    return v0

    .line 326
    .restart local v0    # "isRepeatableControl":Z
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 327
    iput-byte p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 328
    iput-byte p2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 331
    :cond_2
    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_0

    .line 333
    :cond_3
    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->maybeAppendNewline()V

    goto :goto_0
.end method

.method private handleMiscCode(B)V
    .locals 4
    .param p1, "cc2"    # B

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 341
    packed-switch p1, :pswitch_data_0

    .line 362
    :pswitch_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_1
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 344
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 347
    :pswitch_2
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 348
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 351
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 352
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 355
    :pswitch_4
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 358
    :pswitch_5
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_0

    .line 366
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 384
    :sswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 368
    :sswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    .line 369
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v3, :cond_0

    .line 370
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 374
    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 377
    :sswitch_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getDisplayCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 381
    :sswitch_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->maybeAppendNewline()V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private static isMiscCode(BB)Z
    .locals 1
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .prologue
    .line 467
    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPreambleAddressCode(BB)Z
    .locals 1
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .prologue
    .line 472
    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRepeatable(B)Z
    .locals 1
    .param p0, "cc1"    # B

    .prologue
    .line 476
    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSeiMessageCea608(IILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 7
    .param p0, "payloadType"    # I
    .param p1, "payloadLength"    # I
    .param p2, "payload"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v5, 0x0

    .line 491
    const/4 v6, 0x4

    if-ne p0, v6, :cond_0

    const/16 v6, 0x8

    if-ge p1, v6, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v5

    .line 494
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 495
    .local v2, "startPosition":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 496
    .local v0, "countryCode":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 497
    .local v1, "providerCode":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 498
    .local v4, "userIdentifier":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 499
    .local v3, "userDataTypeCode":I
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 500
    const/16 v6, 0xb5

    if-ne v0, v6, :cond_0

    const/16 v6, 0x31

    if-ne v1, v6, :cond_0

    const v6, 0x47413934

    if-ne v4, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private maybeAppendNewline()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 398
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 399
    .local v0, "buildLength":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 400
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    return-void
.end method

.method private setCaptionMode(I)V
    .locals 2
    .param p1, "captionMode"    # I

    .prologue
    .line 433
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 439
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 440
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 442
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected createSubtitle()Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->lastCaptionString:Ljava/lang/String;

    .line 233
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/text/Cue;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/Cue;)V

    return-object v0
.end method

.method protected decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 10
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 238
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "captionDataProcessed":Z
    const/4 v4, 0x0

    .line 241
    .local v4, "isRepeatableControl":Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_b

    .line 242
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v3, v5

    .line 243
    .local v3, "ccDataHeader":B
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v1, v5

    .line 244
    .local v1, "ccData1":B
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->ccData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v2, v5

    .line 247
    .local v2, "ccData2":B
    and-int/lit8 v5, v3, 0x6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 252
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-ne v5, v8, :cond_1

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_0

    :cond_1
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v8, :cond_0

    .line 258
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    .line 262
    :cond_3
    const/4 v0, 0x1

    .line 267
    const/16 v5, 0x11

    if-eq v1, v5, :cond_4

    const/16 v5, 0x19

    if-ne v1, v5, :cond_5

    :cond_4
    and-int/lit8 v5, v2, 0x70

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    .line 269
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getSpecialChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 276
    :cond_5
    and-int/lit8 v5, v2, 0x60

    if-ne v5, v9, :cond_9

    .line 278
    const/16 v5, 0x12

    if-eq v1, v5, :cond_6

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_7

    .line 280
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->backspace()V

    .line 281
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_7
    const/16 v5, 0x13

    if-eq v1, v5, :cond_8

    const/16 v5, 0x1b

    if-ne v1, v5, :cond_9

    .line 288
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->backspace()V

    .line 289
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 295
    :cond_9
    if-ge v1, v9, :cond_a

    .line 296
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->handleCtrl(BB)Z

    move-result v4

    .line 297
    goto/16 :goto_0

    .line 301
    :cond_a
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    if-lt v2, v9, :cond_0

    .line 303
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 307
    .end local v1    # "ccData1":B
    .end local v2    # "ccData2":B
    .end local v3    # "ccDataHeader":B
    :cond_b
    if-eqz v0, :cond_e

    .line 308
    if-nez v4, :cond_c

    .line 309
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 311
    :cond_c
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v5, v8, :cond_d

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    .line 312
    :cond_d
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->getDisplayCaption()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    .line 315
    :cond_e
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 210
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 211
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 213
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    .line 214
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->lastCaptionString:Ljava/lang/String;

    .line 215
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 216
    iput-byte v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 217
    iput-byte v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 218
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->captionString:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->lastCaptionString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method

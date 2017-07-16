.class public Lorg/telegram/messenger/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    }
.end annotation


# static fields
.field private static final LINES_PER_BLOCK:I = 0xa

.field public static final MESSAGE_SEND_STATE_SENDING:I = 0x1

.field public static final MESSAGE_SEND_STATE_SEND_ERROR:I = 0x2

.field public static final MESSAGE_SEND_STATE_SENT:I

.field public static urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field public attachPathExists:Z

.field public audioProgress:F

.field public audioProgressSec:I

.field public botButtonsLayout:Ljava/lang/StringBuilder;

.field public caption:Ljava/lang/CharSequence;

.field public contentType:I

.field public customReplyName:Ljava/lang/String;

.field public dateKey:Ljava/lang/String;

.field public deleted:Z

.field public forceUpdate:Z

.field private generatedWithMinSize:I

.field public hasRtl:Z

.field public isDateObject:Z

.field public lastLineWidth:I

.field private layoutCreated:Z

.field protected leftBound:I

.field public linkDescription:Ljava/lang/CharSequence;

.field public mediaExists:Z

.field public messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

.field public messageText:Ljava/lang/CharSequence;

.field public monthKey:Ljava/lang/String;

.field public photoThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public photoThumbs2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public replyMessageObject:Lorg/telegram/messenger/MessageObject;

.field public resendAsIs:Z

.field public textHeight:I

.field public textLayoutBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public textWidth:I

.field public textXOffset:F

.field public type:I

.field public useCustomPhoto:Z

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public viewsReloaded:Z

.field public wantedBotKeyboardWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V
    .locals 40
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p4, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v35, 0x3e8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->type:I

    .line 82
    const/16 v35, 0x34

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->leftBound:I

    .line 111
    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 116
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 119
    :cond_0
    const/16 v18, 0x0

    .line 120
    .local v18, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    if-lez v35, :cond_2

    .line 121
    if-eqz p2, :cond_1

    .line 122
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 124
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-nez v18, :cond_2

    .line 125
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 129
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v35, v0

    if-eqz v35, :cond_4d

    .line 130
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3

    .line 131
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_7

    .line 133
    const-string/jumbo v35, "ActionYouCreateGroup"

    const v36, 0x7f07003e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 419
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-nez v35, :cond_4

    .line 420
    const-string/jumbo v35, ""

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 423
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->setType()V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V

    .line 426
    new-instance v22, Ljava/util/GregorianCalendar;

    invoke-direct/range {v22 .. v22}, Ljava/util/GregorianCalendar;-><init>()V

    .line 427
    .local v22, "rightNow":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    move-object/from16 v0, v22

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 428
    const/16 v35, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 429
    .local v11, "dateDay":I
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 430
    .local v13, "dateYear":I
    const/16 v35, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 431
    .local v12, "dateMonth":I
    const-string/jumbo v35, "%d_%02d_%02d"

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    .line 432
    const-string/jumbo v35, "%d_%02d"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v35, v0

    if-gez v35, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-nez v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 435
    :cond_5
    new-instance v35, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/VideoEditedInfo;->parseString(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    .line 437
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 441
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 442
    if-eqz p4, :cond_60

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_5d

    .line 445
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 449
    .local v21, "paint":Landroid/text/TextPaint;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5e

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v15, v0, [I

    .line 450
    .local v15, "emojiOnly":[I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    const/high16 v37, 0x41a00000    # 20.0f

    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v15}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 451
    if-eqz v15, :cond_5f

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_5f

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_5f

    .line 454
    const/16 v35, 0x0

    aget v35, v15, v35

    packed-switch v35, :pswitch_data_0

    .line 465
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintThreeEmoji:Landroid/text/TextPaint;

    .line 466
    .local v16, "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41c00000    # 24.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 469
    .local v25, "size":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    check-cast v35, Landroid/text/Spannable;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    const-class v38, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface/range {v35 .. v38}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 470
    .local v27, "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    if-eqz v27, :cond_5f

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_5f

    .line 471
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_4
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v7, v0, :cond_5f

    .line 472
    aget-object v35, v27, v7

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 471
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 135
    .end local v7    # "a":I
    .end local v11    # "dateDay":I
    .end local v12    # "dateMonth":I
    .end local v13    # "dateYear":I
    .end local v15    # "emojiOnly":[I
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v21    # "paint":Landroid/text/TextPaint;
    .end local v22    # "rightNow":Ljava/util/Calendar;
    .end local v25    # "size":I
    .end local v27    # "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    :cond_7
    const-string/jumbo v35, "ActionCreateGroup"

    const v36, 0x7f070021

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 137
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v35, v0

    if-eqz v35, :cond_f

    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_9

    .line 140
    const-string/jumbo v35, "ActionYouLeftUser"

    const v36, 0x7f070040

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 142
    :cond_9
    const-string/jumbo v35, "ActionLeftUser"

    const v36, 0x7f070027

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 145
    :cond_a
    const/16 v34, 0x0

    .line 146
    .local v34, "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_b

    .line 147
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 149
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    if-nez v34, :cond_c

    .line 150
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 152
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_d

    .line 153
    const-string/jumbo v35, "ActionYouKickUser"

    const v36, 0x7f07003f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 154
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 155
    const-string/jumbo v35, "ActionKickUserYou"

    const v36, 0x7f070026

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 157
    :cond_e
    const-string/jumbo v35, "ActionKickUser"

    const v36, 0x7f070025

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 161
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v24, v0

    .line 163
    .local v24, "singleUserId":I
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 166
    :cond_10
    if-eqz v24, :cond_1c

    .line 167
    const/16 v34, 0x0

    .line 168
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_11

    .line 169
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 171
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    if-nez v34, :cond_12

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 174
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_17

    .line 175
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_13

    .line 176
    const-string/jumbo v35, "ChannelJoined"

    const v36, 0x7f070121

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 178
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_15

    .line 179
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    .line 180
    const-string/jumbo v35, "ChannelMegaJoined"

    const v36, 0x7f070126

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 182
    :cond_14
    const-string/jumbo v35, "ActionAddUserSelfMega"

    const v36, 0x7f070018

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 184
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_16

    .line 185
    const-string/jumbo v35, "ActionAddUserSelfYou"

    const v36, 0x7f070019

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 187
    :cond_16
    const-string/jumbo v35, "ActionAddUserSelf"

    const v36, 0x7f070017

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 191
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_18

    .line 192
    const-string/jumbo v35, "ActionYouAddUser"

    const v36, 0x7f07003b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 193
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    .line 194
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 195
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_19

    .line 196
    const-string/jumbo v35, "MegaAddedBy"

    const v36, 0x7f07036f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 198
    :cond_19
    const-string/jumbo v35, "ChannelAddedBy"

    const v36, 0x7f070108

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 201
    :cond_1a
    const-string/jumbo v35, "ActionAddUserYou"

    const v36, 0x7f07001a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 204
    :cond_1b
    const-string/jumbo v35, "ActionAddUser"

    const v36, 0x7f070016

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 209
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 210
    const-string/jumbo v35, "ActionYouAddUser"

    const v36, 0x7f07003b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 212
    :cond_1d
    const-string/jumbo v35, "ActionAddUser"

    const v36, 0x7f070016

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 216
    .end local v24    # "singleUserId":I
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 217
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 218
    const-string/jumbo v35, "ActionInviteYou"

    const v36, 0x7f070024

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 220
    :cond_1f
    const-string/jumbo v35, "ActionInviteUser"

    const v36, 0x7f070023

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 222
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_23

    .line 223
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_21

    .line 224
    const-string/jumbo v35, "ActionChannelChangedPhoto"

    const v36, 0x7f07001d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 226
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_22

    .line 227
    const-string/jumbo v35, "ActionYouChangedPhoto"

    const v36, 0x7f07003c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 229
    :cond_22
    const-string/jumbo v35, "ActionChangedPhoto"

    const v36, 0x7f07001b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 232
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v35, v0

    if-eqz v35, :cond_26

    .line 233
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_24

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_24

    .line 234
    const-string/jumbo v35, "ActionChannelChangedTitle"

    const v36, 0x7f07001e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 236
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_25

    .line 237
    const-string/jumbo v35, "ActionYouChangedTitle"

    const v36, 0x7f07003d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 239
    :cond_25
    const-string/jumbo v35, "ActionChangedTitle"

    const v36, 0x7f07001c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 242
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_29

    .line 243
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_27

    .line 244
    const-string/jumbo v35, "ActionChannelRemovedPhoto"

    const v36, 0x7f07001f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 246
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 247
    const-string/jumbo v35, "ActionYouRemovedPhoto"

    const v36, 0x7f070041

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 249
    :cond_28
    const-string/jumbo v35, "ActionRemovedPhoto"

    const v36, 0x7f070036

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 252
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    move/from16 v35, v0

    if-eqz v35, :cond_2d

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v35, v0

    if-eqz v35, :cond_2b

    .line 254
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_2a

    .line 255
    const-string/jumbo v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070388

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 257
    :cond_2a
    const-string/jumbo v35, "MessageLifetimeChanged"

    const v36, 0x7f070387

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 260
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_2c

    .line 261
    const-string/jumbo v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f07038a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 263
    :cond_2c
    const-string/jumbo v35, "MessageLifetimeRemoved"

    const v36, 0x7f070389

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 266
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v35, v0

    if-eqz v35, :cond_32

    .line 268
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v30, v36, v38

    .line 269
    .local v30, "time":J
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_30

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_30

    .line 270
    const-string/jumbo v35, "formatDateAtTime"

    const v36, 0x7f0706d0

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "date":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 275
    .local v29, "to_user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v29, :cond_2f

    .line 276
    if-eqz p2, :cond_2e

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v29, Lorg/telegram/tgnet/TLRPC$User;

    .line 279
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e
    if-nez v29, :cond_2f

    .line 280
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 283
    :cond_2f
    if-eqz v29, :cond_31

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    .line 284
    .local v20, "name":Ljava/lang/String;
    :goto_6
    const-string/jumbo v35, "NotificationUnrecognizedDevice"

    const v36, 0x7f070438

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v20, v37, v38

    const/16 v38, 0x1

    aput-object v10, v37, v38

    const/16 v38, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 272
    .end local v10    # "date":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_30
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "date":Ljava/lang/String;
    goto/16 :goto_5

    .line 283
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_31
    const-string/jumbo v20, ""

    goto :goto_6

    .line 285
    .end local v10    # "date":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v30    # "time":J
    :cond_32
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v35, v0

    if-eqz v35, :cond_33

    .line 286
    const-string/jumbo v35, "NotificationContactJoined"

    const v36, 0x7f070411

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 287
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_34

    .line 288
    const-string/jumbo v35, "NotificationContactNewPhoto"

    const v36, 0x7f070412

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 289
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v35, v0

    if-eqz v35, :cond_3a

    .line 290
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v35, v0

    if-eqz v35, :cond_36

    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_35

    .line 292
    const-string/jumbo v35, "ActionTakeScreenshootYou"

    const v36, 0x7f070038

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 294
    :cond_35
    const-string/jumbo v35, "ActionTakeScreenshoot"

    const v36, 0x7f070037

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 296
    :cond_36
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 297
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 298
    .local v8, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v35, v0

    if-eqz v35, :cond_38

    .line 299
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_37

    .line 300
    const-string/jumbo v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070388

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 302
    :cond_37
    const-string/jumbo v35, "MessageLifetimeChanged"

    const v36, 0x7f070387

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 305
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_39

    .line 306
    const-string/jumbo v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f07038a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 308
    :cond_39
    const-string/jumbo v35, "MessageLifetimeRemoved"

    const v36, 0x7f070389

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 312
    .end local v8    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    move/from16 v35, v0

    if-eqz v35, :cond_3b

    .line 313
    const-string/jumbo v35, "YouCreatedBroadcastList"

    const v36, 0x7f0706bc

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 314
    :cond_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_3d

    .line 315
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_3c

    .line 316
    const-string/jumbo v35, "ActionCreateMega"

    const v36, 0x7f070022

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 318
    :cond_3c
    const-string/jumbo v35, "ActionCreateChannel"

    const v36, 0x7f070020

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 320
    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v35, v0

    if-eqz v35, :cond_3e

    .line 321
    const-string/jumbo v35, "ActionMigrateFromGroup"

    const v36, 0x7f070028

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 322
    :cond_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v35, v0

    if-eqz v35, :cond_3f

    .line 323
    const-string/jumbo v35, "ActionMigrateFromGroup"

    const v36, 0x7f070028

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 324
    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v35, v0

    if-eqz v35, :cond_41

    .line 325
    if-nez v18, :cond_40

    if-eqz p3, :cond_40

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_0

    :cond_40
    const/16 v35, 0x0

    goto :goto_7

    .line 326
    :cond_41
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    move/from16 v35, v0

    if-eqz v35, :cond_42

    .line 327
    const-string/jumbo v35, "HistoryCleared"

    const v36, 0x7f0702d8

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 328
    :cond_42
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v35, v0

    if-eqz v35, :cond_43

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 330
    :cond_43
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    move/from16 v35, v0

    if-eqz v35, :cond_4a

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .line 332
    .local v9, "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    move/from16 v19, v0

    .line 333
    .local v19, "isMissed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_47

    .line 334
    if-eqz v19, :cond_46

    .line 335
    const-string/jumbo v35, "CallMessageOutgoingMissed"

    const v36, 0x7f0700e7

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 348
    :goto_8
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    if-lez v35, :cond_3

    .line 349
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/LocaleController;->formatCallDuration(I)Ljava/lang/String;

    move-result-object v14

    .line 350
    .local v14, "duration":Ljava/lang/String;
    const-string/jumbo v35, "CallMessageWithDuration"

    const v36, 0x7f0700e8

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v14, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "_messageText":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 353
    .local v28, "start":I
    const/16 v35, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    .line 354
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 355
    .local v26, "sp":Landroid/text/SpannableString;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v35

    add-int v17, v28, v35

    .line 356
    .local v17, "end":I
    if-lez v28, :cond_44

    add-int/lit8 v35, v28, -0x1

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x28

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_44

    .line 357
    add-int/lit8 v28, v28, -0x1

    .line 359
    :cond_44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_45

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x29

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_45

    .line 360
    add-int/lit8 v17, v17, 0x1

    .line 362
    :cond_45
    new-instance v35, Lorg/telegram/ui/Components/TypefaceSpan;

    sget-object v36, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct/range {v35 .. v36}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v36, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v28

    move/from16 v3, v17

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 363
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 337
    .end local v6    # "_messageText":Ljava/lang/String;
    .end local v14    # "duration":Ljava/lang/String;
    .end local v17    # "end":I
    .end local v26    # "sp":Landroid/text/SpannableString;
    .end local v28    # "start":I
    :cond_46
    const-string/jumbo v35, "CallMessageOutgoing"

    const v36, 0x7f0700e6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 340
    :cond_47
    if-eqz v19, :cond_48

    .line 341
    const-string/jumbo v35, "CallMessageIncomingMissed"

    const v36, 0x7f0700e5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 342
    :cond_48
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    move/from16 v35, v0

    if-eqz v35, :cond_49

    .line 343
    const-string/jumbo v35, "CallMessageIncomingDeclined"

    const v36, 0x7f0700e4

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 345
    :cond_49
    const-string/jumbo v35, "CallMessageIncoming"

    const v36, 0x7f0700e3

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 366
    .end local v9    # "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    .end local v19    # "isMissed":Z
    :cond_4a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 367
    const/16 v33, 0x0

    .line 368
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v32, v0

    .line 369
    .local v32, "uid":I
    if-eqz p2, :cond_4b

    .line 370
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 372
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4b
    if-nez v18, :cond_4c

    .line 373
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 375
    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 378
    .end local v32    # "uid":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v35

    if-nez v35, :cond_5c

    .line 379
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_4e

    .line 380
    const-string/jumbo v35, "AttachPhoto"

    const v36, 0x7f0700aa

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 381
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-eqz v35, :cond_4f

    .line 382
    const-string/jumbo v35, "AttachVideo"

    const v36, 0x7f0700ad

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 383
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v35

    if-eqz v35, :cond_50

    .line 384
    const-string/jumbo v35, "AttachAudio"

    const v36, 0x7f0700a1

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 385
    :cond_50
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v35, v0

    if-nez v35, :cond_51

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v35, v0

    if-eqz v35, :cond_52

    .line 386
    :cond_51
    const-string/jumbo v35, "AttachLocation"

    const v36, 0x7f0700a8

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 387
    :cond_52
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v35, v0

    if-eqz v35, :cond_53

    .line 388
    const-string/jumbo v35, "AttachContact"

    const v36, 0x7f0700a4

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 389
    :cond_53
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_54

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 391
    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move/from16 v35, v0

    if-eqz v35, :cond_55

    .line 392
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 393
    :cond_55
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    move/from16 v35, v0

    if-eqz v35, :cond_56

    .line 394
    const-string/jumbo v35, "UnsupportedMedia"

    const v36, 0x7f070651

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 395
    :cond_56
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v35, v0

    if-eqz v35, :cond_3

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v35

    if-eqz v35, :cond_58

    .line 397
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getStrickerChar()Ljava/lang/String;

    move-result-object v23

    .line 398
    .local v23, "sch":Ljava/lang/String;
    if-eqz v23, :cond_57

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_57

    .line 399
    const-string/jumbo v35, "%s %s"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v23, v36, v37

    const/16 v37, 0x1

    const-string/jumbo v38, "AttachSticker"

    const v39, 0x7f0700ab

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 401
    :cond_57
    const-string/jumbo v35, "AttachSticker"

    const v36, 0x7f0700ab

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 403
    .end local v23    # "sch":Ljava/lang/String;
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v35

    if-eqz v35, :cond_59

    .line 404
    const-string/jumbo v35, "AttachMusic"

    const v36, 0x7f0700a9

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 405
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v35

    if-eqz v35, :cond_5a

    .line 406
    const-string/jumbo v35, "AttachGif"

    const v36, 0x7f0700a7

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 408
    :cond_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v20

    .line 409
    .restart local v20    # "name":Ljava/lang/String;
    if-eqz v20, :cond_5b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_5b

    .line 410
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 412
    :cond_5b
    const-string/jumbo v35, "AttachDocument"

    const v36, 0x7f0700a5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 417
    .end local v20    # "name":Ljava/lang/String;
    :cond_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 447
    .restart local v11    # "dateDay":I
    .restart local v12    # "dateMonth":I
    .restart local v13    # "dateYear":I
    .restart local v22    # "rightNow":Ljava/util/Calendar;
    :cond_5d
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v21    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_1

    .line 449
    :cond_5e
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 456
    .restart local v15    # "emojiOnly":[I
    :pswitch_0
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintOneEmoji:Landroid/text/TextPaint;

    .line 457
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x42000000    # 32.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 458
    .restart local v25    # "size":I
    goto/16 :goto_3

    .line 460
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :pswitch_1
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintTwoEmoji:Landroid/text/TextPaint;

    .line 461
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41e00000    # 28.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 462
    .restart local v25    # "size":I
    goto/16 :goto_3

    .line 476
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :cond_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 478
    .end local v15    # "emojiOnly":[I
    .end local v21    # "paint":Landroid/text/TextPaint;
    :cond_60
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 479
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 481
    return-void

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    .locals 1
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 108
    return-void
.end method

.method public static addLinks(ZLjava/lang/CharSequence;)V
    .locals 1
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1133
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;Z)V

    .line 1134
    return-void
.end method

.method public static addLinks(ZLjava/lang/CharSequence;Z)V
    .locals 4
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    .line 1137
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 1140
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    .line 1153
    :cond_0
    return-void

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1147
    :catch_1
    move-exception v1

    .line 1148
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V
    .locals 9
    .param p0, "isOut"    # Z
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    const/16 v8, 0x2f

    .line 1104
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v6, :cond_0

    .line 1105
    const-string/jumbo v6, "(^|\\s)/[a-zA-Z@\\d_]{1,255}|(^|\\s)@[a-zA-Z\\d_]{1,32}|(^|\\s)#[\\w\\.]+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    .line 1107
    :cond_0
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1108
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1109
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 1110
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1111
    .local v2, "end":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_2

    .line 1112
    add-int/lit8 v4, v4, 0x1

    .line 1114
    :cond_2
    const/4 v5, 0x0

    .line 1115
    .local v5, "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_5

    .line 1116
    if-eqz p2, :cond_3

    .line 1117
    new-instance v5, Lorg/telegram/ui/Components/URLSpanBotCommand;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    .line 1122
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_3
    :goto_1
    if-eqz v5, :cond_1

    .line 1123
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    .end local v2    # "end":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "start":I
    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1129
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 1120
    .restart local v2    # "end":I
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v4    # "start":I
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_5
    :try_start_1
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    goto :goto_1
.end method

.method public static canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2046
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v0

    .line 2049
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_2

    .line 2050
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2052
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2053
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v2, v0, :cond_3

    move v0, v1

    .line 2054
    goto :goto_0

    .line 2056
    :cond_3
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_0

    .line 2058
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_7

    .line 2059
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_0

    .line 2070
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 2062
    :cond_7
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    if-eqz v2, :cond_8

    .line 2063
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v2, :cond_4

    goto :goto_0

    .line 2067
    :cond_8
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_9

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gtz v2, :cond_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public static canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2007
    if-eqz p0, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_2

    .line 2038
    :cond_1
    :goto_0
    return v1

    .line 2010
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v1, v0

    .line 2011
    goto :goto_0

    .line 2013
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    if-gt v2, v3, :cond_1

    .line 2016
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_8

    .line 2017
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_7

    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_5

    .line 2018
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_7

    :cond_6
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    .line 2023
    :cond_8
    if-nez p1, :cond_9

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_9

    .line 2024
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2025
    if-eqz p1, :cond_1

    .line 2029
    :cond_9
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_c

    :cond_a
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_b

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_b
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_1

    .line 2030
    :cond_c
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_d

    .line 2031
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_1

    :cond_e
    move v1, v0

    .line 2035
    goto/16 :goto_0
.end method

.method private static containsUrls(Ljava/lang/CharSequence;)Z
    .locals 14
    .param p0, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v13, 0x2e

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/16 v11, 0x20

    const/4 v7, 0x1

    .line 1003
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v12, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x5000

    if-le v9, v10, :cond_2

    :cond_0
    move v7, v8

    .line 1059
    :cond_1
    :goto_0
    return v7

    .line 1007
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1009
    .local v5, "length":I
    const/4 v1, 0x0

    .line 1010
    .local v1, "digitsInRow":I
    const/4 v6, 0x0

    .line 1011
    .local v6, "schemeSequence":I
    const/4 v2, 0x0

    .line 1013
    .local v2, "dotSequence":I
    const/4 v4, 0x0

    .line 1015
    .local v4, "lastChar":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_10

    .line 1016
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1018
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_7

    const/16 v9, 0x39

    if-gt v0, v9, :cond_7

    .line 1019
    add-int/lit8 v1, v1, 0x1

    .line 1020
    const/4 v9, 0x6

    if-ge v1, v9, :cond_1

    .line 1023
    const/4 v6, 0x0

    .line 1024
    const/4 v2, 0x0

    .line 1028
    :cond_3
    :goto_2
    const/16 v9, 0x40

    if-eq v0, v9, :cond_4

    const/16 v9, 0x23

    if-eq v0, v9, :cond_4

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_5

    :cond_4
    if-eqz v3, :cond_1

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_1

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 1031
    :cond_6
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_a

    .line 1032
    if-nez v6, :cond_9

    .line 1033
    const/4 v6, 0x1

    .line 1057
    :goto_3
    move v4, v0

    .line 1015
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1025
    :cond_7
    if-eq v0, v11, :cond_8

    if-gtz v1, :cond_3

    .line 1026
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1035
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 1037
    :cond_a
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_c

    .line 1038
    if-eq v6, v12, :cond_1

    .line 1041
    if-ne v6, v7, :cond_b

    .line 1042
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1044
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 1046
    :cond_c
    if-ne v0, v13, :cond_e

    .line 1047
    if-nez v2, :cond_d

    if-eq v4, v11, :cond_d

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1050
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 1052
    :cond_e
    if-eq v0, v11, :cond_f

    if-ne v4, v13, :cond_f

    if-eq v2, v7, :cond_1

    .line 1055
    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .end local v0    # "c":C
    :cond_10
    move v7, v8

    .line 1059
    goto :goto_0
.end method

.method public static getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1520
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-gez v0, :cond_1

    .line 1523
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1535
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    return-wide v0

    .line 1525
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 1527
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_3

    .line 1528
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 1529
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1530
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    .line 1532
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0
.end method

.method public static getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x0

    .line 1718
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .line 1719
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1720
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_0

    .line 1721
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-eqz v2, :cond_2

    .line 1728
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    :goto_0
    return-object v1

    .line 1724
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_0
.end method

.method public static getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, "flags":I
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    if-nez v1, :cond_0

    .line 1465
    or-int/lit8 v0, v0, 0x1

    .line 1467
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-nez v1, :cond_1

    .line 1468
    or-int/lit8 v0, v0, 0x2

    .line 1470
    :cond_1
    return v0
.end method

.method public static isContentUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1500
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public static isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1987
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1710
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    return v0
.end method

.method public static isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 2
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 736
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1618
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1714
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    return v0
.end method

.method public static isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1590
    if-eqz p0, :cond_1

    .line 1591
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1592
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1593
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask:Z

    if-eqz v2, :cond_0

    .line 1594
    const/4 v2, 0x1

    .line 1598
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 1591
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1674
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1999
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1508
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v2, 0x0

    .line 1626
    if-eqz p0, :cond_0

    .line 1627
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1628
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1629
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 1630
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1634
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    return v2

    .line 1627
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1678
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1681
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 8
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 761
    if-eqz p0, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 762
    const/4 v4, 0x0

    .line 763
    .local v4, "width":I
    const/4 v3, 0x0

    .line 764
    .local v3, "height":I
    const/4 v1, 0x0

    .line 765
    .local v1, "animated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 766
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 767
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_1

    .line 768
    const/4 v1, 0x1

    .line 765
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_1
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_0

    .line 770
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 771
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_1

    .line 774
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    if-eqz v1, :cond_3

    if-gt v4, v7, :cond_3

    if-gt v3, v7, :cond_3

    .line 775
    const/4 v5, 0x1

    .line 778
    .end local v0    # "a":I
    .end local v1    # "animated":Z
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1696
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1699
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1512
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public static isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1578
    if-eqz p0, :cond_1

    .line 1579
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1580
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1581
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 1582
    const/4 v2, 0x1

    .line 1586
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 1579
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1670
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1496
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public static isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 9
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v8, 0x500

    const/4 v6, 0x0

    .line 1638
    if-eqz p0, :cond_5

    .line 1639
    const/4 v3, 0x0

    .line 1640
    .local v3, "isAnimated":Z
    const/4 v4, 0x0

    .line 1641
    .local v4, "isVideo":Z
    const/4 v5, 0x0

    .line 1642
    .local v5, "width":I
    const/4 v2, 0x0

    .line 1644
    .local v2, "height":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1645
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1646
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v7, :cond_1

    .line 1647
    const/4 v4, 0x1

    .line 1648
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1649
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 1644
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1650
    :cond_1
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v7, :cond_0

    .line 1651
    const/4 v3, 0x1

    goto :goto_1

    .line 1654
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    if-eqz v3, :cond_4

    if-gt v5, v8, :cond_3

    if-le v2, v8, :cond_4

    .line 1655
    :cond_3
    const/4 v3, 0x0

    .line 1657
    :cond_4
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    const/4 v6, 0x1

    .line 1659
    .end local v0    # "a":I
    .end local v2    # "height":I
    .end local v3    # "isAnimated":Z
    .end local v4    # "isVideo":Z
    .end local v5    # "width":I
    :cond_5
    return v6
.end method

.method public static isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1703
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1706
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1685
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1622
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1602
    if-eqz p0, :cond_1

    .line 1603
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1604
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1605
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v2, :cond_0

    .line 1606
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 1610
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return v2

    .line 1603
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1610
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1689
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1692
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 8
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 740
    if-eqz p0, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 741
    const/4 v4, 0x0

    .line 742
    .local v4, "width":I
    const/4 v3, 0x0

    .line 743
    .local v3, "height":I
    const/4 v1, 0x0

    .line 744
    .local v1, "animated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 745
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 746
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_1

    .line 747
    const/4 v1, 0x1

    .line 744
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_1
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_0

    .line 749
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 750
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_1

    .line 753
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    if-eqz v1, :cond_3

    if-gt v4, v7, :cond_3

    if-gt v3, v7, :cond_3

    .line 754
    const/4 v5, 0x1

    .line 757
    .end local v0    # "a":I
    .end local v1    # "animated":Z
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .locals 2
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1614
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 3
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1491
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1492
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1493
    return-void

    :cond_0
    move v0, v2

    .line 1491
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1492
    goto :goto_1
.end method


# virtual methods
.method public applyNewText()V
    .locals 6

    .prologue
    .line 484
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 491
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 493
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_2

    .line 494
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 498
    .local v1, "paint":Landroid/text/TextPaint;
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 499
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 496
    .end local v1    # "paint":Landroid/text/TextPaint;
    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v1    # "paint":Landroid/text/TextPaint;
    goto :goto_1
.end method

.method public canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 2042
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 2003
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public checkLayout()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 693
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 718
    :goto_0
    return v3

    .line 696
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-eqz v5, :cond_2

    .line 697
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    .line 698
    .local v1, "newMinSize":I
    :goto_1
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 699
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 702
    .end local v1    # "newMinSize":I
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-nez v5, :cond_6

    .line 703
    iput-boolean v3, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 706
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 709
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_5

    .line 710
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 714
    .local v2, "paint":Landroid/text/TextPaint;
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v6, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 715
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 697
    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_4
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 712
    .restart local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_2

    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_6
    move v3, v4

    .line 718
    goto :goto_0
.end method

.method public checkMediaExistance()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2091
    const/4 v0, 0x0

    .line 2092
    .local v0, "cacheFile":Ljava/io/File;
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2093
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2094
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v6, :cond_1

    .line 2095
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2096
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_0

    .line 2097
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2121
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_4

    .line 2100
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2101
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2102
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2104
    .end local v3    # "f":Ljava/io/File;
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez v4, :cond_0

    .line 2105
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_0

    .line 2108
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 2109
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v2, :cond_5

    .line 2110
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_0

    .line 2111
    :cond_5
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_0

    .line 2112
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2113
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_0

    .line 2116
    if-eqz v1, :cond_0

    .line 2117
    invoke-static {v1, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_0
.end method

.method public generateCaption()V
    .locals 5

    .prologue
    .line 1086
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1090
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 1091
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 7
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 503
    if-nez p1, :cond_0

    .line 504
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_0

    .line 505
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 508
    :cond_0
    const/4 v0, 0x0

    .line 509
    .local v0, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 512
    :cond_1
    if-nez v0, :cond_3

    .line 513
    if-eqz p1, :cond_2

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 514
    const-string/jumbo v1, "ActionYouScored"

    const v2, 0x7f070042

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 526
    :goto_0
    return-void

    .line 516
    :cond_2
    const-string/jumbo v1, "ActionUserScored"

    const v2, 0x7f070039

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 519
    :cond_3
    if-eqz p1, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 520
    const-string/jumbo v1, "ActionYouScoredInGame"

    const v2, 0x7f070043

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 524
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const-string/jumbo v2, "un2"

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 522
    :cond_4
    const-string/jumbo v1, "ActionUserScoredInGame"

    const v2, 0x7f07003a

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 47
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1156
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    .line 1161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 1162
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v3, :cond_8

    .line 1166
    const/16 v25, 0x0

    .line 1167
    .local v25, "hasEntities":Z
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-nez v3, :cond_7

    .line 1169
    const/16 v25, 0x1

    .line 1177
    .end local v16    # "a":I
    :cond_2
    :goto_2
    if-nez v25, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v3, :cond_4

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v3, :cond_a

    :cond_4
    const/16 v46, 0x1

    .line 1189
    .local v46, "useManualParse":Z
    :goto_3
    if-eqz v46, :cond_b

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3, v6}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 1201
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1f

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    check-cast v40, Landroid/text/Spannable;

    .line 1203
    .local v40, "spannable":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1204
    .local v20, "count":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/text/style/URLSpan;

    .line 1205
    .local v41, "spans":[Landroid/text/style/URLSpan;
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1207
    .local v24, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v3, :cond_6

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v3, :cond_6

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_c

    .line 1205
    :cond_6
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1167
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v46    # "useManualParse":Z
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1174
    .end local v16    # "a":I
    .end local v25    # "hasEntities":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v25, 0x1

    .restart local v25    # "hasEntities":Z
    :goto_7
    goto/16 :goto_2

    .end local v25    # "hasEntities":Z
    :cond_9
    const/16 v25, 0x0

    goto :goto_7

    .line 1186
    .restart local v25    # "hasEntities":Z
    :cond_a
    const/16 v46, 0x0

    goto/16 :goto_3

    .line 1192
    .restart local v46    # "useManualParse":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v6, 0xc8

    if-ge v3, v6, :cond_5

    .line 1194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    const/4 v6, 0x4

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1195
    :catch_0
    move-exception v22

    .line 1196
    .local v22, "e":Ljava/lang/Throwable;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1209
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v16    # "a":I
    .restart local v20    # "count":I
    .restart local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v40    # "spannable":Landroid/text/Spannable;
    .restart local v41    # "spans":[Landroid/text/style/URLSpan;
    :cond_c
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_d

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v24

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1212
    :cond_d
    if-eqz v41, :cond_12

    move-object/from16 v0, v41

    array-length v3, v0

    if-lez v3, :cond_12

    .line 1213
    const/16 v17, 0x0

    .local v17, "b":I
    :goto_8
    move-object/from16 v0, v41

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 1214
    aget-object v3, v41, v17

    if-nez v3, :cond_f

    .line 1213
    :cond_e
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1217
    :cond_f
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v42

    .line 1218
    .local v42, "start":I
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v23

    .line 1219
    .local v23, "end":I
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v42

    if-gt v3, v0, :cond_10

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v42

    if-ge v3, v0, :cond_11

    :cond_10
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_e

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    .line 1220
    :cond_11
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1221
    const/4 v3, 0x0

    aput-object v3, v41, v17

    goto :goto_9

    .line 1225
    .end local v17    # "b":I
    .end local v23    # "end":I
    .end local v42    # "start":I
    :cond_12
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v3, :cond_13

    .line 1226
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1227
    :cond_13
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v3, :cond_14

    .line 1228
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v6, "fonts/ritalic.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1229
    :cond_14
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-nez v3, :cond_15

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v3, :cond_16

    .line 1230
    :cond_15
    new-instance v3, Lorg/telegram/ui/Components/URLSpanMono;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    move-object/from16 v0, v40

    invoke-direct {v3, v0, v6, v7, v10}, Lorg/telegram/ui/Components/URLSpanMono;-><init>(Ljava/lang/CharSequence;IIZ)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1231
    :cond_16
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_17

    .line 1232
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1233
    :cond_17
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_18

    .line 1234
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1235
    :cond_18
    if-nez v46, :cond_6

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 1237
    .local v45, "url":Ljava/lang/String;
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;

    if-eqz v3, :cond_19

    .line 1238
    new-instance v3, Lorg/telegram/ui/Components/URLSpanBotCommand;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    move-object/from16 v0, v45

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1239
    :cond_19
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;

    if-nez v3, :cond_1a

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    if-eqz v3, :cond_1b

    .line 1240
    :cond_1a
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1241
    :cond_1b
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v3, :cond_1c

    .line 1242
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1243
    :cond_1c
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v3, :cond_1e

    .line 1244
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1245
    new-instance v3, Landroid/text/style/URLSpan;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1247
    :cond_1d
    new-instance v3, Landroid/text/style/URLSpan;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1249
    :cond_1e
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v3, :cond_6

    .line 1250
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 1257
    .end local v16    # "a":I
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v45    # "url":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_21

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_22

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-gtz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-lez v3, :cond_24

    :cond_23
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    if-eqz v3, :cond_24

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_30

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    if-eqz v3, :cond_30

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_30

    :cond_25
    const/16 v38, 0x1

    .line 1261
    .local v38, "needShare":Z
    :goto_a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v3

    :goto_b
    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    .line 1262
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    if-eqz v38, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->leftBound:I

    add-int/lit8 v3, v3, 0x46

    int-to-float v3, v3

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v5, v6, v3

    .line 1263
    .local v5, "maxWidth":I
    if-eqz p1, :cond_26

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_28

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v3

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v3, :cond_29

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_29

    .line 1264
    :cond_28
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1266
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_2a

    .line 1267
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1273
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_33

    .line 1274
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 1280
    .local v4, "paint":Landroid/text/TextPaint;
    :goto_d
    :try_start_1
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1286
    .local v2, "textLayout":Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    .line 1287
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v33

    .line 1289
    .local v33, "linesCount":I
    move/from16 v0, v33

    int-to-float v3, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v19, v0

    .line 1290
    .local v19, "blocksCount":I
    const/16 v36, 0x0

    .line 1291
    .local v36, "linesOffset":I
    const/16 v39, 0x0

    .line 1293
    .local v39, "prevOffset":F
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_e
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1294
    const/16 v3, 0xa

    sub-int v6, v33, v36

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1295
    .local v21, "currentBlockLinesCount":I
    new-instance v18, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 1297
    .local v18, "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_34

    .line 1298
    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1299
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1300
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1301
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1332
    :cond_2b
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    :try_start_2
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v28

    .line 1337
    .local v28, "lastLeft":F
    if-nez v16, :cond_2c

    .line 1338
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1350
    :cond_2c
    :goto_10
    :try_start_3
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v29

    .line 1356
    .local v29, "lastLine":F
    :goto_11
    move/from16 v0, v29

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v34, v0

    .line 1360
    .local v34, "linesMaxWidth":I
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2d

    .line 1361
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1364
    :cond_2d
    add-float v3, v29, v28

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v30, v0

    .local v30, "lastLineWidthWithLeft":I
    move/from16 v35, v30

    .line 1366
    .local v35, "linesMaxWidthWithLeft":I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_3c

    .line 1367
    const/16 v26, 0x0

    .line 1368
    .local v26, "hasNonRTL":Z
    const/16 v43, 0x0

    .local v43, "textRealMaxWidth":F
    const/16 v44, 0x0

    .line 1369
    .local v44, "textRealMaxWidthWithLeft":F
    const/16 v37, 0x0

    .local v37, "n":I
    :goto_12
    move/from16 v0, v37

    move/from16 v1, v21

    if-ge v0, v1, :cond_39

    .line 1371
    :try_start_4
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v32

    .line 1377
    .local v32, "lineWidth":F
    :goto_13
    add-int/lit8 v3, v5, 0x14

    int-to-float v3, v3

    cmpl-float v3, v32, v3

    if-lez v3, :cond_2e

    .line 1378
    int-to-float v0, v5

    move/from16 v32, v0

    .line 1382
    :cond_2e
    :try_start_5
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v31

    .line 1388
    .local v31, "lineLeft":F
    :goto_14
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-lez v3, :cond_38

    .line 1389
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v31

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1390
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1391
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1397
    :goto_15
    if-nez v26, :cond_2f

    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-nez v3, :cond_2f

    :try_start_6
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2f

    .line 1398
    const/16 v26, 0x1

    .line 1404
    :cond_2f
    :goto_16
    move/from16 v0, v43

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v43

    .line 1405
    add-float v3, v32, v31

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v44

    .line 1406
    move/from16 v0, v32

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v34

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 1407
    add-float v3, v32, v31

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1369
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_12

    .line 1259
    .end local v2    # "textLayout":Landroid/text/StaticLayout;
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v5    # "maxWidth":I
    .end local v16    # "a":I
    .end local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .end local v19    # "blocksCount":I
    .end local v21    # "currentBlockLinesCount":I
    .end local v26    # "hasNonRTL":Z
    .end local v28    # "lastLeft":F
    .end local v29    # "lastLine":F
    .end local v30    # "lastLineWidthWithLeft":I
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    .end local v33    # "linesCount":I
    .end local v34    # "linesMaxWidth":I
    .end local v35    # "linesMaxWidthWithLeft":I
    .end local v36    # "linesOffset":I
    .end local v37    # "n":I
    .end local v38    # "needShare":Z
    .end local v39    # "prevOffset":F
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_30
    const/16 v38, 0x0

    goto/16 :goto_a

    .line 1261
    .restart local v38    # "needShare":Z
    :cond_31
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_b

    .line 1262
    :cond_32
    const/high16 v3, 0x42a00000    # 80.0f

    goto/16 :goto_c

    .line 1276
    .restart local v5    # "maxWidth":I
    :cond_33
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v4    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_d

    .line 1281
    :catch_1
    move-exception v22

    .line 1282
    .local v22, "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1303
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v2    # "textLayout":Landroid/text/StaticLayout;
    .restart local v16    # "a":I
    .restart local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .restart local v19    # "blocksCount":I
    .restart local v21    # "currentBlockLinesCount":I
    .restart local v33    # "linesCount":I
    .restart local v36    # "linesOffset":I
    .restart local v39    # "prevOffset":F
    :cond_34
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 1304
    .local v8, "startCharacter":I
    add-int v3, v36, v21

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v9

    .line 1305
    .local v9, "endCharacter":I
    if-ge v9, v8, :cond_35

    .line 1293
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    :goto_17
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 1308
    .restart local v8    # "startCharacter":I
    .restart local v9    # "endCharacter":I
    :cond_35
    move-object/from16 v0, v18

    iput v8, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1309
    move-object/from16 v0, v18

    iput v9, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 1311
    :try_start_7
    new-instance v6, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v18

    iput-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1312
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1313
    if-eqz v16, :cond_36

    .line 1314
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    sub-float v3, v3, v39

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1316
    :cond_36
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1317
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move/from16 v39, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1322
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2b

    .line 1323
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1325
    :try_start_8
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_f

    .line 1326
    :catch_2
    move-exception v22

    .line 1327
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1318
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v22

    .line 1319
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1340
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v22

    .line 1341
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v28, 0x0

    .line 1342
    .restart local v28    # "lastLeft":F
    if-nez v16, :cond_37

    .line 1343
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1345
    :cond_37
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1351
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v22

    .line 1352
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v29, 0x0

    .line 1353
    .restart local v29    # "lastLine":F
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1372
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v26    # "hasNonRTL":Z
    .restart local v30    # "lastLineWidthWithLeft":I
    .restart local v34    # "linesMaxWidth":I
    .restart local v35    # "linesMaxWidthWithLeft":I
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :catch_6
    move-exception v22

    .line 1373
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1374
    const/16 v32, 0x0

    .restart local v32    # "lineWidth":F
    goto/16 :goto_13

    .line 1383
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v22

    .line 1384
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1385
    const/16 v31, 0x0

    .restart local v31    # "lineLeft":F
    goto/16 :goto_14

    .line 1393
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_38
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto/16 :goto_15

    .line 1400
    :catch_8
    move-exception v27

    .line 1401
    .local v27, "ignore":Ljava/lang/Exception;
    const/16 v26, 0x1

    goto/16 :goto_16

    .line 1409
    .end local v27    # "ignore":Ljava/lang/Exception;
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    :cond_39
    if-eqz v26, :cond_3b

    .line 1410
    move/from16 v43, v44

    .line 1411
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3a

    .line 1412
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1417
    :cond_3a
    :goto_18
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v43

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1430
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :goto_19
    add-int v36, v36, v21

    goto/16 :goto_17

    .line 1414
    .restart local v26    # "hasNonRTL":Z
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :cond_3b
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3a

    .line 1415
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    goto :goto_18

    .line 1419
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_3c
    const/4 v3, 0x0

    cmpl-float v3, v28, v3

    if-lez v3, :cond_3e

    .line 1420
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v28

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1421
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_3d

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1422
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1427
    :goto_1b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    goto :goto_19

    .line 1421
    :cond_3d
    const/4 v3, 0x0

    goto :goto_1a

    .line 1424
    :cond_3e
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_1b
.end method

.method public generateLinkDescription()V
    .locals 5

    .prologue
    .line 1063
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1067
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    .line 1073
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1076
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1068
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1069
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1070
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1071
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 11
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 529
    if-nez p1, :cond_0

    .line 530
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 533
    :cond_0
    if-eqz p1, :cond_1

    .line 534
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2

    .line 539
    const-string/jumbo v1, "PaymentSuccessfullyPaid"

    const v2, 0x7f0704b9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 543
    :goto_1
    return-void

    .line 536
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 541
    :cond_2
    const-string/jumbo v1, "PaymentSuccessfullyPaidNoItem"

    const v2, 0x7f0704ba

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const v5, 0x7f070030

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    .line 546
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 547
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_0

    .line 548
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 554
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_3

    .line 555
    const-string/jumbo v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_2

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 589
    :goto_1
    return-void

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    move-object p1, p2

    .line 555
    goto :goto_0

    .line 557
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    const-string/jumbo v1, "ActionPinnedMusic"

    const v2, 0x7f07002f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_4

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    move-object p1, p2

    goto :goto_2

    .line 559
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 560
    const-string/jumbo v1, "ActionPinnedVideo"

    const v2, 0x7f070034

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_6

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_3
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-object p1, p2

    goto :goto_3

    .line 561
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 562
    const-string/jumbo v1, "ActionPinnedGif"

    const v2, 0x7f07002e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_8

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_4
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    move-object p1, p2

    goto :goto_4

    .line 563
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 564
    const-string/jumbo v1, "ActionPinnedVoice"

    const v2, 0x7f070035

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_a

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_5
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    move-object p1, p2

    goto :goto_5

    .line 565
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 566
    const-string/jumbo v1, "ActionPinnedSticker"

    const v2, 0x7f070032

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_c

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_6
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    move-object p1, p2

    goto :goto_6

    .line 567
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_f

    .line 568
    const-string/jumbo v1, "ActionPinnedFile"

    const v2, 0x7f07002b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_e

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_7
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    move-object p1, p2

    goto :goto_7

    .line 569
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v1, :cond_11

    .line 570
    const-string/jumbo v1, "ActionPinnedGeo"

    const v2, 0x7f07002d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_10

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_8
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    move-object p1, p2

    goto :goto_8

    .line 571
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_13

    .line 572
    const-string/jumbo v1, "ActionPinnedContact"

    const v2, 0x7f07002a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_12

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_9
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    move-object p1, p2

    goto :goto_9

    .line 573
    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_15

    .line 574
    const-string/jumbo v1, "ActionPinnedPhoto"

    const v2, 0x7f070031

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_14

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_a
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    move-object p1, p2

    goto :goto_a

    .line 575
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_17

    .line 576
    const-string/jumbo v1, "ActionPinnedGame"

    const v2, 0x7f07002c

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\ud83c\udfae "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_16

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_b
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 577
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    move-object p1, p2

    .line 576
    goto :goto_b

    .line 578
    :cond_17
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 579
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 580
    .local v0, "mess":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_18

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    :cond_18
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 584
    const-string/jumbo v1, "ActionPinnedText"

    const v2, 0x7f070033

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_19

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_c
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_19
    move-object p1, p2

    goto :goto_c

    .line 586
    .end local v0    # "mess":Ljava/lang/CharSequence;
    :cond_1a
    const-string/jumbo v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    if-eqz p1, :cond_1b

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_d
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1b
    move-object p1, p2

    goto :goto_d
.end method

.method public generateThumbs(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    const/4 v5, 0x0

    .line 782
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v4, :cond_5

    .line 783
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-eqz v4, :cond_0

    .line 784
    if-nez p1, :cond_1

    .line 785
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 787
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 788
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 789
    .local v2, "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 790
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 791
    .local v3, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_3

    .line 789
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 794
    :cond_3
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 787
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 802
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_0

    .line 803
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_b

    .line 804
    if-eqz p1, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 805
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 806
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 807
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 808
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 809
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 810
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 811
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_9

    .line 809
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 814
    :cond_9
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 815
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 807
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 821
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_d

    .line 822
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_0

    .line 823
    if-nez p1, :cond_c

    .line 824
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 825
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 826
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_0

    .line 827
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 828
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 829
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 830
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto/16 :goto_0

    .line 833
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_16

    .line 834
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_e

    .line 835
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_e

    .line 836
    if-nez p1, :cond_11

    .line 837
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 838
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_e
    :goto_5
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_10

    .line 846
    if-eqz p1, :cond_f

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    .line 847
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    .line 864
    :cond_10
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 865
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 866
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 839
    :cond_11
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_e

    .line 840
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 841
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_5

    .line 848
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_12
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 849
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_6
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_10

    .line 850
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 851
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_7
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_15

    .line 852
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 853
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_14

    .line 851
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 856
    :cond_14
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 857
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 849
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 868
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_16
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_0

    .line 869
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1c

    .line 870
    if-eqz p1, :cond_17

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_18

    .line 871
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 872
    :cond_18
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 873
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 874
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 875
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_9
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b

    .line 876
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 877
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_1a

    .line 875
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 880
    :cond_1a
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 881
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 873
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 887
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1c
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_0

    .line 888
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_0

    .line 889
    if-nez p1, :cond_1d

    .line 890
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 891
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 892
    :cond_1d
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_0

    .line 893
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 894
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method public getApproximateHeight()I
    .locals 11

    .prologue
    .line 1743
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v9, :cond_2

    .line 1744
    iget v10, p0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v9, :cond_1

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_0
    add-int v3, v10, v9

    .line 1745
    .local v3, "height":I
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1746
    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 1830
    .end local v3    # "height":I
    :cond_0
    :goto_1
    return v3

    .line 1744
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1749
    :cond_2
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1750
    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1751
    :cond_3
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xc

    if-ne v9, v10, :cond_4

    .line 1752
    const/high16 v9, 0x428e0000    # 71.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1753
    :cond_4
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_5

    .line 1754
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1755
    :cond_5
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 1756
    const/high16 v9, 0x42e40000    # 114.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1757
    :cond_6
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_7

    .line 1758
    const/high16 v9, 0x42a40000    # 82.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1759
    :cond_7
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_8

    .line 1760
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1761
    :cond_8
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_9

    .line 1762
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 1763
    :cond_9
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_10

    .line 1764
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float v4, v9, v10

    .line 1766
    .local v4, "maxHeight":F
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1767
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .line 1771
    .local v5, "maxWidth":F
    :goto_2
    const/4 v6, 0x0

    .line 1772
    .local v6, "photoHeight":I
    const/4 v7, 0x0

    .line 1773
    .local v7, "photoWidth":I
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1774
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v10, :cond_a

    .line 1775
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1776
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 1780
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b
    if-nez v7, :cond_c

    .line 1781
    float-to-int v6, v4

    .line 1782
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v7, v6, v9

    .line 1784
    :cond_c
    int-to-float v9, v6

    cmpl-float v9, v9, v4

    if-lez v9, :cond_d

    .line 1785
    int-to-float v9, v7

    int-to-float v10, v6

    div-float v10, v4, v10

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1786
    float-to-int v6, v4

    .line 1788
    :cond_d
    int-to-float v9, v7

    cmpl-float v9, v9, v5

    if-lez v9, :cond_e

    .line 1789
    int-to-float v9, v6

    int-to-float v10, v7

    div-float v10, v5, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1791
    :cond_e
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_1

    .line 1769
    .end local v5    # "maxWidth":F
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_f
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .restart local v5    # "maxWidth":F
    goto :goto_2

    .line 1796
    .end local v4    # "maxHeight":F
    .end local v5    # "maxWidth":F
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1797
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1801
    .restart local v7    # "photoWidth":I
    :goto_3
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v6, v7, v9

    .line 1802
    .restart local v6    # "photoHeight":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v7, v9, :cond_11

    .line 1803
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    .line 1805
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v6, v9, :cond_12

    .line 1806
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    .line 1808
    :cond_12
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 1810
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_16

    .line 1811
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v9, v9

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 1812
    .local v8, "scale":F
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v2, v9

    .line 1813
    .local v2, "h":I
    if-nez v2, :cond_13

    .line 1814
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1816
    :cond_13
    if-le v2, v6, :cond_18

    .line 1817
    move v2, v6

    .line 1821
    :cond_14
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1822
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1823
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 1828
    :cond_15
    :goto_5
    move v6, v2

    .line 1830
    .end local v2    # "h":I
    .end local v8    # "scale":F
    :cond_16
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_1

    .line 1799
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_17
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .restart local v7    # "photoWidth":I
    goto :goto_3

    .line 1818
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v2    # "h":I
    .restart local v6    # "photoHeight":I
    .restart local v8    # "scale":F
    :cond_18
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-ge v2, v9, :cond_14

    .line 1819
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_4

    .line 1825
    :cond_19
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    goto :goto_5
.end method

.method public getDialogId()J
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 1574
    :goto_0
    return-object v0

    .line 1571
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1574
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 1923
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_0

    .line 1924
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1928
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1929
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1930
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 1931
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 1934
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_2
    return v3

    .line 1926
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 1928
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1934
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 956
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 958
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 959
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 960
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 963
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 965
    :cond_2
    if-nez v0, :cond_3

    .line 966
    const-string/jumbo v0, ""

    .line 968
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 969
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 973
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 986
    :goto_0
    return-object v2

    .line 975
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_1

    .line 976
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 977
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 978
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 979
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_2

    .line 980
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 983
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_2

    .line 984
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 986
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x2

    .line 999
    :goto_0
    return v0

    .line 992
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    const/4 v0, 0x1

    goto :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_2

    .line 995
    const/4 v0, 0x3

    goto :goto_0

    .line 996
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_3

    .line 997
    const/4 v0, 0x0

    goto :goto_0

    .line 999
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getForwardedName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2074
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v2, :cond_1

    .line 2075
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v2, :cond_0

    .line 2076
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2077
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    .line 2078
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2087
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    return-object v2

    .line 2080
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v2, :cond_1

    .line 2081
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2082
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_1

    .line 2083
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2087
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    return v0
.end method

.method public getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 732
    :goto_0
    return-object v1

    .line 724
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 726
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-eqz v0, :cond_2

    .line 727
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    goto :goto_0

    .line 729
    .end local v0    # "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_2

    .line 730
    const-string/jumbo v1, "image/jpeg"

    goto :goto_0

    .line 732
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getMusicAuthor()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1939
    iget v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v6, :cond_2

    .line 1940
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1944
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 1945
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1946
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v6, :cond_a

    .line 1947
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v6, :cond_8

    .line 1948
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1949
    :cond_0
    const-string/jumbo v6, "FromYou"

    const v7, 0x7f07029e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1975
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    :goto_2
    return-object v4

    .line 1942
    .end local v0    # "a":I
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 1951
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    const/4 v5, 0x0

    .line 1952
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v2, 0x0

    .line 1953
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v6, :cond_4

    .line 1954
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1962
    :goto_3
    if-eqz v5, :cond_7

    .line 1963
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1955
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v6, :cond_5

    .line 1956
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_3

    .line 1957
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gez v6, :cond_6

    .line 1958
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_3

    .line 1960
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_3

    .line 1964
    :cond_7
    if-eqz v2, :cond_8

    .line 1965
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    .line 1968
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 1969
    .local v4, "performer":Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1970
    :cond_9
    const-string/jumbo v6, "AudioUnknownArtist"

    const v7, 0x7f0700af

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 1944
    .end local v4    # "performer":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1975
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b
    const-string/jumbo v4, ""

    goto/16 :goto_2
.end method

.method public getMusicTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1897
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_1

    .line 1898
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1902
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1903
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1904
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_5

    .line 1905
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v4, :cond_2

    .line 1906
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(J)Ljava/lang/String;

    move-result-object v3

    .line 1918
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    :goto_2
    return-object v3

    .line 1900
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_0

    .line 1908
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 1909
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1910
    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    .line 1911
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1912
    :cond_4
    const-string/jumbo v4, "AudioUnknownTitle"

    const v5, 0x7f0700b0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1902
    .end local v3    # "title":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1918
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_6
    const-string/jumbo v3, ""

    goto :goto_2
.end method

.method public getSecretTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1551
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1552
    const/4 v1, 0x0

    .line 1564
    :goto_0
    return-object v1

    .line 1554
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1555
    .local v0, "secondsLeft":I
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-eqz v2, :cond_1

    .line 1556
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1559
    :cond_1
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_2

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 1562
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v0, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getStickerEmoji()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1835
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1836
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1837
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_1

    .line 1838
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 1841
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    return-object v2

    .line 1835
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStrickerChar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1732
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    .line 1733
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1734
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 1735
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 1739
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnradFlags()I
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public hasPhotoStickers()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentUnread()Z
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isFromUser()Z
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvoice()Z
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMask()Z
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMediaEmpty()Z
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMegagroup()Z
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMusic()Z
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isNewGif()Z
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOut()Z
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public isOutOwner()Z
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReply()Z
    .locals 4

    .prologue
    .line 1991
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretMedia()Z
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretPhoto()Z
    .locals 2

    .prologue
    .line 1482
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendError()Z
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1539
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSticker()Z
    .locals 2

    .prologue
    .line 1845
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 1846
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1848
    :goto_0
    return v0

    .line 1846
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1848
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isVideoVoice()Z
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoice()Z
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isWebpageDocument()Z
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureInlineBotButtons()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 592
    iput v7, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 593
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v2, :cond_1

    .line 622
    :cond_0
    return-void

    .line 596
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 597
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    .line 602
    :goto_0
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 603
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 604
    .local v12, "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    const/4 v11, 0x0

    .line 605
    .local v11, "maxButtonSize":I
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 606
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "b":I
    :goto_2
    if-ge v9, v13, :cond_5

    .line 607
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 608
    .local v10, "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 611
    const-string/jumbo v2, "PaymentReceipt"

    const v3, 0x7f0704a9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_3
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x44fa0000    # 2000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 616
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 617
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 606
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 600
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v11    # "maxButtonSize":I
    .end local v12    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .end local v13    # "size":I
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 613
    .restart local v8    # "a":I
    .restart local v9    # "b":I
    .restart local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .restart local v11    # "maxButtonSize":I
    .restart local v12    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .restart local v13    # "size":I
    :cond_4
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_3

    .line 620
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v11

    mul-int/2addr v3, v13

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/lit8 v5, v13, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 602
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "usersDict":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 903
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 904
    .local v3, "start":I
    if-ltz v3, :cond_5

    .line 905
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, ""

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 906
    .local v2, "names":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 907
    const/4 v4, 0x0

    .line 908
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p4, :cond_0

    .line 909
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 911
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    if-nez v4, :cond_1

    .line 912
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 914
    :cond_1
    if-eqz v4, :cond_3

    .line 915
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 917
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 918
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 920
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 921
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 906
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v8

    new-array v6, v9, [Ljava/lang/CharSequence;

    aput-object v2, v6, v8

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 926
    .end local v0    # "a":I
    .end local v2    # "names":Landroid/text/SpannableStringBuilder;
    .end local p1    # "source":Ljava/lang/CharSequence;
    :cond_5
    return-object p1
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 930
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 931
    .local v4, "start":I
    if-ltz v4, :cond_3

    .line 934
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_0

    move-object v5, p3

    .line 935
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "id":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-array v5, v8, [Ljava/lang/String;

    aput-object p2, v5, v7

    new-array v6, v8, [Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 949
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 952
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 937
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_0
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1

    move-object v5, p3

    .line 938
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 939
    .restart local v3    # "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 940
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_1
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v5, :cond_2

    move-object v1, p3

    .line 941
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 942
    .local v1, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    .line 943
    .restart local v3    # "name":Ljava/lang/String;
    const-string/jumbo v2, "game"

    .line 944
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 945
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    .line 946
    .restart local v3    # "name":Ljava/lang/String;
    const-string/jumbo v2, "0"

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    move-object v0, p1

    .line 952
    goto :goto_1
.end method

.method public setContentIsRead()V
    .locals 2

    .prologue
    .line 1474
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1475
    return-void
.end method

.method public setIsRead()V
    .locals 2

    .prologue
    .line 1455
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1456
    return-void
.end method

.method public setType()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 625
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 626
    .local v0, "oldType":I
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-eqz v1, :cond_12

    .line 627
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 629
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 630
    :cond_1
    const-string/jumbo v1, "Empty message"

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 687
    :cond_2
    :goto_0
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v1, :cond_3

    .line 688
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 690
    :cond_3
    return-void

    .line 632
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_5

    .line 633
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 634
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v1, :cond_7

    .line 635
    :cond_6
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 636
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 637
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 638
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 639
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 640
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 641
    const/16 v1, 0xe

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 642
    :cond_a
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_b

    .line 643
    const/16 v1, 0xc

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 644
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_c

    .line 645
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_0

    .line 646
    :cond_c
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_10

    .line 647
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 648
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 649
    const/16 v1, 0x8

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 650
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "image/webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 651
    const/16 v1, 0xd

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 653
    :cond_e
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 656
    :cond_f
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 658
    :cond_10
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_11

    .line 659
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 660
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2

    .line 661
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 663
    :cond_12
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    if-eqz v1, :cond_13

    .line 665
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 666
    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v1, :cond_15

    .line 667
    :cond_14
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 668
    const/16 v1, 0xb

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 669
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v1, :cond_18

    .line 670
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v1, :cond_17

    .line 671
    :cond_16
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 672
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 674
    :cond_17
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 675
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 677
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v1, :cond_19

    .line 678
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 679
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 680
    :cond_19
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v1, :cond_1a

    .line 681
    const/16 v1, 0x10

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0

    .line 683
    :cond_1a
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 684
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_0
.end method

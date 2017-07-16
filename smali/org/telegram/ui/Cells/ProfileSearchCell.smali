.class public Lorg/telegram/ui/Cells/ProfileSearchCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ProfileSearchCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentName:Ljava/lang/CharSequence;

.field private dialog_id:J

.field private drawCheck:Z

.field private drawCount:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private lastUnreadCount:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameTop:I

.field private onlineLayout:Landroid/text/StaticLayout;

.field private onlineLeft:I

.field private paddingRight:I

.field private rect:Landroid/graphics/RectF;

.field private subLabel:Ljava/lang/CharSequence;

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 42
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 43
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 46
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 47
    iput v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 48
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 50
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 64
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 83
    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 28

    .prologue
    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    .line 139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_9

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v12, v2

    const/16 v2, 0x20

    shl-long/2addr v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 145
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_8

    .line 146
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 147
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 152
    :goto_0
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 203
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_15

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 214
    .local v20, "nameString":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 216
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 221
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_19

    .line 222
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 229
    .local v17, "currentNamePaint":Landroid/text/TextPaint;
    :goto_4
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1a

    .line 230
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .local v7, "nameWidth":I
    move/from16 v24, v7

    .line 234
    .local v24, "onlineWidth":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v2, :cond_1b

    .line 235
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    .line 245
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    sub-int v22, v7, v2

    .line 246
    .end local v7    # "nameWidth":I
    .local v22, "nameWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    sub-int v24, v24, v2

    .line 248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v2, :cond_21

    .line 249
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 250
    .local v18, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v18, :cond_20

    move-object/from16 v0, v18

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eqz v2, :cond_20

    .line 251
    move-object/from16 v0, v18

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 252
    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "countString":Ljava/lang/String;
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    .line 254
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 255
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v25, v2, v4

    .line 256
    .local v25, "w":I
    sub-int v7, v22, v25

    .line 257
    .end local v22    # "nameWidth":I
    .restart local v7    # "nameWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1f

    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 272
    .end local v3    # "countString":Ljava/lang/String;
    .end local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v25    # "w":I
    :goto_7
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 273
    .local v5, "nameStringFinal":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_26

    .line 276
    :cond_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_22

    .line 277
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 282
    :goto_8
    const-string/jumbo v23, ""

    .line 283
    .local v23, "onlineString":Ljava/lang/CharSequence;
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 285
    .local v10, "currentOnlinePaint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_23

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 299
    :cond_3
    :goto_9
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v24, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v23

    invoke-static {v0, v10, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 300
    .local v9, "onlineStringFinal":Ljava/lang/CharSequence;
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v11, v24

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    .line 301
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 311
    .end local v9    # "onlineStringFinal":Ljava/lang/CharSequence;
    .end local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .end local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_4
    :goto_a
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_28

    .line 312
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_27

    const/high16 v2, 0x41500000    # 13.0f

    :goto_b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 317
    .local v16, "avatarLeft":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4, v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 321
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2a

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    .line 324
    .local v19, "left":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 326
    .local v26, "widthpx":D
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 331
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    .line 333
    .restart local v19    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 335
    .restart local v26    # "widthpx":D
    move/from16 v0, v24

    int-to-double v12, v0

    cmpg-double v2, v26, v12

    if-gez v2, :cond_6

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-double v12, v2

    move/from16 v0, v24

    int-to-double v14, v0

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 361
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_6
    :goto_d
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    .line 362
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 365
    :cond_7
    return-void

    .line 149
    .end local v5    # "nameStringFinal":Ljava/lang/CharSequence;
    .end local v7    # "nameWidth":I
    .end local v16    # "avatarLeft":I
    .end local v17    # "currentNamePaint":Landroid/text/TextPaint;
    .end local v20    # "nameString":Ljava/lang/CharSequence;
    .end local v24    # "onlineWidth":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 150
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_0

    .line 154
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_11

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v2, :cond_a

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 158
    const/high16 v2, 0x41e40000    # 28.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 169
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 170
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_e

    .line 171
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 173
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_c

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_f
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_1

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_b

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 163
    const/high16 v2, 0x41e40000    # 28.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_e

    .line 165
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    .line 166
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_e

    .line 173
    :cond_c
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_f

    :cond_d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_f

    .line 176
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_f

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_10
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 177
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_1

    .line 176
    :cond_f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_10

    :cond_10
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_10

    .line 180
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 181
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_12

    .line 182
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 186
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_14

    .line 187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    .line 188
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_13

    .line 189
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 190
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 195
    :goto_12
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 199
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    goto/16 :goto_1

    .line 184
    :cond_12
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_11

    .line 192
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 193
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_12

    .line 197
    :cond_14
    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_13

    .line 206
    :cond_15
    const-string/jumbo v21, ""

    .line 207
    .local v21, "nameString2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_17

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 212
    :cond_16
    :goto_14
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "nameString":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 209
    .end local v20    # "nameString":Ljava/lang/CharSequence;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_16

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    goto :goto_14

    .line 218
    .end local v21    # "nameString2":Ljava/lang/String;
    .restart local v20    # "nameString":Ljava/lang/CharSequence;
    :cond_18
    const-string/jumbo v2, "HiddenName"

    const v4, 0x7f0702c5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 224
    :cond_19
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    .restart local v17    # "currentNamePaint":Landroid/text/TextPaint;
    goto/16 :goto_4

    .line 232
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .restart local v7    # "nameWidth":I
    move/from16 v24, v7

    .restart local v24    # "onlineWidth":I
    goto/16 :goto_5

    .line 236
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_1c

    .line 237
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    .line 238
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_1e

    .line 240
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_15
    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    :cond_1d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_15

    .line 241
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    if-eqz v2, :cond_1

    .line 242
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    .line 260
    .restart local v3    # "countString":Ljava/lang/String;
    .restart local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v25    # "w":I
    :cond_1f
    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int v2, v2, v25

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_7

    .line 264
    .end local v3    # "countString":Ljava/lang/String;
    .end local v7    # "nameWidth":I
    .end local v25    # "w":I
    .restart local v22    # "nameWidth":I
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .end local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :goto_16
    move/from16 v7, v22

    .end local v22    # "nameWidth":I
    .restart local v7    # "nameWidth":I
    goto/16 :goto_7

    .line 268
    .end local v7    # "nameWidth":I
    .restart local v22    # "nameWidth":I
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_16

    .line 279
    .end local v22    # "nameWidth":I
    .restart local v5    # "nameStringFinal":Ljava/lang/CharSequence;
    .restart local v7    # "nameWidth":I
    :cond_22
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    goto/16 :goto_8

    .line 287
    .restart local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .restart local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_24

    .line 289
    const-string/jumbo v2, "Bot"

    const v4, 0x7f0700c9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_9

    .line 291
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v23

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v2, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    if-le v2, v4, :cond_3

    .line 293
    :cond_25
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 294
    const-string/jumbo v2, "Online"

    const v4, 0x7f070456

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_9

    .line 306
    .end local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .end local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    .line 307
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_a

    .line 312
    :cond_27
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_b

    .line 314
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_29

    const/high16 v2, 0x42820000    # 65.0f

    :goto_17
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v16, v4, v2

    .restart local v16    # "avatarLeft":I
    goto/16 :goto_c

    .end local v16    # "avatarLeft":I
    :cond_29
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_17

    .line 341
    .restart local v16    # "avatarLeft":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    .line 343
    .restart local v19    # "left":F
    int-to-float v2, v7

    cmpl-float v2, v19, v2

    if-nez v2, :cond_2b

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 345
    .restart local v26    # "widthpx":D
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_2b

    .line 346
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 350
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    .line 352
    .restart local v19    # "left":F
    move/from16 v0, v24

    int-to-float v2, v0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_6

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 354
    .restart local v26    # "widthpx":D
    move/from16 v0, v24

    int-to-double v12, v0

    cmpg-double v2, v26, v12

    if-gez v2, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-double v12, v2

    move/from16 v0, v24

    int-to-double v14, v0

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    goto/16 :goto_d
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 114
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41380000    # 11.5f

    const/high16 v7, 0x40800000    # 4.0f

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    if-eqz v0, :cond_1

    .line 452
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 459
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v0, :cond_7

    .line 460
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 461
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 482
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    if-eqz v0, :cond_3

    .line 487
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    .line 488
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v6, v0, v1

    .line 492
    .local v6, "x":I
    :goto_3
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 493
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 494
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 495
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    .end local v6    # "x":I
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 501
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-float v0, v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 506
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    .line 507
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v6, v0, v1

    .line 508
    .restart local v6    # "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    int-to-float v1, v6

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    add-int/2addr v3, v6

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 509
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v8, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v8, v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 516
    .end local v6    # "x":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto/16 :goto_0

    .line 455
    :cond_6
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 462
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v0, :cond_9

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_8

    .line 466
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 467
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 469
    :cond_8
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 470
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 472
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_a

    .line 473
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 474
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 475
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    if-eqz v0, :cond_2

    .line 476
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 477
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 490
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v6, v0, v1

    .restart local v6    # "x":I
    goto/16 :goto_3

    .line 509
    :cond_c
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto/16 :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    .line 124
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "ec"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "n"    # Ljava/lang/CharSequence;
    .param p4, "s"    # Ljava/lang/CharSequence;
    .param p5, "needCount"    # Z

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 87
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .end local p1    # "object":Lorg/telegram/tgnet/TLObject;
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 89
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 94
    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 95
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 96
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    .line 98
    return-void

    .line 90
    .restart local p1    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local p1    # "object":Lorg/telegram/tgnet/TLObject;
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 92
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    .line 102
    return-void
.end method

.method public update(I)V
    .locals 12
    .param p1, "mask"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 383
    :goto_0
    if-eqz p1, :cond_10

    .line 384
    const/4 v6, 0x0

    .line 385
    .local v6, "continueUpdate":Z
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_5

    .line 386
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v0, v2, :cond_5

    .line 387
    :cond_4
    const/4 v6, 0x1

    .line 390
    :cond_5
    if-nez v6, :cond_7

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_7

    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, "newStatus":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 395
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v9, v0, :cond_7

    .line 396
    const/4 v6, 0x1

    .line 399
    .end local v9    # "newStatus":I
    :cond_7
    if-nez v6, :cond_8

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_9

    :cond_8
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_a

    .line 401
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_f

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, "newName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 407
    const/4 v6, 0x1

    .line 410
    .end local v8    # "newName":Ljava/lang/String;
    :cond_a
    if-nez v6, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v0, :cond_b

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_b

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 412
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v7, :cond_b

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    if-eq v0, v2, :cond_b

    .line 413
    const/4 v6, 0x1

    .line 417
    .end local v7    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_b
    if-nez v6, :cond_10

    .line 443
    .end local v6    # "continueUpdate":Z
    :goto_2
    return-void

    .line 374
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_e

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 378
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_0

    .line 380
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v5, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 404
    .restart local v6    # "continueUpdate":Z
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .restart local v8    # "newName":Ljava/lang/String;
    goto :goto_1

    .line 422
    .end local v6    # "continueUpdate":Z
    .end local v8    # "newName":Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_14

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_13

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 428
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 434
    :cond_11
    :goto_4
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_15

    .line 438
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 442
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->postInvalidate()V

    goto :goto_2

    .line 426
    :cond_13
    iput v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_3

    .line 429
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_11

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    goto :goto_4

    .line 440
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->requestLayout()V

    goto :goto_5
.end method

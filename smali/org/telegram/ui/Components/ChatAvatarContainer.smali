.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "ChatAvatarContainer.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private onlineCount:I

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

.field private recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

.field private sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p3, "needTime"    # Z

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 54
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 56
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 60
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 61
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v4, "actionBarDefaultTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v4, "actionBarDefaultSubtitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 70
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 72
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 75
    if-eqz p3, :cond_1

    .line 76
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 118
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v1, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/TypingDotsDrawable;->setIsChat(Z)V

    .line 120
    new-instance v1, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecordStatusDrawable;->setIsChat(Z)V

    .line 122
    new-instance v1, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    .line 123
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SendingFileDrawable;->setIsChat(Z)V

    .line 124
    new-instance v1, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->setIsChat(Z)V

    .line 126
    return-void

    :cond_2
    move v1, v3

    .line 119
    goto :goto_0

    :cond_3
    move v1, v3

    .line 121
    goto :goto_1

    :cond_4
    move v1, v3

    .line 123
    goto :goto_2

    :cond_5
    move v2, v3

    .line 125
    goto :goto_3
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setTypingAnimation(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    .line 218
    if-eqz p1, :cond_4

    .line 220
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 221
    .local v1, "type":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->start()V

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 226
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    .line 256
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 228
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->start()V

    .line 230
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->start()V

    .line 236
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 237
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 238
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->start()V

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 243
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 244
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 252
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 253
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 254
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAndUpdateAvatar()V
    .locals 7

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 348
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 349
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_4

    .line 350
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 353
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 360
    :cond_1
    :goto_0
    const-string/jumbo v4, "chatHeaderAvatarRadius"

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 361
    .local v2, "radius":I
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 366
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 367
    :cond_3
    return-void

    .line 354
    .end local v2    # "radius":I
    :cond_4
    if-eqz v0, :cond_1

    .line 355
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_5

    .line 356
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 358
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideTimeItem()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v5, 0x42280000    # 42.0f

    const v7, 0x3fa66666    # 1.3f

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v8, 0x42780000    # 62.0f

    .line 143
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    .line 144
    .local v0, "actionBarHeight":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v3, v2, 0x2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int v1, v3, v2

    .line 145
    .local v1, "viewTop":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->layout(IIII)V

    .line 146
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42440000    # 49.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 150
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 151
    return-void

    .line 144
    .end local v1    # "viewTop":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v7, 0x42080000    # 34.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 131
    .local v1, "width":I
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 132
    .local v0, "availableWidth":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->measure(II)V

    .line 133
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 134
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 135
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 138
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setMeasuredDimension(II)V

    .line 139
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 211
    return-void
.end method

.method public setSubtitleSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 215
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 203
    return-void
.end method

.method public setTitleIcons(II)V
    .locals 1
    .param p1, "leftIcon"    # I
    .param p2, "rightIcon"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    .line 177
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "leftIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rightIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void
.end method

.method public setTitleSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 207
    return-void
.end method

.method public showTimeItem()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateOnlineCount()V
    .locals 7

    .prologue
    .line 370
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 371
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    .line 372
    .local v2, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-nez v2, :cond_1

    .line 385
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 376
    .local v1, "currentTime":I
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_2

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_0

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_0

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_0

    .line 377
    :cond_2
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 378
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 379
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 380
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_3

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_4

    .line 381
    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 377
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateSubtitle()V
    .locals 18

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 260
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 261
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 262
    .local v7, "printString":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 263
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "..."

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static {v7, v12, v13}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 265
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_14

    .line 266
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 267
    if-eqz v2, :cond_d

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    .line 269
    .local v4, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 270
    if-eqz v4, :cond_5

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_5

    .line 271
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_4

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v13, 0xc8

    if-gt v12, v13, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_3

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Members"

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_2
    :goto_0
    return-void

    .line 275
    .restart local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Members"

    iget v14, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_4
    const/4 v12, 0x1

    new-array v8, v12, [I

    .line 279
    .local v8, "result":[I
    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v12, v8}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "shortNumber":Ljava/lang/String;
    const-string/jumbo v12, "Members"

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v8, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    .end local v8    # "result":[I
    .end local v9    # "shortNumber":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    :cond_5
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_6

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Loading"

    const v14, 0x7f070356

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_6
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "ChannelPublic"

    const v14, 0x7f070147

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "ChannelPrivate"

    const v14, 0x7f070144

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :cond_8
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "YouWereKicked"

    const v14, 0x7f0706bf

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 297
    :cond_9
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "YouLeft"

    const v14, 0x7f0706be

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 300
    :cond_a
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 301
    .local v3, "count":I
    if-eqz v4, :cond_b

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v12, :cond_b

    .line 302
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 304
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_c

    if-eqz v3, :cond_c

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Members"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Members"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 311
    .end local v3    # "count":I
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_d
    if-eqz v11, :cond_2

    .line 312
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 313
    .local v6, "newUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_e

    .line 314
    move-object v11, v6

    .line 317
    :cond_e
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v13

    if-ne v12, v13, :cond_f

    .line 318
    const-string/jumbo v12, "ChatYourSelf"

    const v13, 0x7f070169

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "newStatus":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_2

    .line 329
    const-string/jumbo v12, "Online"

    const v13, 0x7f070456

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatOnlineColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 319
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_f
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0x514c8

    if-eq v12, v13, :cond_10

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0xbdb28

    if-ne v12, v13, :cond_11

    .line 320
    :cond_10
    const-string/jumbo v12, "ServiceNotifications"

    const v13, 0x7f0705a7

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 321
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_11
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_12

    .line 322
    const-string/jumbo v12, "Bot"

    const v13, 0x7f0700c9

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 324
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_12
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 332
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 337
    .end local v5    # "newStatus":Ljava/lang/String;
    .end local v6    # "newUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 340
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatTypingColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

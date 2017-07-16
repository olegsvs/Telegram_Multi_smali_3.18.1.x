.class public Lorg/telegram/ui/Cells/GroupCreateUserCell;
.super Landroid/widget/FrameLayout;
.source "GroupCreateUserCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

.field private currentName:Ljava/lang/CharSequence;

.field private currentStatus:Ljava/lang/CharSequence;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameColor:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private onlineColor:I

.field private statusColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private themePrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needCheck"    # Z

    .prologue
    const/high16 v10, 0x42900000    # 72.0f

    const/high16 v9, 0x41e00000    # 28.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 57
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contactsNameColor"

    const v2, -0xdededf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameColor:I

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contactsStatusColor"

    const v2, -0x575758

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusColor:I

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contactsOnlineColor"

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->onlineColor:I

    .line 62
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "contactsAvatarRadius"

    const/16 v3, 0x20

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 64
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x32

    const/high16 v1, 0x42480000    # 50.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v7

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v3, v6

    :goto_2
    const/high16 v4, 0x41300000    # 11.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/high16 v5, 0x41300000    # 11.0f

    :goto_3
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 67
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameColor:I

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "contactsNameSize"

    const/16 v3, 0x11

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    move v0, v7

    :goto_6
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 71
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    move v2, v7

    :goto_7
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    move v3, v9

    :goto_8
    const/high16 v4, 0x41600000    # 14.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    move v5, v10

    :goto_9
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 74
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->themePrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "contactsStatusSize"

    const/16 v3, 0x10

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_a
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    move v0, v7

    :goto_b
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 76
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d

    move v2, v7

    :goto_c
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    move v3, v9

    :goto_d
    const/high16 v4, 0x421c0000    # 39.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_f

    move v5, v10

    :goto_e
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setVisibility(I)V

    .line 81
    iget-object v9, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    :goto_f
    or-int/lit8 v2, v7, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11

    move v3, v6

    :goto_10
    const/high16 v4, 0x42240000    # 41.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12

    const/high16 v5, 0x42240000    # 41.0f

    :goto_11
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_0
    return-void

    .line 63
    :cond_1
    const/high16 v0, 0x41c00000    # 24.0f

    goto/16 :goto_0

    :cond_2
    move v2, v8

    .line 64
    goto/16 :goto_1

    :cond_3
    const/high16 v3, 0x41300000    # 11.0f

    goto/16 :goto_2

    :cond_4
    move v5, v6

    goto/16 :goto_3

    .line 67
    :cond_5
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4

    .line 69
    :cond_6
    const/16 v0, 0x11

    goto/16 :goto_5

    :cond_7
    move v0, v8

    .line 70
    goto/16 :goto_6

    :cond_8
    move v2, v8

    .line 71
    goto/16 :goto_7

    :cond_9
    move v3, v10

    goto/16 :goto_8

    :cond_a
    move v5, v9

    goto/16 :goto_9

    .line 74
    :cond_b
    const/16 v0, 0x10

    goto/16 :goto_a

    :cond_c
    move v0, v8

    .line 75
    goto :goto_b

    :cond_d
    move v2, v8

    .line 76
    goto :goto_c

    :cond_e
    move v3, v10

    goto :goto_d

    :cond_f
    move v5, v9

    goto :goto_e

    :cond_10
    move v7, v8

    .line 81
    goto :goto_f

    :cond_11
    const/high16 v3, 0x42240000    # 41.0f

    goto :goto_10

    :cond_12
    move v5, v6

    goto :goto_11
.end method


# virtual methods
.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 103
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    .line 107
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setChecked(ZZ)V

    .line 94
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 87
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 88
    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 90
    return-void
.end method

.method public update(I)V
    .locals 9
    .param p1, "mask"    # I

    .prologue
    const/4 v8, 0x1

    .line 110
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v3, 0x0

    .line 114
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v1, 0x0

    .line 115
    .local v1, "newName":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 119
    :cond_2
    if-eqz p1, :cond_9

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "continueUpdate":Z
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_5

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v5, :cond_5

    .line 123
    :cond_4
    const/4 v0, 0x1

    .line 126
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_7

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "newStatus":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_6

    .line 129
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 131
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    if-eq v2, v4, :cond_7

    .line 132
    const/4 v0, 0x1

    .line 135
    .end local v2    # "newStatus":I
    :cond_7
    if-nez v0, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v4, :cond_8

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_8

    .line 136
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 138
    const/4 v0, 0x1

    .line 141
    :cond_8
    if-eqz v0, :cond_0

    .line 146
    .end local v0    # "continueUpdate":Z
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 147
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :goto_1
    iput v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    .line 149
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    .line 150
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 157
    .end local v1    # "newName":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusColor:I

    :goto_3
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 179
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 147
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_1

    .line 153
    :cond_b
    if-nez v1, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "newName":Ljava/lang/String;
    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 160
    :cond_d
    const-string/jumbo v4, "groupcreate_offlineText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 162
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_10

    .line 163
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 164
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_f

    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusColor:I

    :goto_5
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "Bot"

    const v6, 0x7f0700c9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 164
    :cond_f
    const-string/jumbo v4, "groupcreate_offlineText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 167
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_12

    :cond_11
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 168
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_13

    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->onlineColor:I

    :goto_6
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "Online"

    const v6, 0x7f070456

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 169
    :cond_13
    const-string/jumbo v4, "groupcreate_onlineText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    .line 172
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_15

    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusColor:I

    :goto_7
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 174
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 173
    :cond_15
    const-string/jumbo v4, "groupcreate_offlineText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_7
.end method

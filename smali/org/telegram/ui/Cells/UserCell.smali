.class public Lorg/telegram/ui/Cells/UserCell;
.super Landroid/widget/FrameLayout;
.source "UserCell.java"


# instance fields
.field private adminImage:Landroid/widget/ImageView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private curDrawable:Landroid/graphics/drawable/Drawable;

.field private currentDrawable:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Lorg/telegram/tgnet/TLObject;

.field private currrntStatus:Ljava/lang/CharSequence;

.field private imageView:Landroid/widget/ImageView;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameColor:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private radius:I

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I
    .param p3, "checkbox"    # I
    .param p4, "admin"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->curDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    const/16 v0, 0x20

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->radius:I

    .line 73
    const-string/jumbo v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 74
    const-string/jumbo v0, "windowBackgroundWhiteBlueText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 76
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 80
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_2
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 86
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    if-ne p3, v3, :cond_7

    const/16 v3, 0x12

    :goto_5
    add-int/lit8 v3, v3, 0x1c

    int-to-float v3, v3

    :goto_6
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_7
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    :goto_8
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 91
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    :goto_9
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_d

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_a
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_b
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x5

    :goto_c
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    :goto_d
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_11

    const/high16 v5, 0x41800000    # 16.0f

    :goto_e
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/4 v0, 0x2

    if-ne p3, v0, :cond_15

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 100
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v0, 0x12

    const/high16 v1, 0x41900000    # 18.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    :goto_f
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_13

    const/high16 v3, 0x41980000    # 19.0f

    :goto_10
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    :goto_11
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_0
    :goto_12
    if-eqz p4, :cond_1

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const/16 v0, 0x10

    const/high16 v1, 0x41800000    # 16.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x3

    :goto_13
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1a

    const/high16 v3, 0x41c00000    # 24.0f

    :goto_14
    const/high16 v4, 0x41580000    # 13.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    :goto_15
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_1
    return-void

    .line 80
    :cond_2
    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 85
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 86
    :cond_6
    const/4 v2, 0x3

    goto/16 :goto_4

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_6

    :cond_9
    const/4 v5, 0x2

    if-ne p3, v5, :cond_a

    const/16 v5, 0x12

    :goto_16
    add-int/lit8 v5, v5, 0x1c

    int-to-float v5, v5

    goto/16 :goto_7

    :cond_a
    const/4 v5, 0x0

    goto :goto_16

    .line 90
    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_8

    .line 91
    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_a

    :cond_e
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_b

    .line 96
    :cond_f
    const/4 v2, 0x3

    goto/16 :goto_c

    :cond_10
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_d

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 100
    :cond_12
    const/4 v2, 0x5

    goto/16 :goto_f

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_14
    const/high16 v5, 0x41980000    # 19.0f

    goto/16 :goto_11

    .line 101
    :cond_15
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 102
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 105
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x5

    :goto_17
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    :goto_18
    const/high16 v4, 0x42180000    # 38.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_18

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_19
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_12

    :cond_16
    const/4 v2, 0x3

    goto :goto_17

    :cond_17
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_18

    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .line 111
    :cond_19
    const/4 v2, 0x5

    goto/16 :goto_13

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_1b
    const/high16 v5, 0x41c00000    # 24.0f

    goto/16 :goto_15
.end method

.method private updateTheme()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0xe

    const v6, -0xdededf

    .line 148
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/UserCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/UserCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "Contacts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    const-string/jumbo v3, "contactsStatusColor"

    const v4, -0x575758

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "contactsOnlineColor"

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    .line 152
    const-string/jumbo v3, "contactsNameColor"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v4, "contactsNameSize"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 155
    const-string/jumbo v3, "contactsStatusSize"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/UserCell;->setStatusSize(I)V

    .line 156
    const-string/jumbo v3, "contactsAvatarRadius"

    const/16 v4, 0x20

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/UserCell;->setAvatarRadius(I)V

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 149
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 157
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "Profile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowOnlineColor:I

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    .line 159
    const-string/jumbo v3, "profileTitleColor"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    .line 160
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 162
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/UserCell;->setStatusSize(I)V

    .line 164
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowAvatarRadius:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/UserCell;->setAvatarRadius(I)V

    .line 165
    iget v3, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/UserCell;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 170
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string/jumbo v3, "Pref"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    .line 172
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    iput v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    .line 173
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->invalidate()V

    .line 213
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 200
    return-void
.end method

.method public setAvatarRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 348
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->radius:I

    .line 349
    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setVisibility(I)V

    .line 187
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    goto :goto_0
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;
    .param p4, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 133
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 134
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 141
    iput-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 142
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 143
    iput p4, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->curDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    return-void
.end method

.method public setIsAdmin(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v0, v1, v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPadding(IIII)V

    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 122
    const-string/jumbo v0, "profile_creatorIcon"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowCreatorStarColor:I

    :goto_4
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 119
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    move v0, v1

    .line 120
    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    .line 123
    :cond_5
    const-string/jumbo v0, "profile_creatorIcon"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 124
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 125
    const-string/jumbo v0, "profile_adminIcon"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowAdminStarColor:I

    :goto_5
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "profile_adminIcon"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public setNameColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 328
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameColor:I

    .line 329
    return-void
.end method

.method public setNameSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 333
    return-void
.end method

.method public setStatusColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 336
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 337
    return-void
.end method

.method public setStatusColors(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onlineColor"    # I

    .prologue
    .line 203
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 204
    iput p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 205
    return-void
.end method

.method public setStatusSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 341
    return-void
.end method

.method public update(I)V
    .locals 12
    .param p1, "mask"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 216
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    if-nez v8, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v5, 0x0

    .line 220
    .local v5, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v3, 0x0

    .line 221
    .local v3, "newName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 222
    .local v2, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v1, 0x0

    .line 223
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_10

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 225
    .restart local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_2

    .line 226
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 234
    :cond_2
    :goto_1
    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Cells/UserCell;->updateTheme()V

    .line 235
    :cond_3
    if-eqz p1, :cond_a

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "continueUpdate":Z
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_6

    .line 238
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_6

    if-eqz v5, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v8, v9, :cond_6

    .line 239
    :cond_5
    const/4 v0, 0x1

    .line 242
    :cond_6
    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_8

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "newStatus":I
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_7

    .line 245
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 247
    :cond_7
    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    if-eq v4, v8, :cond_8

    .line 248
    const/4 v0, 0x1

    .line 251
    .end local v4    # "newStatus":I
    :cond_8
    if-nez v0, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v8, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v8, :cond_9

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_9

    .line 252
    if-eqz v2, :cond_11

    .line 253
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 257
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 258
    const/4 v0, 0x1

    .line 261
    :cond_9
    if-eqz v0, :cond_0

    .line 266
    .end local v0    # "continueUpdate":Z
    :cond_a
    if-eqz v2, :cond_13

    .line 267
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 268
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_12

    .line 269
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    .line 277
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v8, :cond_14

    .line 278
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 279
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .end local v3    # "newName":Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    if-eqz v8, :cond_18

    .line 289
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 290
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_b
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_c

    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v8, :cond_d

    :cond_c
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_e

    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v8, :cond_e

    .line 311
    :cond_d
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-nez v9, :cond_1f

    :goto_6
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v7, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->curDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->curDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Cells/UserCell;->radius:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 317
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v7, p0, Lorg/telegram/ui/Cells/UserCell;->radius:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 319
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v7, "50_50"

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v5, v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 229
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 230
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v8, :cond_2

    .line 231
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1

    .line 255
    .restart local v0    # "continueUpdate":Z
    :cond_11
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 271
    .end local v0    # "continueUpdate":Z
    :cond_12
    iput v7, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto/16 :goto_3

    .line 274
    :cond_13
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_3

    .line 281
    :cond_14
    if-eqz v2, :cond_16

    .line 282
    if-nez v3, :cond_15

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "newName":Ljava/lang/String;
    :cond_15
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 286
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 284
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_16
    if-nez v3, :cond_17

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .end local v3    # "newName":Ljava/lang/String;
    :cond_17
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_7

    .line 291
    :cond_18
    if-eqz v2, :cond_b

    .line 292
    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v8, :cond_1b

    .line 293
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 294
    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v8, :cond_19

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1a

    .line 295
    :cond_19
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v9, "BotStatusRead"

    const v10, 0x7f0700d4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 297
    :cond_1a
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v9, "BotStatusCantRead"

    const v10, 0x7f0700d3

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 300
    :cond_1b
    iget v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v9

    if-eq v8, v9, :cond_1d

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_1c

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    if-gt v8, v9, :cond_1d

    :cond_1c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 301
    :cond_1d
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 302
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v9, "Online"

    const v10, 0x7f070456

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 304
    :cond_1e
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 305
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1f
    move v6, v7

    .line 311
    goto/16 :goto_6
.end method

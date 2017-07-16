.class public Lorg/telegram/ui/Cells/ShareDialogCell;
.super Landroid/widget/FrameLayout;
.source "ShareDialogCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 44
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 46
    iget-object v10, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 48
    .local v9, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "chatAttachTextColor"

    const v1, -0x8a8a8b

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 49
    .local v8, "nColor":I
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const v1, -0x8a8a8b

    if-eq v8, v1, :cond_1

    .end local v8    # "nColor":I
    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    iget-object v10, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v1, "dialogRoundCheckBox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "dialogRoundCheckBoxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 64
    const-string/jumbo v0, "chatAttachTextColor"

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 65
    .local v7, "checkColor":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CheckBox;->setColor(I)V

    .line 66
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v1, "chatAttachBGColor"

    const/4 v2, -0x1

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckDrawableColor(I)V

    .line 69
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x31

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x421c0000    # 39.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void

    .line 51
    .end local v7    # "checkColor":I
    .restart local v8    # "nColor":I
    :cond_1
    const v8, -0xdededf

    goto/16 :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 74
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 75
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 112
    return-void
.end method

.method public setDialog(IZLjava/lang/CharSequence;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "checked"    # Z
    .param p3, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-lez p1, :cond_3

    .line 80
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 81
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p3, :cond_1

    .line 82
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 89
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 106
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v4, "50_50"

    iget-object v5, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 108
    return-void

    .line 83
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-eqz v2, :cond_2

    .line 84
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 94
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz p3, :cond_4

    .line 95
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 102
    if-eqz v0, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    .line 96
    :cond_4
    if-eqz v0, :cond_5

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 99
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

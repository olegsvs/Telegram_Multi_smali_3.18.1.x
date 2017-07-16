.class public Lorg/telegram/ui/Components/JoinGroupAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "JoinGroupAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;
    }
.end annotation


# instance fields
.field private chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private hash:Ljava/lang/String;

.field private nameColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invite"    # Lorg/telegram/tgnet/TLRPC$ChatInvite;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 50
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->setApplyBottomPadding(Z)V

    .line 51
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->setApplyTopPadding(Z)V

    .line 53
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 54
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    .line 57
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 61
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 62
    .local v21, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatAttachBGColor"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 63
    .local v11, "bgColor":I
    const-string/jumbo v2, "chatAttachTextColor"

    const v3, -0x666667

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->nameColor:I

    .line 64
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/JoinGroupAlert;->setCustomView(Landroid/view/View;)V

    .line 70
    const/16 v17, 0x0

    .line 73
    .local v17, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_5

    .line 74
    new-instance v9, Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 75
    .local v9, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v17, v0

    .line 78
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 79
    .local v22, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    move/from16 v16, v0

    .line 90
    .local v16, "participants_count":I
    :goto_0
    new-instance v10, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v10, "avatarImageView":Lorg/telegram/ui/Components/BackupImageView;
    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 92
    const-string/jumbo v2, "50_50"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v2, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/16 v2, 0x46

    const/16 v3, 0x46

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v20, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    const/4 v2, 0x1

    const/high16 v3, 0x41880000    # 17.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    const-string/jumbo v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->nameColor:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 103
    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x31

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    if-lez v16, :cond_7

    const/4 v8, 0x0

    :goto_1
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    if-lez v16, :cond_2

    .line 106
    const-string/jumbo v2, "chatAttachTextColor"

    const v3, -0x666667

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 107
    .local v13, "color":I
    new-instance v20, Landroid/widget/TextView;

    .end local v20    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v20    # "textView":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    const-string/jumbo v2, "dialogTextGray3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    const-string/jumbo v2, "dialogTextGray3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    if-eq v13, v2, :cond_1

    .line 112
    const/16 v2, -0x40

    invoke-static {v13, v2}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 116
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    const-string/jumbo v2, "Members"

    move/from16 v0, v16

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x31

    const/16 v5, 0xa

    const/4 v6, 0x4

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v13    # "color":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    new-instance v15, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v15, "listView":Lorg/telegram/ui/Components/RecyclerListView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v15, v2, v3, v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setNestedScrollingEnabled(Z)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 126
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 129
    new-instance v2, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/content/Context;)V

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 130
    const-string/jumbo v2, "dialogScrollGlow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 131
    const/4 v2, -0x2

    const/16 v3, 0x5a

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .end local v15    # "listView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_3
    new-instance v19, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    .local v19, "shadow":Landroid/view/View;
    const v2, 0x7f0200b2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v18, Lorg/telegram/ui/Components/PickerBottomLayout;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;Z)V

    .line 139
    .local v18, "pickerBottomLayout":Lorg/telegram/ui/Components/PickerBottomLayout;
    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v3, "dialogTextBlue2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/JoinGroupAlert$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "dialogTextBlue2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/PickerBottomLayout;->setBackgroundColor(I)V

    .line 156
    const-string/jumbo v2, "chatAttachTextColor"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 157
    .local v12, "btnColor":I
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-eq v12, v2, :cond_4

    .line 158
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const/16 v3, -0x40

    invoke-static {v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const/16 v3, -0x40

    invoke-static {v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    :cond_4
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "JoinGroup"

    const v4, 0x7f07030d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/JoinGroupAlert$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$2;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void

    .line 81
    .end local v9    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    .end local v10    # "avatarImageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v12    # "btnColor":I
    .end local v16    # "participants_count":I
    .end local v18    # "pickerBottomLayout":Lorg/telegram/ui/Components/PickerBottomLayout;
    .end local v19    # "shadow":Landroid/view/View;
    .end local v20    # "textView":Landroid/widget/TextView;
    .end local v22    # "title":Ljava/lang/String;
    :cond_5
    new-instance v9, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 82
    .restart local v9    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_6

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v17, v0

    .line 86
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 87
    .restart local v22    # "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    move/from16 v16, v0

    .restart local v16    # "participants_count":I
    goto/16 :goto_0

    .line 103
    .restart local v10    # "avatarImageView":Lorg/telegram/ui/Components/BackupImageView;
    .restart local v20    # "textView":Landroid/widget/TextView;
    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/JoinGroupAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/JoinGroupAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/JoinGroupAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/JoinGroupAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/JoinGroupAlert;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->nameColor:I

    return v0
.end method

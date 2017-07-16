.class public Lorg/telegram/ui/ChangeAboutActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeAboutActivity.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private aboutField:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeAboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/ChangeAboutActivity;->saveAbout()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeAboutActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ChangeAboutActivity;->classGuid:I

    return v0
.end method

.method private saveAbout()V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 157
    .local v1, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserAbout(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "about":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "newAbout":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    .line 166
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    .line 167
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->about:Ljava/lang/String;

    .line 169
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChangeAboutActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeAboutActivity$4;-><init>(Lorg/telegram/ui/ChangeAboutActivity;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeAboutActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "EditBio"

    const v3, 0x7f07020c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ChangeAboutActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChangeAboutActivity$1;-><init>(Lorg/telegram/ui/ChangeAboutActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 76
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 77
    .local v13, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChangeAboutActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 78
    .local v7, "done":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    const/4 v1, 0x1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v1, v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->doneButton:Landroid/view/View;

    .line 81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 82
    .local v14, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v14, :cond_0

    .line 83
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 86
    :cond_0
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/ChangeAboutActivity;->fragmentView:Landroid/view/View;

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->fragmentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/ChangeAboutActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChangeAboutActivity$2;-><init>(Lorg/telegram/ui/ChangeAboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const v2, -0x686869

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const v2, -0xdededf

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 104
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 105
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "showEmojiKbBtn"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 106
    .local v12, "showEmojiBtn":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const v2, 0x2c001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 107
    if-eqz v12, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    :cond_1
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/text/InputFilter;

    .line 112
    .local v8, "inputFilters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v8, v1

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const-string/jumbo v2, "Info"

    const v3, 0x7f0702f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/ChangeAboutActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChangeAboutActivity$3;-><init>(Lorg/telegram/ui/ChangeAboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    if-eqz v14, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserAbout(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangeAboutActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 103
    .end local v8    # "inputFilters":[Landroid/text/InputFilter;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "showEmojiBtn":Z
    :cond_3
    const/4 v1, 0x3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 137
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 138
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 141
    iget-object v2, p0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 142
    iget-object v2, p0, Lorg/telegram/ui/ChangeAboutActivity;->aboutField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 144
    :cond_0
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChangeAboutActivity;->updateTheme()V

    .line 145
    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    new-instance v0, Lorg/telegram/ui/ChangeAboutActivity$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeAboutActivity$5;-><init>(Lorg/telegram/ui/ChangeAboutActivity;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 203
    :cond_0
    return-void
.end method

.class public Lorg/telegram/ui/ChangePhoneActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;,
        Lorg/telegram/ui/ChangePhoneActivity$PhoneView;,
        Lorg/telegram/ui/ChangePhoneActivity$ProgressView;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkPermissions:Z

.field private currentViewNum:I

.field private doneButton:Landroid/view/View;

.field private permissionsDialog:Landroid/app/Dialog;

.field private permissionsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->checkPermissions:Z

    .line 839
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangePhoneActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangePhoneActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;

    .prologue
    .line 86
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChangePhoneActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->checkPermissions:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ChangePhoneActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChangePhoneActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangePhoneActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "res"    # Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 306
    const-string/jumbo v0, "phoneHash"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    if-eqz v0, :cond_2

    .line 308
    const-string/jumbo v0, "nextType"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    :cond_0
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    if-eqz v0, :cond_4

    .line 315
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string/jumbo v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    invoke-virtual {p0, v2, v2, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 337
    :cond_1
    :goto_1
    return-void

    .line 309
    :cond_2
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v0, :cond_3

    .line 310
    const-string/jumbo v0, "nextType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v0, :cond_0

    .line 312
    const-string/jumbo v0, "nextType"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    :cond_4
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    if-nez v0, :cond_5

    .line 320
    const/16 v0, 0x3c

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    .line 322
    :cond_5
    const-string/jumbo v0, "timeout"

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v0, :cond_6

    .line 324
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string/jumbo v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    invoke-virtual {p0, v6, v2, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 327
    :cond_6
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v0, :cond_7

    .line 328
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string/jumbo v0, "pattern"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v5, v2, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 331
    :cond_7
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-eqz v0, :cond_1

    .line 332
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    const-string/jumbo v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    invoke-virtual {p0, v4, v2, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_1
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 159
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 160
    .local v12, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 161
    .local v8, "done":Landroid/graphics/drawable/Drawable;
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    const/4 v0, 0x1

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v10, v0, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->doneButton:Landroid/view/View;

    .line 164
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->fragmentView:Landroid/view/View;

    .line 165
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/ScrollView;

    .line 166
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 168
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 169
    .local v9, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x4

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 177
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v0, v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v13, v0, v7

    const/4 v0, -0x1

    if-nez v7, :cond_1

    const/high16 v1, -0x40000000    # -2.0f

    :goto_2
    const/16 v2, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x41d00000    # 26.0f

    :goto_3
    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x41d00000    # 26.0f

    :goto_4
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    .line 179
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    const/high16 v3, 0x41900000    # 18.0f

    goto :goto_3

    :cond_3
    const/high16 v5, 0x41900000    # 18.0f

    goto :goto_4

    .line 183
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 17

    .prologue
    .line 1410
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x0

    aget-object v10, v1, v2

    check-cast v10, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .line 1411
    .local v10, "phoneView":Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x1

    aget-object v11, v1, v2

    check-cast v11, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .line 1412
    .local v11, "smsView1":Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x2

    aget-object v12, v1, v2

    check-cast v12, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .line 1413
    .local v12, "smsView2":Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x3

    aget-object v13, v1, v2

    check-cast v13, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .line 1414
    .local v13, "smsView3":Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x4

    aget-object v14, v1, v2

    check-cast v14, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .line 1416
    .local v14, "smsView4":Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    const/16 v1, 0x39

    new-array v15, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhite"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x1

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "actionBarDefault"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x2

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "actionBarDefault"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x3

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "actionBarDefaultIcon"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x4

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "actionBarDefaultTitle"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x5

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "actionBarDefaultSelector"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x6

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1425
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/4 v9, 0x7

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1426
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$4200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/view/View;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayLine"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x8

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1427
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$4300(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x9

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1428
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xa

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1429
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xb

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1430
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xc

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1431
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xd

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1432
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xe

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1433
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0xf

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1434
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x10

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1435
    invoke-static {v10}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$4400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x11

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1437
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x12

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1438
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x13

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1439
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x14

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1440
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x15

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1441
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x16

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1442
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x17

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1443
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x18

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1444
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v16, 0x19

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1445
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v16, 0x1a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1446
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v9, 0x1b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1448
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x1c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1449
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x1d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1450
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x1e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1451
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x1f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1452
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x20

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1453
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x21

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1454
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x22

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1455
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v16, 0x23

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1456
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v16, 0x24

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1457
    invoke-static {v12}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v9, 0x25

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1459
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x26

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1460
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x27

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1461
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x28

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1462
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x29

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1463
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x2a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1464
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x2b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1465
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x2c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1466
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v16, 0x2d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1467
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v16, 0x2e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1468
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v9, 0x2f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1470
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x30

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1471
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x31

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1472
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x32

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1473
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x33

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1474
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x34

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1475
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x35

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1476
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v9, 0x36

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1477
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v9

    const/16 v16, 0x37

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1478
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    const/16 v16, 0x38

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1479
    invoke-static {v14}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v15, v16

    return-object v15
.end method

.method public needHideProgress()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public needShowProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-string/jumbo v1, "Loading"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    if-nez v3, :cond_1

    .line 223
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "a":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed()V

    .line 231
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v1}, Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V

    move v1, v2

    .line 233
    :cond_2
    return v1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 218
    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 126
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_2

    .line 133
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 139
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->classGuid:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 140
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 205
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->checkPermissions:Z

    .line 207
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 211
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 191
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 192
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity;->updateTheme()V

    .line 193
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 241
    :cond_0
    return-void
.end method

.method public setPage(IZLandroid/os/Bundle;Z)V
    .locals 9
    .param p1, "page"    # I
    .param p2, "animated"    # Z
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "back"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->doneButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    aget-object v2, v3, v4

    .line 276
    .local v2, "outView":Lorg/telegram/ui/Components/SlideView;
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v3, p1

    .line 277
    .local v1, "newView":Lorg/telegram/ui/Components/SlideView;
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity;->currentViewNum:I

    .line 279
    invoke-virtual {v1, p3, v7}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 282
    if-eqz p4, :cond_2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SlideView;->setX(F)V

    .line 284
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 285
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 287
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/Animator;

    const-string/jumbo v5, "translationX"

    new-array v6, v8, [F

    if-eqz p4, :cond_3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    :goto_2
    aput v3, v6, v7

    .line 288
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v7

    const-string/jumbo v3, "translationX"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 289
    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v8

    .line 287
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 290
    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$2;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/ChangePhoneActivity$2;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Lorg/telegram/ui/Components/SlideView;Lorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 303
    return-void

    .line 270
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "newView":Lorg/telegram/ui/Components/SlideView;
    .end local v2    # "outView":Lorg/telegram/ui/Components/SlideView;
    :cond_0
    if-nez p1, :cond_1

    .line 271
    iput-boolean v8, p0, Lorg/telegram/ui/ChangePhoneActivity;->checkPermissions:Z

    .line 273
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    .restart local v1    # "newView":Lorg/telegram/ui/Components/SlideView;
    .restart local v2    # "outView":Lorg/telegram/ui/Components/SlideView;
    :cond_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    goto :goto_1

    .line 287
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_2
.end method

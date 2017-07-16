.class public Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityRecoverView"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/TextView;

.field private codeField:Landroid/widget/EditText;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private email_unconfirmed_pattern:Ljava/lang/String;

.field private nextPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 11
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x2

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2457
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 2458
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 2460
    invoke-virtual {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->setOrientation(I)V

    .line 2462
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2465
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2467
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "RestoreEmailSentInfo"

    const v4, 0x7f070539

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2468
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v7

    :goto_1
    invoke-static {v10, v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    .line 2471
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-static {p2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2476
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "PasswordCode"

    const v4, 0x7f070489

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2477
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2478
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2479
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2481
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 2482
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2484
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    move v0, v7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 2485
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/16 v4, 0x14

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2486
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2497
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    .line 2498
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    move v0, v7

    :goto_3
    or-int/lit8 v0, v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2500
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2501
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2502
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2503
    iget-object v9, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    :goto_4
    or-int/lit8 v2, v7, 0x50

    const/16 v6, 0xe

    move v0, v10

    move v1, v10

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2523
    return-void

    :cond_0
    move v0, v8

    .line 2465
    goto/16 :goto_0

    :cond_1
    move v0, v8

    .line 2468
    goto/16 :goto_1

    :cond_2
    move v0, v8

    .line 2484
    goto/16 :goto_2

    :cond_3
    move v0, v8

    .line 2498
    goto :goto_3

    :cond_4
    move v7, v8

    .line 2503
    goto :goto_4
.end method

.method static synthetic access$6602(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 2447
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 2447
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V

    return-void
.end method

.method static synthetic access$7800(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .prologue
    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .prologue
    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .prologue
    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private onPasscodeError(Z)V
    .locals 4
    .param p1, "clear"    # Z

    .prologue
    .line 2550
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2561
    :goto_0
    return-void

    .line 2553
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2554
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 2555
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2557
    :cond_1
    if-eqz p1, :cond_2

    .line 2558
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2560
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2532
    const-string/jumbo v0, "LoginPassword"

    const v1, 0x7f070362

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    .prologue
    .line 2527
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2632
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    .line 2633
    return-void
.end method

.method public onNextPressed()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2565
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    if-eqz v3, :cond_0

    .line 2628
    :goto_0
    return-void

    .line 2569
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2570
    .local v1, "oldPassword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2571
    invoke-direct {p0, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V

    goto :goto_0

    .line 2574
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    .line 2576
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2577
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 2578
    invoke-direct {p0, v4}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V

    goto :goto_0

    .line 2581
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 2582
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;-><init>()V

    .line 2583
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    .line 2584
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    const/16 v5, 0xa

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 2637
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2640
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2642
    :cond_0
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2657
    const-string/jumbo v1, "recoveryview_params"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    .line 2658
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2659
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->setParams(Landroid/os/Bundle;Z)V

    .line 2661
    :cond_0
    const-string/jumbo v1, "recoveryview_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2662
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2663
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2665
    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2646
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2647
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2648
    const-string/jumbo v1, "recoveryview_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 2651
    const-string/jumbo v1, "recoveryview_params"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2653
    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 2537
    if-nez p1, :cond_0

    .line 2547
    :goto_0
    return-void

    .line 2540
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2541
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    .line 2542
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string/jumbo v1, "email_unconfirmed_pattern"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 2543
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "RestoreEmailTrouble"

    const v2, 0x7f07053a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2545
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 2546
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

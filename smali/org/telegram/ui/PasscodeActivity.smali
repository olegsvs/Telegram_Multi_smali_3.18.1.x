.class public Lorg/telegram/ui/PasscodeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1

.field private static final password_item:I = 0x3

.field private static final pin_item:I = 0x2


# instance fields
.field private autoLockDetailRow:I

.field private autoLockRow:I

.field private captureDetailRow:I

.field private captureRow:I

.field private changePasscodeRow:I

.field private currentPasswordType:I

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private fingerprintRow:I

.field private firstPassword:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private passcodeDetailRow:I

.field private passcodeRow:I

.field private passcodeSetStep:I

.field private passwordEditText:Landroid/widget/EditText;

.field private rowCount:I

.field private titleTextView:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 79
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 80
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 99
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PasscodeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    return v0
.end method

.method private fixLayoutInternal()V
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_1

    .line 595
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 597
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 606
    :cond_1
    :goto_1
    return-void

    .line 597
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 603
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method private onPasscodeError()V
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 587
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 588
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 590
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method

.method private processDone()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 535
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v5, :cond_3

    .line 540
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "PasscodeDoNotMatch"

    const v5, 0x7f070485

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 547
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v3, 0x10

    :try_start_1
    new-array v3, v3, [B

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 553
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v4, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 554
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 555
    .local v2, "passcodeBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x20

    new-array v0, v3, [B

    .line 556
    .local v0, "bytes":[B
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    const/4 v3, 0x0

    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    array-length v5, v2

    add-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    .end local v0    # "bytes":[B
    .end local v2    # "passcodeBytes":[B
    :goto_2
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v3, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 565
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 566
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->finishFragment()V

    .line 567
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 568
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 569
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_0

    .line 560
    :catch_1
    move-exception v1

    .line 561
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 570
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 571
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 572
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    goto/16 :goto_0

    .line 576
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 577
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 578
    new-instance v3, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {p0, v3, v5}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0
.end method

.method private processNext()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 519
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 532
    :goto_0
    return-void

    .line 522
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PasscodePIN"

    const v2, 0x7f070486

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "ReEnterYourPasscode"

    const v2, 0x7f07050a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PasscodePassword"

    const v2, 0x7f070487

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDropDownTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 497
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v1, :cond_4

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v2, "PasscodePIN"

    const v3, 0x7f070486

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_1

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_5

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v1, :cond_5

    .line 504
    :cond_2
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 505
    .local v0, "filterArray":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "1234567890"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 514
    .end local v0    # "filterArray":[Landroid/text/InputFilter;
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 515
    return-void

    .line 499
    :cond_4
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-ne v1, v4, :cond_0

    .line 500
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v2, "PasscodePassword"

    const v3, 0x7f070487

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :cond_5
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_6

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eq v1, v4, :cond_7

    :cond_6
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_3

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v1, v4, :cond_3

    .line 510
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 511
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 512
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method

.method private updateRows()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 444
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    .line 445
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    .line 446
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    .line 447
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    .line 448
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 450
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 451
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 452
    .local v1, "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 460
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 461
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    .line 462
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    .line 470
    :goto_1
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 464
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    .line 465
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    .line 466
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    .line 467
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 468
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    goto :goto_1
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 427
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 147
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    .line 148
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    check-cast v8, Landroid/widget/FrameLayout;

    .line 150
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 153
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 154
    .local v11, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 155
    .local v7, "done":Landroid/graphics/drawable/Drawable;
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    const/4 v0, 0x1

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v9, v0, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 160
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "EnterNewPasscode"

    const v2, 0x7f07023c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    iget-object v12, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x42180000    # 38.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 180
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 187
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 190
    iget-object v12, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 248
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 249
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 250
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    const-string/jumbo v2, "PasscodePIN"

    const v3, 0x7f070486

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    const-string/jumbo v2, "PasscodePassword"

    const v3, 0x7f070487

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 254
    iget-object v12, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v13, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x42800000    # 64.0f

    :goto_2
    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "actionBarDefaultTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "actionBarDefaultTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 275
    iget-object v12, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v13, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    .line 399
    .end local v7    # "done":Landroid/graphics/drawable/Drawable;
    .end local v9    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 163
    .restart local v7    # "done":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "EnterNewFirstPasscode"

    const v2, 0x7f07023b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "EnterCurrentPasscode"

    const v2, 0x7f070237

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1

    .line 254
    :cond_4
    const/high16 v3, 0x42600000    # 56.0f

    goto/16 :goto_2

    .line 277
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Passcode"

    const v2, 0x7f070484

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 282
    .end local v7    # "done":Landroid/graphics/drawable/Drawable;
    .end local v9    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v11    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Passcode"

    const v2, 0x7f070484

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 284
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 285
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 286
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 287
    .local v10, "preferences":Landroid/content/SharedPreferences;
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$6;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 433
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v0, :cond_0

    .line 434
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 441
    :cond_0
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 725
    const/16 v0, 0x1c

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText7"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 477
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$9;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 486
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 106
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 115
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 118
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 404
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 408
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 419
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    .line 420
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateTheme()V

    .line 421
    :cond_2
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 490
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 493
    :cond_0
    return-void
.end method

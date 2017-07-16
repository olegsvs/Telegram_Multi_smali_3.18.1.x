.class public Lorg/telegram/ui/ChangeUsernameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;,
        Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private helpTextView:Landroid/widget/TextView;

.field private ignoreCheck:Z

.field private infoText:Ljava/lang/CharSequence;

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChangeUsernameActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alert"    # Z

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const v7, 0x7f070662

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 264
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 381
    :cond_0
    :goto_1
    return v3

    .line 266
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 273
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 274
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 275
    iget v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    if-eqz v5, :cond_3

    .line 276
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    invoke-virtual {v5, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 279
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    .line 280
    if-eqz p1, :cond_d

    .line 281
    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v4

    .line 285
    goto :goto_1

    .line 287
    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 289
    .local v1, "ch":C
    if-nez v0, :cond_7

    if-lt v1, v8, :cond_7

    if-gt v1, v9, :cond_7

    .line 290
    if-eqz p2, :cond_6

    .line 291
    const-string/jumbo v3, "UsernameInvalidStartNumber"

    const v5, 0x7f070665

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_3
    move v3, v4

    .line 297
    goto :goto_1

    .line 293
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidStartNumber"

    const v6, 0x7f070665

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 299
    :cond_7
    if-lt v1, v8, :cond_8

    if-le v1, v9, :cond_c

    :cond_8
    const/16 v5, 0x61

    if-lt v1, v5, :cond_9

    const/16 v5, 0x7a

    if-le v1, v5, :cond_c

    :cond_9
    const/16 v5, 0x41

    if-lt v1, v5, :cond_a

    const/16 v5, 0x5a

    if-le v1, v5, :cond_c

    :cond_a
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_c

    .line 300
    if-eqz p2, :cond_b

    .line 301
    const-string/jumbo v3, "UsernameInvalid"

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_4
    move v3, v4

    .line 307
    goto/16 :goto_1

    .line 303
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 287
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 311
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_10

    .line 312
    :cond_e
    if-eqz p2, :cond_f

    .line 313
    const-string/jumbo v3, "UsernameInvalidShort"

    const v5, 0x7f070664

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_5
    move v3, v4

    .line 319
    goto/16 :goto_1

    .line 315
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidShort"

    const v6, 0x7f070664

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 317
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 321
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_12

    .line 322
    if-eqz p2, :cond_11

    .line 323
    const-string/jumbo v3, "UsernameInvalidLong"

    const v5, 0x7f070663

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_6
    move v3, v4

    .line 329
    goto/16 :goto_1

    .line 325
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidLong"

    const v6, 0x7f070663

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 327
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 332
    :cond_12
    if-nez p2, :cond_0

    .line 333
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 334
    .local v2, "currentName":Ljava/lang/String;
    if-nez v2, :cond_13

    .line 335
    const-string/jumbo v2, ""

    .line 337
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 338
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "UsernameAvailable"

    const v7, 0x7f07065c

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteGreenText"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 340
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteGreenText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 344
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameChecking"

    const v6, 0x7f07065d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 346
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteGrayText8"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 348
    new-instance v4, Lorg/telegram/ui/ChangeUsernameActivity$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$5;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 379
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method private saveName()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 385
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v9}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 389
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 392
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 393
    .local v0, "currentName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 394
    const-string/jumbo v0, ""

    .line 396
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    goto :goto_0

    .line 402
    :cond_3
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 403
    .local v2, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v6, "Loading"

    const v7, 0x7f070356

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 405
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 407
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;-><init>()V

    .line 408
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;->username:Ljava/lang/String;

    .line 410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 411
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ChangeUsernameActivity$6;

    invoke-direct {v7, p0, v2, v3}, Lorg/telegram/ui/ChangeUsernameActivity$6;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 447
    .local v4, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ChangeUsernameActivity;->classGuid:I

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 449
    const/4 v6, -0x2

    const-string/jumbo v7, "Cancel"

    const v8, 0x7f0700f0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChangeUsernameActivity$7;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/ChangeUsernameActivity$7;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;I)V

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 460
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 257
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Username"

    const v2, 0x7f07065b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 140
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 141
    .local v10, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 142
    .local v7, "done":Landroid/graphics/drawable/Drawable;
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 143
    const/4 v0, 0x1

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v9, v0, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    .line 144
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 145
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v11, :cond_0

    .line 146
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 149
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    .line 150
    iget-object v8, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    check-cast v8, Landroid/widget/LinearLayout;

    .line 151
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const v1, 0x2c000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "UsernamePlaceholder"

    const v2, 0x7f070666

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$4;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    iget-object v12, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_2
    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText8"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "UsernameHelp"

    const v2, 0x7f07065f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteLinkSelection"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 228
    iget-object v12, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    :goto_4
    const/16 v3, 0x18

    const/16 v4, 0xa

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    if-eqz v11, :cond_1

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 169
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 217
    :cond_3
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 218
    :cond_4
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 223
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 228
    :cond_6
    const/4 v2, 0x3

    goto :goto_4
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 473
    const/16 v0, 0xd

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string/jumbo v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string/jumbo v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string/jumbo v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "windowBackgroundWhiteGrayText8"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "windowBackgroundWhiteRedText4"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "windowBackgroundWhiteGreenText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "windowBackgroundWhiteGrayText8"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 244
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 245
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 247
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 248
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 249
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 251
    :cond_0
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->updateTheme()V

    .line 252
    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 469
    :cond_0
    return-void
.end method

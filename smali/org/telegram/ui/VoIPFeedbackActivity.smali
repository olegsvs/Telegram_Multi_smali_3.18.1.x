.class public Lorg/telegram/ui/VoIPFeedbackActivity;
.super Landroid/app/Activity;
.source "VoIPFeedbackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 121
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->overridePendingTransition(II)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/VoIPFeedbackActivity;->overridePendingTransition(II)V

    .line 37
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 39
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v11, "ll":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .line 42
    .local v12, "pad":I
    invoke-virtual {v11, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 44
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v13, "text":Landroid/widget/TextView;
    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    const-string/jumbo v0, "dialogTextBlack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    const/16 v0, 0x11

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    const-string/jumbo v0, "VoipRateCallAlert"

    const v1, 0x7f070693

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v8, Lorg/telegram/ui/Components/BetterRatingView;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/BetterRatingView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v8, "bar":Lorg/telegram/ui/Components/BetterRatingView;
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 55
    .local v10, "commentBox":Landroid/widget/EditText;
    const-string/jumbo v0, "VoipFeedbackCommentHint"

    const v1, 0x7f070683

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x24001

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 57
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 58
    const-string/jumbo v0, "dialogTextBlack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 59
    const-string/jumbo v0, "dialogTextHint"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 60
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    .line 64
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    .line 66
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFeedbackActivity$2;

    invoke-direct {v2, p0, v8, v10}, Lorg/telegram/ui/VoIPFeedbackActivity$2;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity;Lorg/telegram/ui/Components/BetterRatingView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    .line 90
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFeedbackActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFeedbackActivity$1;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    .line 97
    .local v7, "alert":Lorg/telegram/ui/ActionBar/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    new-instance v0, Lorg/telegram/ui/VoIPFeedbackActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFeedbackActivity$3;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 104
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v9

    .line 105
    .local v9, "btn":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    new-instance v0, Lorg/telegram/ui/VoIPFeedbackActivity$4;

    invoke-direct {v0, p0, v9, v10}, Lorg/telegram/ui/VoIPFeedbackActivity$4;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/BetterRatingView;->setOnRatingChangeListener(Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;)V

    .line 116
    return-void
.end method

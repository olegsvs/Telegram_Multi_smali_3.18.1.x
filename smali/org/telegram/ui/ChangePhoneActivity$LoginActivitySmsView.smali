.class public Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "ChangePhoneActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private codeField:Landroid/widget/EditText;

.field private volatile codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private emailPhone:Ljava/lang/String;

.field private ignoreOnTextChange:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private nextPressed:Z

.field private nextType:I

.field private openTime:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private problemText:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;

.field private volatile time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private waitingForEvent:Z

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V
    .locals 11
    .param p1, "this$0"    # Lorg/telegram/ui/ChangePhoneActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 871
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    .line 872
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 856
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    .line 857
    const v0, 0xea60

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    .line 858
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    .line 864
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 867
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 874
    iput p3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    .line 875
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->setOrientation(I)V

    .line 877
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 880
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 883
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 884
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 886
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 887
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f020206

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 888
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    .line 889
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x13

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    :goto_1
    const/high16 v3, 0x42a40000    # 82.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    :goto_2
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_3
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :goto_4
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "Code"

    const v2, 0x7f070185

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 911
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 943
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 949
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 953
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 954
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 957
    new-instance v0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    .line 958
    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string/jumbo v1, "DidNotGetTheCode"

    const v2, 0x7f0701f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 968
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    :goto_8
    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 996
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    :goto_9
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 997
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    :goto_a
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    .line 1000
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    :goto_b
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1006
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    :goto_c
    or-int/lit8 v2, v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const-string/jumbo v1, "WrongNumber"

    const v2, 0x7f0706b1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    return-void

    .line 880
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 890
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_3
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 892
    :cond_4
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a40000    # 82.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 892
    :cond_5
    const/4 v2, 0x3

    goto :goto_d

    .line 895
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 897
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_e
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x3

    goto :goto_e

    .line 953
    :cond_9
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 954
    :cond_a
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 963
    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_7

    .line 968
    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 996
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_d
    const/4 v0, 0x3

    goto/16 :goto_9

    .line 997
    :cond_e
    const/4 v0, 0x3

    goto/16 :goto_a

    .line 1000
    :cond_f
    const/4 v0, 0x3

    goto/16 :goto_b

    .line 1006
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_c
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->resendCode()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 839
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 839
    iput-wide p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 839
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 839
    iput-wide p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    return v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 839
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeout:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCodeTimer()V
    .locals 6

    .prologue
    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1159
    :cond_0
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    .line 1160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private createTimer()V
    .locals 6

    .prologue
    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1199
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private destroyCodeTimer()V
    .locals 3

    .prologue
    .line 1184
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1187
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1189
    :cond_0
    monitor-exit v2

    .line 1193
    :goto_0
    return-void

    .line 1189
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private destroyTimer()V
    .locals 3

    .prologue
    .line 1272
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1275
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1277
    :cond_0
    monitor-exit v2

    .line 1281
    :goto_0
    return-void

    .line 1277
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resendCode()V
    .locals 5

    .prologue
    .line 1027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1028
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1033
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->needShowProgress()V

    .line 1035
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1036
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1037
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1038
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$5;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1059
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1387
    iget-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    if-ne p1, v1, :cond_2

    .line 1391
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1392
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iput-boolean v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1394
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_0

    .line 1395
    :cond_2
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, v1, :cond_0

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1401
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iput-boolean v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1403
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1063
    const-string/jumbo v0, "YourCode"

    const v1, 0x7f0706c0

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1348
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1349
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1351
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1352
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1353
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1358
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1359
    return-void

    .line 1354
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1355
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1363
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 1364
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1365
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1366
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1371
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1372
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1373
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1374
    return-void

    .line 1367
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1368
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1369
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNextPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1285
    iget-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v1, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1288
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1289
    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v4, :cond_2

    .line 1290
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1291
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1296
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1297
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;-><init>()V

    .line 1298
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_number:Ljava/lang/String;

    .line 1299
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code:Ljava/lang/String;

    .line 1300
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code_hash:Ljava/lang/String;

    .line 1301
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowProgress()V

    .line 1303
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1292
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1293
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 1378
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1383
    :cond_0
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 13
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    const/4 v12, 0x3

    const/16 v5, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1068
    if-nez p1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iput-boolean v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1073
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_5

    .line 1074
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1075
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1081
    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1082
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 1083
    const-string/jumbo v3, "ephone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    .line 1084
    const-string/jumbo v3, "phoneFormated"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 1085
    const-string/jumbo v3, "phoneHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 1086
    const-string/jumbo v3, "timeout"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeout:I

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->openTime:I

    .line 1088
    const-string/jumbo v3, "nextType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    .line 1089
    const-string/jumbo v3, "pattern"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1090
    const-string/jumbo v3, "length"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    .line 1092
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    if-eqz v3, :cond_6

    .line 1093
    new-array v0, v10, [Landroid/text/InputFilter;

    .line 1094
    .local v0, "inputFilters":[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v4

    .line 1095
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1099
    .end local v0    # "inputFilters":[Landroid/text/InputFilter;
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    if-eqz v3, :cond_3

    .line 1100
    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->setVisibility(I)V

    .line 1103
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1107
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "number":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 1109
    .local v2, "str":Ljava/lang/CharSequence;
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v10, :cond_8

    .line 1110
    const-string/jumbo v3, "SentAppCode"

    const v6, 0x7f0705a3

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1118
    :cond_4
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-eq v3, v12, :cond_b

    .line 1121
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1122
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1127
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1128
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 1131
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v10, :cond_c

    .line 1132
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1076
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/CharSequence;
    :cond_5
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_2

    .line 1077
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1078
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1097
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-array v6, v4, [Landroid/text/InputFilter;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    :cond_7
    move v3, v5

    .line 1100
    goto :goto_3

    .line 1111
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    :cond_8
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_9

    .line 1112
    const-string/jumbo v3, "SentSmsCode"

    const v6, 0x7f0705a6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_4

    .line 1113
    :cond_9
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_a

    .line 1114
    const-string/jumbo v3, "SentCallCode"

    const v6, 0x7f0705a4

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_4

    .line 1115
    :cond_a
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 1116
    const-string/jumbo v3, "SentCallOnly"

    const v6, 0x7f0705a5

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_4

    .line 1124
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1134
    :cond_c
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_10

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_d

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v11, :cond_10

    .line 1135
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_f

    .line 1138
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v5, "CallText"

    const v6, 0x7f0700ea

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    :cond_e
    :goto_6
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_0

    .line 1139
    :cond_f
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v11, :cond_e

    .line 1140
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v5, "SmsText"

    const v6, 0x7f0705ed

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1143
    :cond_10
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_13

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_11

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v12, :cond_13

    .line 1144
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v6, "CallText"

    const v7, 0x7f0700ea

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    iget v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_12

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_0

    :cond_12
    move v4, v5

    .line 1146
    goto :goto_7

    .line 1149
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V

    goto/16 :goto_0
.end method

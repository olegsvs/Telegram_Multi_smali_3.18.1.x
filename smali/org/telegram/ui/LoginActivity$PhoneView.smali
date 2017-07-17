.class public Lorg/telegram/ui/LoginActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private codeField:Landroid/widget/EditText;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryButton:Landroid/widget/TextView;

.field private countryState:I

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private nextPressed:Z

.field private phoneField:Lorg/telegram/ui/Components/HintEditText;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 21
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 590
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 581
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    .line 582
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 583
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 586
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 593
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setOrientation(I)V

    .line 595
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const v3, 0x7f020251

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const-string/jumbo v3, "windowBackgroundWhiteGrayLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x3e740000    # -17.5f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 633
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 634
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 653
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 654
    .local v14, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v2, 0x37

    const/16 v3, 0x24

    const/high16 v4, -0x3ef00000    # -9.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 743
    new-instance v2, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setInputType(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setTextColor(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string/jumbo v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintTextColor(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setPadding(IIII)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/HintEditText;->setTextSize(IF)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setMaxLines(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setGravity(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setImeOptions(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, -0x1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 840
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string/jumbo v3, "StartText"

    const v4, 0x7f0705fb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteGrayText6"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    :goto_2
    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 850
    .local v15, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 852
    .local v18, "reader":Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 853
    const-string/jumbo v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v9, v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    array-length v2, v9

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x3

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 863
    .end local v9    # "args":[Ljava/lang/String;
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    .line 864
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 867
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    const/4 v10, 0x0

    .line 877
    .local v10, "country":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 878
    .local v19, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v19, :cond_1

    .line 879
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 885
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_5
    if-eqz v10, :cond_2

    .line 886
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 887
    .local v11, "countryName":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 889
    .local v13, "index":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_2

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 895
    .end local v11    # "countryName":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string/jumbo v3, "ChooseCountry"

    const v4, 0x7f070174

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 898
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 901
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 907
    :goto_6
    return-void

    .line 602
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    .end local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 844
    .restart local v14    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_5
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 846
    :cond_6
    const/4 v4, 0x3

    goto/16 :goto_2

    .line 862
    .restart local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 881
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "country":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 882
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 905
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/LoginActivity$PhoneView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # I

    .prologue
    .line 569
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 569
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public fillNumber()V
    .locals 17

    .prologue
    .line 1080
    :try_start_0
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1081
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    if-eqz v14, :cond_3

    .line 1082
    const/4 v2, 0x1

    .line 1083
    .local v2, "allowCall":Z
    const/4 v3, 0x1

    .line 1084
    .local v3, "allowSms":Z
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v14, v15, :cond_7

    .line 1085
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    const/4 v2, 0x1

    .line 1086
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "android.permission.RECEIVE_SMS"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    const/4 v3, 0x1

    .line 1087
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2100(Lorg/telegram/ui/LoginActivity;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 1088
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1089
    if-nez v2, :cond_0

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_0
    if-nez v3, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "android.permission.RECEIVE_SMS"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 1096
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mainconfig"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1097
    .local v9, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "firstloginshow"

    const/4 v15, 0x1

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "android.permission.RECEIVE_SMS"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1098
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string/jumbo v15, "firstloginshow"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1099
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "users"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1100
    .local v13, "users":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string/jumbo v15, "users_count"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1101
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v4, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    .local v4, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v14, "AppName"

    const v15, 0x7f070072

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1103
    const-string/jumbo v14, "OK"

    const v15, 0x7f0703b5

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1104
    const-string/jumbo v14, "AllowFillNumber"

    const v15, 0x7f07005c

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/ui/LoginActivity;->access$2302(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1145
    .end local v2    # "allowCall":Z
    .end local v3    # "allowSms":Z
    .end local v4    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .end local v13    # "users":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    return-void

    .line 1085
    .restart local v2    # "allowCall":Z
    .restart local v3    # "allowSms":Z
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1086
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1107
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1142
    .end local v2    # "allowCall":Z
    .end local v3    # "allowSms":Z
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    .line 1143
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1113
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "allowCall":Z
    .restart local v3    # "allowSms":Z
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    if-nez v2, :cond_8

    if-eqz v3, :cond_3

    .line 1114
    :cond_8
    :try_start_1
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, "number":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1116
    .local v11, "textToSet":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1117
    .local v8, "ok":Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1118
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_a

    .line 1119
    const/4 v1, 0x4

    .local v1, "a":I
    :goto_3
    const/4 v14, 0x1

    if-lt v1, v14, :cond_9

    .line 1120
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1121
    .local v10, "sub":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1122
    .local v5, "country":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 1123
    const/4 v8, 0x1

    .line 1124
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1125
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v14, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    .end local v5    # "country":Ljava/lang/String;
    .end local v10    # "sub":Ljava/lang/String;
    :cond_9
    if-nez v8, :cond_a

    .line 1130
    const/4 v14, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1131
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    .end local v1    # "a":I
    :cond_a
    if-eqz v11, :cond_3

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1119
    .restart local v1    # "a":I
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v10    # "sub":Ljava/lang/String;
    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1165
    const-string/jumbo v0, "YourPhone"

    const v1, 0x7f0706cc

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 925
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    if-eqz v1, :cond_0

    .line 926
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 933
    :goto_0
    return-void

    .line 929
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    goto :goto_0
.end method

.method public onNextPressed()V
    .locals 21

    .prologue
    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 946
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    if-eqz v17, :cond_6

    const/4 v15, 0x1

    .line 947
    .local v15, "simcardAvailable":Z
    :goto_1
    const/4 v3, 0x1

    .line 948
    .local v3, "allowCall":Z
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    if-eqz v15, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7

    const/4 v3, 0x1

    .line 950
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8

    const/4 v5, 0x1

    .line 951
    .local v5, "allowSms":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "android.permission.CALL_PHONE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_9

    const/4 v4, 0x1

    .line 952
    .local v4, "allowCancelCall":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 954
    if-nez v3, :cond_2

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_2
    if-nez v5, :cond_3

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_3
    if-nez v4, :cond_4

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.permission.CALL_PHONE"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.permission.WRITE_CALL_LOG"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.permission.READ_CALL_LOG"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_4
    const/4 v10, 0x1

    .line 966
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 967
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mainconfig"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 968
    .local v13, "preferences":Landroid/content/SharedPreferences;
    if-nez v4, :cond_a

    if-eqz v3, :cond_a

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    const/16 v19, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 990
    :goto_5
    if-nez v10, :cond_0

    .line 997
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "AppName"

    const v19, 0x7f070078

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ChooseCountry"

    const v20, 0x7f070174

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    .end local v3    # "allowCall":Z
    .end local v15    # "simcardAvailable":Z
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 949
    .restart local v3    # "allowCall":Z
    .restart local v15    # "simcardAvailable":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 950
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 951
    .restart local v5    # "allowSms":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 970
    .restart local v4    # "allowCancelCall":Z
    .restart local v10    # "ok":Z
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    const-string/jumbo v17, "firstlogin"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 971
    :cond_b
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v18, "firstlogin"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 972
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 973
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v17, "AppName"

    const v18, 0x7f070078

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 974
    const-string/jumbo v17, "OK"

    const v18, 0x7f070452

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    .line 976
    const-string/jumbo v17, "AllowReadCallAndSms"

    const v18, 0x7f070062

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 982
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 977
    :cond_c
    if-nez v5, :cond_d

    .line 978
    const-string/jumbo v17, "AllowReadSms"

    const v18, 0x7f070063

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 980
    :cond_d
    const-string/jumbo v17, "AllowReadCall"

    const v18, 0x7f070061

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 985
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    const/16 v19, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 986
    :catch_0
    move-exception v8

    .line 987
    .local v8, "ignore":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1000
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v8    # "ignore":Ljava/lang/Exception;
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "999"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "AppName"

    const v19, 0x7f070078

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "WrongCountry"

    const v20, 0x7f0706b0

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->length()I

    move-result v17

    if-nez v17, :cond_11

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "AppName"

    const v19, 0x7f070078

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "InvalidPhoneNumber"

    const v20, 0x7f0702f9

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1009
    :cond_11
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    .line 1010
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 1011
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1012
    .local v12, "phone":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->applyCountryPortNumber(Ljava/lang/String;)V

    .line 1013
    sget-object v17, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 1014
    sget v17, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    move/from16 v0, v17

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 1015
    iput-object v12, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 1016
    if-eqz v15, :cond_14

    if-eqz v3, :cond_14

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1017
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 1019
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v9

    .line 1020
    .local v9, "number":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 1021
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_12
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    .line 1022
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 1023
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .end local v9    # "number":Ljava/lang/String;
    :cond_13
    :goto_9
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v11, "params":Landroid/os/Bundle;
    const-string/jumbo v17, "phone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :try_start_2
    const-string/jumbo v17, "ephone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1041
    :goto_a
    const-string/jumbo v17, "phoneFormated"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1044
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/LoginActivity$PhoneView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/LoginActivity$PhoneView$7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;)V

    const/16 v19, 0x1b

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1016
    .end local v11    # "params":Landroid/os/Bundle;
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1021
    .restart local v9    # "number":Ljava/lang/String;
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1026
    :cond_16
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 1028
    .end local v9    # "number":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1029
    .local v7, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1030
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1037
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v7

    .line 1038
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1039
    const-string/jumbo v17, "ephone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 1148
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1149
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 1160
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 1161
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1182
    const-string/jumbo v2, "phoneview_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_0
    const-string/jumbo v2, "phoneview_phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "phone":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    const-string/jumbo v2, "phoneview_code"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "phone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1176
    const-string/jumbo v2, "phoneview_phone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_1
    return-void
.end method

.method public selectCountry(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 910
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 911
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 912
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 913
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 914
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    .local v1, "hint":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v1, :cond_1

    const/16 v3, 0x58

    const/16 v5, 0x2013

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 918
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 919
    iput-boolean v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 921
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    :cond_0
    return-void

    .line 917
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "hint":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

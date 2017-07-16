.class public Lorg/telegram/ui/Components/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;,
        Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;
    }
.end annotation


# static fields
.field private static final id_fingerprint_imageview:I = 0x3e9

.field private static final id_fingerprint_textview:I = 0x3e8


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundFrameLayout:Landroid/widget/FrameLayout;

.field private cancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private checkImage:Landroid/widget/ImageView;

.field private delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

.field private eraseView:Landroid/widget/ImageView;

.field private fingerprintDialog:Landroid/app/AlertDialog;

.field private fingerprintImageView:Landroid/widget/ImageView;

.field private fingerprintStatusTextView:Landroid/widget/TextView;

.field private keyboardHeight:I

.field private lettersTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numberFrameLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private numberTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numbersFrameLayout:Landroid/widget/FrameLayout;

.field private passcodeTextView:Landroid/widget/TextView;

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

.field private passwordFrameLayout:Landroid/widget/FrameLayout;

.field private rect:Landroid/graphics/Rect;

.field private selfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 414
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 422
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    .line 432
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->setWillNotDraw(Z)V

    .line 433
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->setVisibility(I)V

    .line 435
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    .line 436
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 437
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 438
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 439
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 440
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    .line 443
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 444
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 445
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 446
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 447
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, "imageView":Landroid/widget/ImageView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    const v6, 0x7f020204

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 454
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 456
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 457
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 462
    :goto_0
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 463
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 464
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 472
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 473
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 474
    const/high16 v6, 0x42780000    # 62.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 475
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 476
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .line 479
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 482
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 483
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 484
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 485
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 486
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    .line 490
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 491
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 492
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 493
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLines(I)V

    .line 494
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 495
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 496
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 497
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 500
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 502
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 503
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 504
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 505
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 506
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 507
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 519
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 537
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 554
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    .line 555
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v7, 0x7f020202

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 556
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 557
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v7, 0x7f020024

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 558
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 559
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 561
    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 562
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 563
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 564
    const/16 v6, 0x55

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 565
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 574
    .local v4, "lineFrameLayout":Landroid/widget/FrameLayout;
    const v6, 0x26ffffff

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 575
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 576
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 577
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 578
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 579
    const/16 v6, 0x53

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 580
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 581
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 582
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    .line 585
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 586
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 587
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 588
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 589
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 590
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    .line 594
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    .line 595
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v6, 0xa

    if-ge v0, v6, :cond_1

    .line 596
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 597
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    const/4 v6, 0x1

    const/high16 v7, 0x42100000    # 36.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 599
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 600
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 602
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 603
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 604
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 605
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 606
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v5, Landroid/widget/TextView;

    .end local v5    # "textView":Landroid/widget/TextView;
    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 610
    .restart local v5    # "textView":Landroid/widget/TextView;
    const/4 v6, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 611
    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 613
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 614
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 615
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 616
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 617
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 618
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    packed-switch v0, :pswitch_data_0

    .line 650
    :goto_2
    :pswitch_0
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 459
    .end local v0    # "a":I
    .end local v4    # "lineFrameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 460
    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 621
    .restart local v0    # "a":I
    .restart local v4    # "lineFrameLayout":Landroid/widget/FrameLayout;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :pswitch_1
    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 624
    :pswitch_2
    const-string/jumbo v6, "ABC"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 627
    :pswitch_3
    const-string/jumbo v6, "DEF"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 630
    :pswitch_4
    const-string/jumbo v6, "GHI"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 633
    :pswitch_5
    const-string/jumbo v6, "JKL"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 636
    :pswitch_6
    const-string/jumbo v6, "MNO"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 639
    :pswitch_7
    const-string/jumbo v6, "PQRS"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 642
    :pswitch_8
    const-string/jumbo v6, "TUV"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 645
    :pswitch_9
    const-string/jumbo v6, "WXYZ"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 652
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    .line 653
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 654
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    const v7, 0x7f020203

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 655
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 656
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 657
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 658
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 659
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 660
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    const/4 v0, 0x0

    :goto_3
    const/16 v6, 0xb

    if-ge v0, v6, :cond_3

    .line 662
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 663
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const v6, 0x7f020024

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 665
    const/16 v6, 0xa

    if-ne v0, v6, :cond_2

    .line 666
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$5;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 675
    :cond_2
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$6;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 721
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    const/16 v0, 0xa

    :goto_4
    if-ltz v0, :cond_4

    .line 722
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 723
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 724
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 725
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 726
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 727
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 728
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 730
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_4
    return-void

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PasscodeView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/PasscodeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PasscodeView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PasscodeView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PasscodeView;FI)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PasscodeView;)Landroid/support/v4/os/CancellationSignal;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/PasscodeView;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Landroid/support/v4/os/CancellationSignal;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object p1
.end method

.method private checkFingerprint()V
    .locals 19

    .prologue
    .line 845
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    .line 846
    .local v16, "parentActivity":Landroid/app/Activity;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    if-eqz v16, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v2, :cond_0

    .line 848
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v12

    .line 852
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 855
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v13

    .line 856
    .local v13, "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v13}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    new-instance v17, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 858
    .local v17, "relativeLayout":Landroid/widget/RelativeLayout;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 860
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 861
    .local v14, "fingerprintTextView":Landroid/widget/TextView;
    const v2, -0x6c6c6d

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    const/16 v2, 0x3e8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setId(I)V

    .line 863
    const v2, 0x1030208

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 864
    const-string/jumbo v2, "FingerprintInfo"

    const v3, 0x7f07024c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 866
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v15

    .line 867
    .local v15, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 868
    const/16 v2, 0x14

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 869
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200dc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x3

    const/16 v10, 0x3e8

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "FingerprintHelp"

    const v4, 0x7f07024b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v3, 0x10301f0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 882
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v15

    .line 883
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 884
    const/16 v2, 0x8

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 885
    const/4 v2, 0x6

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 886
    const/16 v2, 0x11

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f070078

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 891
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 892
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 893
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PasscodeView$10;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_2

    .line 905
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 912
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    .line 914
    new-instance v2, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v2}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    .line 916
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PasscodeView$11;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const/4 v7, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 948
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .end local v14    # "fingerprintTextView":Landroid/widget/TextView;
    .end local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 908
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v13    # "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .restart local v14    # "fingerprintTextView":Landroid/widget/TextView;
    .restart local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_2
    move-exception v12

    .line 909
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private onPasscodeError()V
    .locals 4

    .prologue
    .line 797
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 798
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 799
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 801
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    .line 802
    return-void
.end method

.method private processDone(Z)V
    .locals 8
    .param p1, "fingerprint"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 737
    if-nez p1, :cond_4

    .line 738
    const-string/jumbo v1, ""

    .line 739
    .local v1, "password":Ljava/lang/String;
    sget v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v2, :cond_2

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object v1

    .line 744
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 745
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    .line 778
    .end local v1    # "password":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 741
    .restart local v1    # "password":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v2, v7, :cond_0

    .line 742
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 748
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 749
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 751
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    goto :goto_1

    .line 755
    .end local v1    # "password":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 758
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 759
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 760
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    const/high16 v5, 0x41a00000    # 20.0f

    .line 761
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    .line 762
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 760
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 763
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView$7;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 771
    sput-boolean v6, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 772
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 773
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 774
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 775
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    if-eqz v2, :cond_1

    .line 776
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;->didAcceptedPassword()V

    goto/16 :goto_1
.end method

.method private shakeTextView(FI)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 781
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 784
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 785
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationX"

    new-array v4, v4, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 786
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 787
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$8;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PasscodeView$8;-><init>(Lorg/telegram/ui/Components/PasscodeView;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private showFingerprintError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200db

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1057
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v2, -0xbaee2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1059
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1060
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 1061
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1063
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 1064
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 1181
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 1185
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_1

    .line 1186
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1187
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1189
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 1190
    .local v2, "scaleX":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1191
    .local v3, "scaleY":F
    cmpg-float v7, v2, v3

    if-gez v7, :cond_2

    move v1, v3

    .line 1192
    .local v1, "scale":F
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 1193
    .local v4, "width":I
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 1194
    .local v0, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 1195
    .local v5, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget v8, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 1196
    .local v6, "y":I
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v4

    add-int v9, v6, v0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1197
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "height":I
    .end local v1    # "scale":F
    .end local v4    # "width":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    move v1, v2

    .line 1191
    goto :goto_1

    .line 1200
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1162
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 1163
    .local v3, "usableViewHeight":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PasscodeView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1164
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    iput v4, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 1166
    sget v4, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 1167
    :cond_0
    const/4 v2, 0x0

    .line 1168
    .local v2, "t":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1169
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1171
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1172
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v2

    iget v5, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int v4, v5, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1173
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "t":I
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1177
    return-void

    .line 1172
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "t":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1068
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 1069
    .local v16, "width":I
    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v17, 0x0

    :goto_0
    sub-int v5, v18, v17

    .line 1073
    .local v5, "height":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1075
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v17, :cond_1

    div-int/lit8 v17, v16, 0x2

    :goto_1
    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1076
    const/high16 v17, 0x430c0000    # 140.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1077
    const/high16 v17, 0x430c0000    # 140.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1081
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1082
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1083
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1084
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    :goto_2
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x4

    .line 1116
    .local v11, "sizeBetweenNumbersX":I
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x5

    .line 1118
    .local v12, "sizeBetweenNumbersY":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_3
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ge v2, v0, :cond_8

    .line 1121
    if-nez v2, :cond_5

    .line 1122
    const/16 v9, 0xa

    .line 1128
    .local v9, "num":I
    :goto_4
    div-int/lit8 v10, v9, 0x3

    .line 1129
    .local v10, "row":I
    rem-int/lit8 v3, v9, 0x3

    .line 1131
    .local v3, "col":I
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1133
    .local v13, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1134
    .local v14, "textView1":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1135
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1136
    .local v7, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v15, v12, v17

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1137
    .local v15, "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1138
    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x42200000    # 40.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1139
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "textView":Landroid/widget/TextView;
    .end local v14    # "textView1":Landroid/widget/TextView;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1150
    .local v4, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1151
    .restart local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x41880000    # 17.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v15, v17

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1152
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x41c80000    # 25.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1153
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1069
    .end local v2    # "a":I
    .end local v3    # "col":I
    .end local v4    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "height":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "num":I
    .end local v10    # "row":I
    .end local v11    # "sizeBetweenNumbersX":I
    .end local v12    # "sizeBetweenNumbersY":I
    .end local v15    # "top":I
    :cond_0
    sget v17, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_0

    .restart local v5    # "height":I
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move/from16 v17, v16

    .line 1075
    goto/16 :goto_1

    .line 1087
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v15, 0x0

    .line 1088
    .restart local v15    # "top":I
    const/4 v8, 0x0

    .line 1089
    .local v8, "left":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1090
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 1091
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v16, v17

    div-int/lit8 v8, v17, 0x2

    .line 1092
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 1094
    :cond_3
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    if-le v5, v0, :cond_4

    .line 1095
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v15, v17, 0x2

    .line 1096
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1099
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1100
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1101
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1102
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1103
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1108
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1109
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1110
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1111
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 1123
    .end local v8    # "left":I
    .end local v15    # "top":I
    .restart local v2    # "a":I
    .restart local v11    # "sizeBetweenNumbersX":I
    .restart local v12    # "sizeBetweenNumbersY":I
    :cond_5
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_6

    .line 1124
    const/16 v9, 0xb

    .restart local v9    # "num":I
    goto/16 :goto_4

    .line 1126
    .end local v9    # "num":I
    :cond_6
    add-int/lit8 v9, v2, -0x1

    .restart local v9    # "num":I
    goto/16 :goto_4

    .line 1142
    .restart local v3    # "col":I
    .restart local v10    # "row":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1143
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v17, v17, v12

    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v15, v17, v18

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1144
    .restart local v15    # "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1145
    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v15, v15, v17

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 1156
    .end local v3    # "col":I
    .end local v9    # "num":I
    .end local v10    # "row":I
    .end local v15    # "top":I
    :cond_8
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1157
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 826
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 829
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_1
    :goto_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 837
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :cond_2
    :goto_1
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 840
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 805
    sget v0, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 810
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$9;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 820
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    .line 821
    return-void
.end method

.method public onShow()V
    .locals 13

    .prologue
    .line 955
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 956
    .local v6, "parentActivity":Landroid/app/Activity;
    sget v10, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 957
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 958
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 959
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 970
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    .line 971
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    .line 1053
    :goto_1
    return-void

    .line 962
    :cond_1
    if-eqz v6, :cond_0

    .line 963
    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 964
    .local v1, "currentFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 966
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 974
    .end local v1    # "currentFocus":Landroid/view/View;
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->setAlpha(F)V

    .line 975
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->setTranslationY(F)V

    .line 976
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "mainconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 977
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "selectedBackground"

    const v11, 0xf4241

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 978
    .local v8, "selectedBackground":I
    const v10, 0xf4241

    if-ne v8, v10, :cond_5

    .line 980
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1019
    :cond_3
    :goto_2
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const-string/jumbo v11, "EnterYourPasscode"

    const v12, 0x7f07023e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    sget v10, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v10, :cond_8

    .line 1028
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1029
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1030
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setVisibility(I)V

    .line 1031
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    :cond_4
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->setVisibility(I)V

    .line 1043
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1044
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 1047
    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$12;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/PasscodeView$12;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 982
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 983
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7

    .line 984
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v11, -0x41000000    # -0.5f

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 985
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 986
    .local v9, "themePrefs":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v10, :cond_3

    .line 988
    const-string/jumbo v10, "chatSolidBGColor"

    const/4 v11, -0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 989
    .local v4, "mainColor":I
    const-string/jumbo v10, "chatGradientBG"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 990
    .local v5, "orientation":I
    if-nez v5, :cond_6

    .line 991
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 994
    :cond_6
    packed-switch v5, :pswitch_data_0

    .line 1005
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1008
    .local v2, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_4
    const-string/jumbo v10, "chatGradientBGColor"

    const/4 v11, -0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1009
    .local v3, "gradColor":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    const/4 v10, 0x0

    aput v4, v0, v10

    const/4 v10, 0x1

    aput v3, v0, v10

    .line 1010
    .local v0, "colors":[I
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 996
    .end local v0    # "colors":[I
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v3    # "gradColor":I
    :pswitch_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 997
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_4

    .line 999
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1000
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_4

    .line 1002
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1003
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_4

    .line 1015
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "mainColor":I
    .end local v5    # "orientation":I
    .end local v9    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 1032
    :cond_8
    sget v10, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1033
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/text/InputFilter;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1034
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/16 v11, 0x81

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 1035
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1036
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1037
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1038
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1039
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setVisibility(I)V

    .line 1040
    iget-object v10, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    .prologue
    .line 733
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    .line 734
    return-void
.end method

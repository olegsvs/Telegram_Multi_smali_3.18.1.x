.class public Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private catchedPhone:Ljava/lang/String;

.field private codeField:Landroid/widget/EditText;

.field private volatile codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private emailPhone:Ljava/lang/String;

.field private ignoreOnTextChange:Z

.field private isRestored:Z

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

.field private progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private volatile time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private waitingForEvent:Z

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 12
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1227
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 1228
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 1211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    .line 1212
    const v0, 0xea60

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 1213
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 1219
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 1222
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1230
    iput p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    .line 1231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setOrientation(I)V

    .line 1233
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1236
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1239
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1240
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1243
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f020206

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1244
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    .line 1245
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

    .line 1246
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

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

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    :goto_2
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_3
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :goto_4
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "Code"

    const v2, 0x7f070185

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1268
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1300
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1306
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1310
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1311
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

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

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1314
    new-instance v0, Lorg/telegram/ui/LoginActivity$ProgressView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/LoginActivity$ProgressView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    .line 1315
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string/jumbo v1, "DidNotGetTheCode"

    const v2, 0x7f0701f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1326
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

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

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1353
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1354
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    :goto_9
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1355
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    :goto_a
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1358
    .local v10, "wrongNumber":Landroid/widget/TextView;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    :goto_b
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1359
    const-string/jumbo v0, "windowBackgroundWhiteBlueText4"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1362
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1363
    const/4 v0, 0x0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1364
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

    .line 1365
    const-string/jumbo v0, "WrongNumber"

    const v1, 0x7f0706b1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    return-void

    .line 1236
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v10    # "wrongNumber":Landroid/widget/TextView;
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1246
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_3
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 1248
    :cond_4
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

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

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
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

    .line 1248
    :cond_5
    const/4 v2, 0x3

    goto :goto_d

    .line 1251
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 1253
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_e
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x3

    goto :goto_e

    .line 1310
    :cond_9
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 1311
    :cond_a
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 1320
    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_7

    .line 1326
    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 1354
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_d
    const/4 v0, 0x3

    goto/16 :goto_9

    .line 1355
    :cond_e
    const/4 v0, 0x3

    goto/16 :goto_a

    .line 1358
    .restart local v10    # "wrongNumber":Landroid/widget/TextView;
    :cond_f
    const/4 v0, 0x3

    goto/16 :goto_b

    .line 1364
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_c
.end method

.method static synthetic access$200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1193
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 1193
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 1193
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 1193
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 1193
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeout:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCodeTimer()V
    .locals 6

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1541
    :cond_0
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 1542
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private createTimer()V
    .locals 6

    .prologue
    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1650
    :goto_0
    return-void

    .line 1581
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private destroyCodeTimer()V
    .locals 3

    .prologue
    .line 1566
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1568
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1569
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1571
    :cond_0
    monitor-exit v2

    .line 1575
    :goto_0
    return-void

    .line 1571
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private destroyTimer()V
    .locals 3

    .prologue
    .line 1654
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1657
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1659
    :cond_0
    monitor-exit v2

    .line 1663
    :goto_0
    return-void

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resendCode()V
    .locals 5

    .prologue
    .line 1385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1386
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string/jumbo v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1391
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1393
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1394
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1395
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1396
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1427
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

    .line 1840
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    if-ne p1, v1, :cond_2

    .line 1844
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1845
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

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

    .line 1846
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1847
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_0

    .line 1848
    :cond_2
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, v1, :cond_0

    .line 1849
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

    .line 1850
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1854
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 1855
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 1856
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeLoginPhoneCall(Ljava/lang/String;Z)V

    .line 1858
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1859
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1861
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1431
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

    .line 1801
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1802
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1803
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1804
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1805
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1806
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1811
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1812
    return-void

    .line 1807
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1808
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1809
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

    .line 1816
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 1817
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1818
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1819
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1824
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1825
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1826
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1827
    return-void

    .line 1820
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1821
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1822
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNextPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1667
    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v2, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1670
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1671
    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1672
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1673
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1678
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1679
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 1681
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 1682
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 1683
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 1684
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1685
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1686
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1674
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;
    :cond_2
    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1675
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1676
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 1831
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1836
    :cond_0
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsview_params_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1888
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1889
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setParams(Landroid/os/Bundle;Z)V

    .line 1891
    :cond_0
    const-string/jumbo v4, "catchedPhone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "catched":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1893
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 1895
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsview_code_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1896
    .local v1, "code":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1897
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    :cond_2
    const-string/jumbo v4, "time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1900
    .local v2, "t":I
    if-eqz v2, :cond_3

    .line 1901
    iput v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 1903
    :cond_3
    const-string/jumbo v4, "open"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1904
    .local v3, "t2":I
    if-eqz v3, :cond_4

    .line 1905
    iput v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    .line 1907
    :cond_4
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1867
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1868
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smsview_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1872
    const-string/jumbo v1, "catchedPhone"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smsview_params_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1877
    :cond_2
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-eqz v1, :cond_3

    .line 1878
    const-string/jumbo v1, "time"

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1880
    :cond_3
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    if-eqz v1, :cond_4

    .line 1881
    const-string/jumbo v1, "open"

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1883
    :cond_4
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 10
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 1436
    if-nez p1, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isRestored:Z

    .line 1440
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1442
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 1443
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1450
    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1451
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 1452
    const-string/jumbo v4, "ephone"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    .line 1453
    const-string/jumbo v4, "phoneFormated"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 1454
    const-string/jumbo v4, "phoneHash"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 1455
    const-string/jumbo v4, "timeout"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeout:I

    .line 1456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    .line 1457
    const-string/jumbo v4, "nextType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    .line 1458
    const-string/jumbo v4, "pattern"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1459
    const-string/jumbo v4, "length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    .line 1461
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-eqz v4, :cond_6

    .line 1462
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 1463
    .local v1, "inputFilters":[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v4

    .line 1464
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1468
    .end local v1    # "inputFilters":[Landroid/text/InputFilter;
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    if-eqz v4, :cond_3

    .line 1469
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Lorg/telegram/ui/LoginActivity$ProgressView;->setVisibility(I)V

    .line 1472
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1476
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1477
    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1478
    .local v3, "str":Ljava/lang/CharSequence;
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1479
    const-string/jumbo v4, "SentAppCode"

    const v5, 0x7f0705a3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1487
    :cond_4
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    .line 1490
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1491
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1496
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1497
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 1500
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1501
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1502
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1445
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/CharSequence;
    :cond_5
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1446
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1447
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1466
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    .line 1469
    :cond_7
    const/16 v4, 0x8

    goto :goto_3

    .line 1480
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/CharSequence;
    :cond_8
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 1481
    const-string/jumbo v4, "SentSmsCode"

    const v5, 0x7f0705a6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    .line 1482
    :cond_9
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 1483
    const-string/jumbo v4, "SentCallCode"

    const v5, 0x7f0705a4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_4

    .line 1484
    :cond_a
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 1485
    const-string/jumbo v4, "SentCallOnly"

    const v5, 0x7f0705a5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_4

    .line 1493
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1503
    :cond_c
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_d

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 1504
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1505
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1506
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 1507
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v5, "CallText"

    const v6, 0x7f0700ea

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    :cond_e
    :goto_6
    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isRestored:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, "callLogNumber":Ljava/lang/String;
    :goto_7
    if-eqz v0, :cond_11

    .line 1513
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1514
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1516
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto/16 :goto_0

    .line 1508
    .end local v0    # "callLogNumber":Ljava/lang/String;
    :cond_f
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    .line 1509
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v5, "SmsText"

    const v6, 0x7f0705ed

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1511
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .line 1517
    .restart local v0    # "callLogNumber":Ljava/lang/String;
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 1518
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1519
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1521
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto/16 :goto_0

    .line 1523
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_0

    .line 1525
    .end local v0    # "callLogNumber":Ljava/lang/String;
    :cond_13
    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_14

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    .line 1526
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1527
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string/jumbo v5, "CallText"

    const v6, 0x7f0700ea

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_15

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1529
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_0

    .line 1528
    :cond_15
    const/16 v4, 0x8

    goto :goto_8

    .line 1531
    :cond_16
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1532
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1533
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    goto/16 :goto_0
.end method

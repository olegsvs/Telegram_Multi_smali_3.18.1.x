.class public Lorg/telegram/ui/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IntroActivity$IntroAdapter;
    }
.end annotation


# instance fields
.field private bottomPages:Landroid/view/ViewGroup;

.field private icons:[I

.field private justCreated:Z

.field private lastPage:I

.field private messages:[I

.field private startPressed:Z

.field private titles:[I

.field private topImage1:Landroid/widget/ImageView;

.field private topImage2:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 48
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 49
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/IntroActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v13, 0x40800000    # 4.0f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v8, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 56
    const v6, 0x7f090008

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->setTheme(I)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v11}, Lorg/telegram/ui/IntroActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 61
    const v6, 0x7f030011

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    .line 62
    const v6, 0x7f0c0050

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "imageView":Landroid/view/View;
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 65
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "imageView":Landroid/view/View;
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_4

    .line 72
    new-array v6, v8, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 81
    new-array v6, v8, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 90
    new-array v6, v8, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    .line 128
    :goto_1
    const v6, 0x7f0c004d

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 129
    const v6, 0x7f0c004e

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 130
    .local v5, "startMessagingButton":Landroid/widget/TextView;
    const-string/jumbo v6, "StartMessaging"

    const v7, 0x7f0705fa

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 132
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 133
    .local v0, "animator":Landroid/animation/StateListAnimator;
    new-array v6, v11, [I

    const v7, 0x10100a7

    aput v7, v6, v10

    const-string/jumbo v7, "translationZ"

    const/4 v8, 0x2

    new-array v8, v8, [F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 134
    new-array v6, v10, [I

    const-string/jumbo v7, "translationZ"

    const/4 v8, 0x2

    new-array v8, v8, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 135
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 138
    .end local v0    # "animator":Landroid/animation/StateListAnimator;
    :cond_0
    const v6, 0x7f0c0065

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .local v1, "backToLastUserButton":Landroid/widget/TextView;
    const-string/jumbo v6, "userID"

    invoke-virtual {p0, v6, v10}, Lorg/telegram/ui/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 140
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "!firstLaunch?"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    .line 141
    const-string/jumbo v6, "AddUser"

    const v7, 0x7f07074e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    const v6, 0x7f07074f

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    .line 150
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 151
    .restart local v0    # "animator":Landroid/animation/StateListAnimator;
    new-array v6, v11, [I

    const v7, 0x10100a7

    aput v7, v6, v10

    const-string/jumbo v7, "translationZ"

    const/4 v8, 0x2

    new-array v8, v8, [F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 152
    new-array v6, v10, [I

    const-string/jumbo v7, "translationZ"

    const/4 v8, 0x2

    new-array v8, v8, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 155
    .end local v0    # "animator":Landroid/animation/StateListAnimator;
    :cond_1
    const v6, 0x7f0c004b

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    .line 156
    const v6, 0x7f0c004c

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    .line 157
    const v6, 0x7f0c004f

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    .line 158
    iget-object v6, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v6, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lorg/telegram/ui/IntroActivity$IntroAdapter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lorg/telegram/ui/IntroActivity$IntroAdapter;-><init>(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 160
    iget-object v6, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 161
    iget-object v6, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 162
    iget-object v6, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lorg/telegram/ui/IntroActivity$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/IntroActivity$1;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 237
    new-instance v6, Lorg/telegram/ui/IntroActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/IntroActivity$2;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v6, Lorg/telegram/ui/IntroActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/IntroActivity$3;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v6, :cond_2

    .line 265
    new-instance v6, Lorg/telegram/ui/IntroActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/IntroActivity$4;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 274
    :cond_2
    iput-boolean v11, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 275
    return-void

    .line 67
    .end local v1    # "backToLastUserButton":Landroid/widget/TextView;
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v5    # "startMessagingButton":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, v11}, Lorg/telegram/ui/IntroActivity;->setRequestedOrientation(I)V

    .line 68
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 100
    :cond_4
    new-array v6, v8, [I

    fill-array-data v6, :array_3

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 109
    new-array v6, v8, [I

    fill-array-data v6, :array_4

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 118
    new-array v6, v8, [I

    fill-array-data v6, :array_5

    iput-object v6, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    goto/16 :goto_1

    .line 146
    .restart local v1    # "backToLastUserButton":Landroid/widget/TextView;
    .restart local v4    # "sharedPref":Landroid/content/SharedPreferences;
    .restart local v5    # "startMessagingButton":Landroid/widget/TextView;
    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "state_user_0"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "userID"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 72
    :array_0
    .array-data 4
        0x7f02011d
        0x7f02011c
        0x7f02011b
        0x7f02011a
        0x7f020119
        0x7f020118
        0x7f020117
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x7f07047b
        0x7f070479
        0x7f070477
        0x7f070475
        0x7f070473
        0x7f070471
        0x7f07046f
    .end array-data

    .line 90
    :array_2
    .array-data 4
        0x7f07047a
        0x7f070478
        0x7f070476
        0x7f070474
        0x7f070472
        0x7f070470
        0x7f07046e
    .end array-data

    .line 100
    :array_3
    .array-data 4
        0x7f020117
        0x7f020118
        0x7f020119
        0x7f02011A
        0x7f02011B
        0x7f02011C
        0x7f02011D
    .end array-data

    .line 109
    :array_4
    .array-data 4
        0x7f07046f
        0x7f070471
        0x7f070473
        0x7f070475
        0x7f070477
        0x7f070479
        0x7f07047b
    .end array-data

    .line 118
    :array_5
    .array-data 4
        0x7f07046e
        0x7f070470
        0x7f070472
        0x7f070474
        0x7f070476
        0x7f070478
        0x7f07047a
    .end array-data
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 297
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 298
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 280
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    if-eqz v0, :cond_0

    .line 281
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 283
    iput v2, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 288
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 290
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 291
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 292
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 286
    iput v1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    goto :goto_0
.end method

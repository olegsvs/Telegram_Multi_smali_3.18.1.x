.class public Lorg/telegram/ui/Components/BotKeyboardView;
.super Landroid/widget/LinearLayout;
.source "BotKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;
    }
.end annotation


# instance fields
.field private botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private buttonHeight:I

.field private buttonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private container:Landroid/widget/LinearLayout;

.field private delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

.field private isFullSize:Z

.field private panelHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setOrientation(I)V

    .line 48
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotKeyboardView;->addView(Landroid/view/View;)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    const-string/jumbo v1, "chat_emojiPanelBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 55
    const-string/jumbo v1, "chat_emojiPanelBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/BotKeyboardView;->setBackgroundColor(I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotKeyboardView;)Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/BotKeyboardView;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    return-object v0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public invalidateViews()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public isFullSize()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    return v0
.end method

.method public setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V
    .locals 17
    .param p1, "buttons"    # Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .prologue
    .line 90
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 96
    .local v16, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatEmojiViewBGColor"

    const v3, -0xa0909

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 97
    .local v11, "bgColor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BotKeyboardView;->setBackgroundColor(I)V

    .line 98
    const-string/jumbo v2, "chatEmojiViewTabColor"

    const-string/jumbo v3, "themeColor"

    const/16 v5, -0x15

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 101
    .end local v11    # "bgColor":I
    .end local v16    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_0
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    .line 103
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-nez v2, :cond_2

    const/16 v2, 0x2a

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    .line 104
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 107
    .local v14, "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BotKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v13, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    const/high16 v4, 0x41700000    # 15.0f

    if-nez v9, :cond_3

    const/high16 v5, 0x41700000    # 15.0f

    :goto_3
    const/high16 v6, 0x41700000    # 15.0f

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v9, v7, :cond_4

    const/high16 v7, 0x41700000    # 15.0f

    :goto_4
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    .line 112
    .local v4, "weight":F
    const/4 v10, 0x0

    .local v10, "b":I
    :goto_5
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_6

    .line 113
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 114
    .local v12, "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BotKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v15, "textView":Landroid/widget/TextView;
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 116
    const-string/jumbo v2, "chat_botKeyboardButtonText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v15, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    const/16 v2, 0x11

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v3, "chat_botKeyboardButtonBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "chat_botKeyboardButtonBackgroundPressed"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v14, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v10, v7, :cond_5

    const/16 v7, 0xa

    :goto_6
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v2, Lorg/telegram/ui/Components/BotKeyboardView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BotKeyboardView$1;-><init>(Lorg/telegram/ui/Components/BotKeyboardView;)V

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 102
    .end local v4    # "weight":F
    .end local v9    # "a":I
    .end local v10    # "b":I
    .end local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v13    # "layout":Landroid/widget/LinearLayout;
    .end local v14    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .end local v15    # "textView":Landroid/widget/TextView;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 103
    :cond_2
    const/high16 v2, 0x42280000    # 42.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v3, v5

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    goto/16 :goto_1

    .line 109
    .restart local v9    # "a":I
    .restart local v13    # "layout":Landroid/widget/LinearLayout;
    .restart local v14    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 122
    .restart local v4    # "weight":F
    .restart local v10    # "b":I
    .restart local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .restart local v15    # "textView":Landroid/widget/TextView;
    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 104
    .end local v12    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v15    # "textView":Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 133
    .end local v4    # "weight":F
    .end local v9    # "a":I
    .end local v10    # "b":I
    .end local v13    # "layout":Landroid/widget/LinearLayout;
    .end local v14    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_7
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;)V
    .locals 0
    .param p1, "botKeyboardViewDelegate"    # Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    .line 60
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 9
    .param p1, "height"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    .line 64
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-nez v5, :cond_1

    const/16 v5, 0x2a

    :goto_0
    iput v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    .line 66
    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 67
    .local v1, "count":I
    iget v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 68
    .local v3, "newHeight":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 69
    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 70
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, v3, :cond_0

    .line 72
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 73
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "newHeight":I
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const/high16 v5, 0x42280000    # 42.0f

    iget v6, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method

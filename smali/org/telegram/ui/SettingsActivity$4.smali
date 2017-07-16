.class Lorg/telegram/ui/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-nez v23, :cond_1

    .line 649
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "TextSize"

    const v24, 0x7f070620

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 412
    new-instance v15, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 413
    .local v15, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 414
    const/16 v23, 0x1e

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 415
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 416
    invoke-virtual {v6, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 417
    const-string/jumbo v23, "Done"

    const v24, 0x7f070207

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lorg/telegram/ui/SettingsActivity$4$1;-><init>(Lorg/telegram/ui/SettingsActivity$4;Lorg/telegram/ui/Components/NumberPicker;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 437
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v15    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 438
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "mainconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 439
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v23, "view_animations"

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 440
    .local v5, "animations":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 441
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v24, "view_animations"

    if-nez v5, :cond_3

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 444
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v5, :cond_4

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 441
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .line 444
    .end local p1    # "view":Landroid/view/View;
    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    .line 446
    .end local v5    # "animations":Z
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 448
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 450
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 454
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 455
    .local v13, "message":Landroid/widget/TextView;
    new-instance v20, Landroid/text/SpannableString;

    const-string/jumbo v23, "AskAQuestionInfo"

    const v24, 0x7f07009f

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 456
    .local v20, "spanned":Landroid/text/Spannable;
    const/16 v23, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v24

    const-class v25, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/URLSpan;

    .line 457
    .local v21, "spans":[Landroid/text/style/URLSpan;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_8

    .line 458
    aget-object v18, v21, v4

    .line 459
    .local v18, "span":Landroid/text/style/URLSpan;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 460
    .local v22, "start":I
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 461
    .local v10, "end":I
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 462
    new-instance v19, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual/range {v18 .. v18}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 463
    .end local v18    # "span":Landroid/text/style/URLSpan;
    .local v19, "span":Landroid/text/style/URLSpan;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v10, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 465
    .end local v10    # "end":I
    .end local v19    # "span":Landroid/text/style/URLSpan;
    .end local v22    # "start":I
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const/16 v23, 0x1

    const/high16 v24, 0x41800000    # 16.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 467
    const-string/jumbo v23, "dialogTextLink"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 468
    const-string/jumbo v23, "dialogLinkSelection"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 469
    const/high16 v23, 0x41b80000    # 23.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x41b80000    # 23.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 470
    new-instance v23, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/SettingsActivity$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 471
    const-string/jumbo v23, "dialogTextBlack"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 475
    const-string/jumbo v23, "AskAQuestion"

    const v24, 0x7f07009e

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 476
    const-string/jumbo v23, "AskButton"

    const v24, 0x7f0700a0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$2;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 482
    const-string/jumbo v23, "Cancel"

    const v24, 0x7f0700f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 484
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "message":Landroid/widget/TextView;
    .end local v20    # "spanned":Landroid/text/Spannable;
    .end local v21    # "spans":[Landroid/text/style/URLSpan;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1200(Lorg/telegram/ui/SettingsActivity;)V

    goto/16 :goto_0

    .line 486
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 487
    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    goto/16 :goto_0

    .line 488
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 489
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "mainconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 490
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v23, "send_by_enter"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 491
    .local v17, "send":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 492
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v24, "send_by_enter"

    if-nez v17, :cond_c

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 494
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 495
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v17, :cond_d

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 492
    .restart local p1    # "view":Landroid/view/View;
    :cond_c
    const/16 v23, 0x0

    goto :goto_4

    .line 495
    .end local p1    # "view":Landroid/view/View;
    :cond_d
    const/16 v23, 0x0

    goto :goto_5

    .line 497
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "send":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 498
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toogleRaiseToSpeak()V

    .line 499
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 500
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 502
    .restart local p1    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 503
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleAutoplayGifs()V

    .line 504
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 505
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 507
    .restart local p1    # "view":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 508
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleSaveToGallery()V

    .line 509
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 510
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 512
    .restart local p1    # "view":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 513
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleCustomTabs()V

    .line 514
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 515
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 517
    .restart local p1    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 518
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleDirectShare()V

    .line 519
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 520
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 522
    .restart local p1    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 524
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 526
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 528
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ThemeActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ThemeActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 530
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 534
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "AreYouSure"

    const v24, 0x7f070089

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 536
    const-string/jumbo v23, "AppName"

    const v24, 0x7f070078

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 537
    const-string/jumbo v23, "OK"

    const v24, 0x7f070452

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$3;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 543
    const-string/jumbo v23, "Cancel"

    const v24, 0x7f0700f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 545
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const-string/jumbo v24, "TelegramFaqUrl"

    const v25, 0x7f070619

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const-string/jumbo v24, "PrivacyPolicyUrl"

    const v25, 0x7f0704fa

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 555
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v23, "SortBy"

    const v24, 0x7f0705f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 557
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "Default"

    const v26, 0x7f0701d7

    .line 558
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string/jumbo v25, "SortFirstName"

    const v26, 0x7f0705f4

    .line 559
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "SortLastName"

    const v26, 0x7f0705f5

    .line 560
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SettingsActivity$4$4;-><init>(Lorg/telegram/ui/SettingsActivity$4;I)V

    .line 557
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 573
    const-string/jumbo v23, "Cancel"

    const v24, 0x7f0700f0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 575
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 577
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ChangePhoneHelpActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 579
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/StickersActivity;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 581
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 585
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [Z

    .line 586
    .local v12, "maskValues":[Z
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v6, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 589
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 590
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 591
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 592
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_20

    const/16 v23, 0x2

    :goto_7
    move/from16 v0, v23

    if-ge v4, v0, :cond_22

    .line 593
    const/4 v14, 0x0

    .line 594
    .local v14, "name":Ljava/lang/String;
    if-nez v4, :cond_21

    .line 595
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v23, v0

    aput-boolean v23, v12, v4

    .line 596
    const-string/jumbo v23, "EmojiBigSize"

    const v24, 0x7f07021a

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 601
    :cond_1f
    :goto_8
    new-instance v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 602
    .local v8, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 603
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    const/16 v23, -0x1

    const/16 v24, 0x30

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    const-string/jumbo v23, ""

    aget-boolean v24, v12, v4

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v14, v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 606
    const-string/jumbo v23, "dialogTextBlack"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 607
    new-instance v23, Lorg/telegram/ui/SettingsActivity$4$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/telegram/ui/SettingsActivity$4$5;-><init>(Lorg/telegram/ui/SettingsActivity$4;[Z)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .end local v8    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v14    # "name":Ljava/lang/String;
    :cond_20
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 597
    .restart local v14    # "name":Ljava/lang/String;
    :cond_21
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_1f

    .line 598
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v23, v0

    aput-boolean v23, v12, v4

    .line 599
    const-string/jumbo v23, "EmojiUseDefault"

    const v24, 0x7f07021c

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 617
    .end local v14    # "name":Ljava/lang/String;
    :cond_22
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 618
    .local v7, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    const-string/jumbo v23, "Save"

    const v24, 0x7f070559

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 620
    const-string/jumbo v23, "dialogTextBlue2"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 621
    new-instance v23, Lorg/telegram/ui/SettingsActivity$4$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lorg/telegram/ui/SettingsActivity$4$6;-><init>(Lorg/telegram/ui/SettingsActivity$4;[ZI)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    const/16 v23, -0x1

    const/16 v24, 0x30

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 645
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v7    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v11    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v12    # "maskValues":[Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChangeAboutActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ChangeAboutActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

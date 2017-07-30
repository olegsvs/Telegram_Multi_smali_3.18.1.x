.class Lorg/telegram/ui/PlusSettingsActivity$3;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 40
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
    .line 378
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-nez v35, :cond_1

    .line 1429
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 382
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "EmojiPopupSize"

    const v36, 0x7f07021b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 384
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 385
    .local v16, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x3c

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 386
    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 387
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 388
    .local v17, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v36, "emojiPopupSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_2

    const/16 v35, 0x41

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 389
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 390
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 388
    :cond_2
    const/16 v35, 0x3c

    goto :goto_1

    .line 403
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 407
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "PhotoQuality"

    const v36, 0x7f0704d6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 409
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 410
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 411
    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 412
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 413
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 414
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$2;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$2;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 428
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 429
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 430
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 431
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showAndroidEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 432
    .local v10, "enabled":Z
    const-string/jumbo v36, "showAndroidEmoji"

    if-nez v10, :cond_6

    const/16 v35, 0x1

    :goto_2
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 434
    if-nez v10, :cond_7

    const/16 v35, 0x1

    :goto_3
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    .line 435
    sget-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-eqz v35, :cond_5

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-eqz v35, :cond_5

    .line 436
    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    .line 437
    const-string/jumbo v35, "drawSingleBigEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 439
    :cond_5
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 440
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 441
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_8

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 432
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    const/16 v35, 0x0

    goto :goto_2

    .line 434
    :cond_7
    const/16 v35, 0x0

    goto :goto_3

    .line 441
    .end local p2    # "view":Landroid/view/View;
    :cond_8
    const/16 v35, 0x0

    goto :goto_4

    .line 443
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "enabled":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 444
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 445
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 446
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "useDeviceFont"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 447
    .restart local v10    # "enabled":Z
    const-string/jumbo v36, "useDeviceFont"

    if-nez v10, :cond_a

    const/16 v35, 0x1

    :goto_5
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    if-nez v10, :cond_b

    const/16 v35, 0x1

    :goto_6
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->USE_DEVICE_FONT:Z

    .line 450
    const/16 v35, 0x1

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    .line 451
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$3;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$3;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 460
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 461
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_c

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 447
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    const/16 v35, 0x0

    goto :goto_5

    .line 449
    :cond_b
    const/16 v35, 0x0

    goto :goto_6

    .line 461
    .end local p2    # "view":Landroid/view/View;
    :cond_c
    const/16 v35, 0x0

    goto :goto_7

    .line 463
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "enabled":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_10

    .line 464
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 465
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableAudioStop"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 466
    .local v20, "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 467
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableAudioStop"

    if-nez v20, :cond_e

    const/16 v35, 0x1

    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 470
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_f

    const/16 v35, 0x1

    :goto_9
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 467
    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    const/16 v35, 0x0

    goto :goto_8

    .line 470
    .end local p2    # "view":Landroid/view/View;
    :cond_f
    const/16 v35, 0x0

    goto :goto_9

    .line 472
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    .line 473
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 474
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableMessageClick"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 475
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 476
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableMessageClick"

    if-nez v20, :cond_11

    const/16 v35, 0x1

    :goto_a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 479
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_12

    const/16 v35, 0x1

    :goto_b
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 476
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/16 v35, 0x0

    goto :goto_a

    .line 479
    .end local p2    # "view":Landroid/view/View;
    :cond_12
    const/16 v35, 0x0

    goto :goto_b

    .line 481
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_16

    .line 482
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 483
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareReplies"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 484
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 485
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareReplies"

    if-nez v20, :cond_14

    const/16 v35, 0x1

    :goto_c
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 488
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_15

    const/16 v35, 0x1

    :goto_d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 485
    .restart local p2    # "view":Landroid/view/View;
    :cond_14
    const/16 v35, 0x0

    goto :goto_c

    .line 488
    .end local p2    # "view":Landroid/view/View;
    :cond_15
    const/16 v35, 0x0

    goto :goto_d

    .line 490
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 491
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 492
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareToMenu"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 493
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 494
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareToMenu"

    if-nez v20, :cond_17

    const/16 v35, 0x1

    :goto_e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 496
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 497
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_18

    const/16 v35, 0x1

    :goto_f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 494
    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    const/16 v35, 0x0

    goto :goto_e

    .line 497
    .end local p2    # "view":Landroid/view/View;
    :cond_18
    const/16 v35, 0x0

    goto :goto_f

    .line 499
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_1c

    .line 500
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 501
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareFavsFirst"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 502
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 503
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareFavsFirst"

    if-nez v20, :cond_1a

    const/16 v35, 0x1

    :goto_10
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 506
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1b

    const/16 v35, 0x1

    :goto_11
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 503
    .restart local p2    # "view":Landroid/view/View;
    :cond_1a
    const/16 v35, 0x0

    goto :goto_10

    .line 506
    .end local p2    # "view":Landroid/view/View;
    :cond_1b
    const/16 v35, 0x0

    goto :goto_11

    .line 508
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_20

    .line 509
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 510
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showEditedMark"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 511
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 512
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showEditedMark"

    if-nez v20, :cond_1d

    const/16 v35, 0x1

    :goto_12
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    if-nez v20, :cond_1e

    const/16 v35, 0x1

    :goto_13
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowEditedMark:Z

    .line 515
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 516
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1f

    const/16 v35, 0x1

    :goto_14
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 512
    .restart local p2    # "view":Landroid/view/View;
    :cond_1d
    const/16 v35, 0x0

    goto :goto_12

    .line 514
    :cond_1e
    const/16 v35, 0x0

    goto :goto_13

    .line 516
    .end local p2    # "view":Landroid/view/View;
    :cond_1f
    const/16 v35, 0x0

    goto :goto_14

    .line 518
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    .line 519
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 520
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showDateToast"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 521
    .local v21, "show":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 522
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showDateToast"

    if-nez v21, :cond_21

    const/16 v35, 0x1

    :goto_15
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 525
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v21, :cond_22

    const/16 v35, 0x1

    :goto_16
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 522
    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    const/16 v35, 0x0

    goto :goto_15

    .line 525
    .end local p2    # "view":Landroid/view/View;
    :cond_22
    const/16 v35, 0x0

    goto :goto_16

    .line 527
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v21    # "show":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_27

    .line 528
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 529
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideLeftGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 530
    .local v12, "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_24

    const/16 v35, 0x1

    :goto_17
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    .line 531
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 532
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideLeftGroup"

    if-nez v12, :cond_25

    const/16 v35, 0x1

    :goto_18
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 535
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_26

    const/16 v35, 0x1

    :goto_19
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 530
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_24
    const/16 v35, 0x0

    goto :goto_17

    .line 532
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_25
    const/16 v35, 0x0

    goto :goto_18

    .line 535
    .end local p2    # "view":Landroid/view/View;
    :cond_26
    const/16 v35, 0x0

    goto :goto_19

    .line 537
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_2b

    .line 538
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 539
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideJoinedGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 540
    .restart local v12    # "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_28

    const/16 v35, 0x1

    :goto_1a
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideJoinedGroup:Z

    .line 541
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 542
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideJoinedGroup"

    if-nez v12, :cond_29

    const/16 v35, 0x1

    :goto_1b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 544
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 545
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2a

    const/16 v35, 0x1

    :goto_1c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 540
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_28
    const/16 v35, 0x0

    goto :goto_1a

    .line 542
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_29
    const/16 v35, 0x0

    goto :goto_1b

    .line 545
    .end local p2    # "view":Landroid/view/View;
    :cond_2a
    const/16 v35, 0x0

    goto :goto_1c

    .line 547
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_2e

    .line 548
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 549
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideBotKeyboard"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 550
    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 551
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideBotKeyboard"

    if-nez v12, :cond_2c

    const/16 v35, 0x1

    :goto_1d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 553
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 554
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2d

    const/16 v35, 0x1

    :goto_1e
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 551
    .restart local p2    # "view":Landroid/view/View;
    :cond_2c
    const/16 v35, 0x0

    goto :goto_1d

    .line 554
    .end local p2    # "view":Landroid/view/View;
    :cond_2d
    const/16 v35, 0x0

    goto :goto_1e

    .line 556
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    .line 557
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 558
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v35, :cond_30

    const/16 v35, 0x1

    :goto_1f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    .line 559
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 560
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabs"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-eqz v35, :cond_2f

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_2f

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    .line 569
    :cond_2f
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xa

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 570
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 571
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 558
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_30
    const/16 v35, 0x0

    goto :goto_1f

    .line 573
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_33

    .line 574
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 575
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-nez v35, :cond_32

    const/16 v35, 0x1

    :goto_20
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    .line 576
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 577
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 579
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 580
    .local v9, "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xf

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 583
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 584
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 575
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_32
    const/16 v35, 0x0

    goto :goto_20

    .line 586
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_35

    .line 587
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 588
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-nez v35, :cond_34

    const/16 v35, 0x1

    :goto_21
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    .line 589
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 590
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsShouldExpand"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 592
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xf

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 593
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 594
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 588
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_34
    const/16 v35, 0x0

    goto :goto_21

    .line 596
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_38

    .line 597
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    if-nez v35, :cond_37

    const/16 v35, 0x1

    :goto_22
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    .line 598
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 599
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 600
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotChangeHeaderTitle"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 602
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_36

    .line 603
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 605
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 597
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_37
    const/16 v35, 0x0

    goto :goto_22

    .line 606
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3a

    .line 607
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    if-nez v35, :cond_39

    const/16 v35, 0x1

    :goto_23
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    .line 608
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 609
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 610
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsScrolling"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 611
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 613
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 607
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_39
    const/16 v35, 0x0

    goto :goto_23

    .line 615
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3c

    .line 616
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 618
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-nez v35, :cond_3b

    const/16 v35, 0x1

    :goto_24
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    .line 619
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 620
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 622
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 623
    .restart local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 624
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xe

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 627
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 628
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 618
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3b
    const/16 v35, 0x0

    goto :goto_24

    .line 630
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3e

    .line 631
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    if-nez v35, :cond_3d

    const/16 v35, 0x1

    :goto_25
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    .line 632
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 633
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 634
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideSelectedTabIndicator"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 637
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 631
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3d
    const/16 v35, 0x0

    goto :goto_25

    .line 640
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_40

    .line 641
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 643
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v35, :cond_3f

    const/16 v35, 0x1

    :goto_26
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    .line 644
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 645
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsAnimation"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 646
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 647
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 648
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 649
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 643
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3f
    const/16 v35, 0x0

    goto :goto_26

    .line 651
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_42

    .line 652
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 653
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    if-nez v35, :cond_41

    const/16 v35, 0x1

    :goto_27
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    .line 654
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 655
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "infiniteTabsSwipe"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 657
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 658
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 653
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_41
    const/16 v35, 0x0

    goto :goto_27

    .line 660
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_44

    .line 661
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 662
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    if-nez v35, :cond_43

    const/16 v35, 0x1

    :goto_28
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    .line 663
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 664
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 665
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 666
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 667
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 662
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_43
    const/16 v35, 0x0

    goto :goto_28

    .line 669
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_46

    .line 670
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 671
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    if-nez v35, :cond_45

    const/16 v35, 0x1

    :goto_29
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    .line 672
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 673
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "limitTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 674
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 676
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 671
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_45
    const/16 v35, 0x0

    goto :goto_29

    .line 678
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_48

    .line 679
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 681
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    if-nez v35, :cond_47

    const/16 v35, 0x1

    :goto_2a
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    .line 682
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 683
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountChats"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 685
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 686
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 681
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_47
    const/16 v35, 0x0

    goto :goto_2a

    .line 688
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4a

    .line 689
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 690
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    if-nez v35, :cond_49

    const/16 v35, 0x1

    :goto_2b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    .line 691
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 692
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountNotMuted"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 694
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 695
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 690
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_49
    const/16 v35, 0x0

    goto :goto_2b

    .line 697
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4d

    .line 698
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 699
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-nez v35, :cond_4c

    const/16 v35, 0x1

    :goto_2c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    .line 700
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 701
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showUsername"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 708
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 709
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_4b

    .line 710
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 712
    :cond_4b
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 699
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4c
    const/16 v35, 0x0

    goto :goto_2c

    .line 713
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4f

    .line 714
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 715
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    if-nez v35, :cond_4e

    const/16 v35, 0x1

    :goto_2d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    .line 716
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 717
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "profileEnableGoToMsg"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 718
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 719
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 720
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 715
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4e
    const/16 v35, 0x0

    goto :goto_2d

    .line 722
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_52

    .line 723
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 724
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-nez v35, :cond_51

    const/16 v35, 0x1

    :goto_2e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    .line 725
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 726
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideMobile"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 728
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_50

    .line 729
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 731
    :cond_50
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 724
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_51
    const/16 v35, 0x0

    goto :goto_2e

    .line 732
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_56

    .line 733
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 734
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "keepOriginalFilename"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 735
    .local v13, "keep":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 736
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "keepOriginalFilename"

    if-nez v13, :cond_53

    const/16 v35, 0x1

    :goto_2f
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    if-nez v13, :cond_54

    const/16 v35, 0x1

    :goto_30
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    .line 739
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 740
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v13, :cond_55

    const/16 v35, 0x1

    :goto_31
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 736
    .restart local p2    # "view":Landroid/view/View;
    :cond_53
    const/16 v35, 0x0

    goto :goto_2f

    .line 738
    :cond_54
    const/16 v35, 0x0

    goto :goto_30

    .line 740
    .end local p2    # "view":Landroid/view/View;
    :cond_55
    const/16 v35, 0x0

    goto :goto_31

    .line 742
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "keep":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_57

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 746
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 747
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnContactPic"

    const v36, 0x7f070181

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 748
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070550

    .line 749
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f0705dd

    .line 750
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f0705de

    .line 751
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$4;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$4;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 748
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 766
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_58

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 770
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 771
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnGroupPic"

    const v36, 0x7f070182

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 772
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070550

    .line 773
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f0705dd

    .line 774
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f0705de

    .line 775
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$5;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 772
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 790
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_59

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 794
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsTextSize"

    const v36, 0x7f070613

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 796
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 797
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 798
    const/16 v35, 0x12

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 799
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 800
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 801
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$6;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$6;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 819
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5a

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 823
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 824
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsHeight"

    const v36, 0x7f070612

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 825
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 826
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1e

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 827
    const/16 v35, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 829
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 830
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 831
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$7;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$7;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 846
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5b

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    new-instance v36, Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/ui/PlusManageTabsActivity;-><init>()V

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 848
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5c

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 852
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 853
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 854
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$8;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 864
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5d

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 868
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4200(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 870
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$9;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$9;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 895
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5e

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 899
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 900
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4400(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 901
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 902
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showMySettings"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 903
    .local v3, "FLAGS":I
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$10;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/PlusSettingsActivity$3$10;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/content/SharedPreferences;I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 916
    .end local v3    # "FLAGS":I
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5f

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 920
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-static {v0, v5, v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4600(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;

    .line 922
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$11;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$11;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 931
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_63

    .line 932
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 933
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "invertMessagesOrder"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 934
    .local v19, "scr":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 935
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "invertMessagesOrder"

    if-nez v19, :cond_61

    const/16 v35, 0x1

    :goto_32
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 936
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 937
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_60

    .line 938
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v19, :cond_62

    const/16 v35, 0x1

    :goto_33
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 940
    :cond_60
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 935
    .restart local p2    # "view":Landroid/view/View;
    :cond_61
    const/16 v35, 0x0

    goto :goto_32

    .line 938
    .end local p2    # "view":Landroid/view/View;
    :cond_62
    const/16 v35, 0x0

    goto :goto_33

    .line 941
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "scr":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_65

    .line 942
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 943
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    if-nez v35, :cond_64

    const/16 v35, 0x1

    :goto_34
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    .line 944
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 945
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideNotificationsIfPlaying"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 947
    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    .line 948
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 949
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 943
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_64
    const/16 v35, 0x0

    goto :goto_34

    .line 951
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_67

    .line 952
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 953
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    if-nez v35, :cond_66

    const/16 v35, 0x1

    :goto_35
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    .line 954
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 955
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableDirectReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 956
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 957
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 958
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 953
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_66
    const/16 v35, 0x0

    goto :goto_35

    .line 960
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_6c

    .line 961
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 962
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 963
    .local v4, "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 964
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showQuickBar"

    if-nez v4, :cond_69

    const/16 v35, 0x1

    :goto_36
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 965
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 966
    if-nez v4, :cond_6a

    const/16 v35, 0x1

    :goto_37
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 967
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_68

    .line 968
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_6b

    const/16 v35, 0x1

    :goto_38
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 970
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 964
    .restart local p2    # "view":Landroid/view/View;
    :cond_69
    const/16 v35, 0x0

    goto :goto_36

    .line 966
    :cond_6a
    const/16 v35, 0x0

    goto :goto_37

    .line 968
    .end local p2    # "view":Landroid/view/View;
    :cond_6b
    const/16 v35, 0x0

    goto :goto_38

    .line 973
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_6f

    .line 974
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 975
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    if-nez v35, :cond_6e

    const/16 v35, 0x1

    :goto_39
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    .line 976
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 977
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "photoViewerHideStatusBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_6d

    .line 980
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 982
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 975
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_6e
    const/16 v35, 0x0

    goto :goto_39

    .line 985
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_73

    .line 986
    sget-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-nez v35, :cond_70

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v35, v0

    if-eqz v35, :cond_71

    :cond_70
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-nez v35, :cond_71

    .line 987
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$12;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$12;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 997
    :cond_71
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 998
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-nez v35, :cond_72

    const/16 v35, 0x1

    :goto_3a
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    .line 999
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1000
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "drawSingleBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1001
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1002
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    .line 1003
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "mainconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1004
    .local v15, "mainEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "allowBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1005
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1006
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1007
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 998
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "mainEditor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_72
    const/16 v35, 0x0

    goto :goto_3a

    .line 1010
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_75

    .line 1011
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1012
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    if-nez v35, :cond_74

    const/16 v35, 0x1

    :goto_3b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    .line 1013
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1014
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableMarkdown"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1016
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1017
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1012
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_74
    const/16 v35, 0x0

    goto :goto_3b

    .line 1019
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_78

    .line 1020
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1021
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    if-nez v35, :cond_77

    const/16 v35, 0x1

    :goto_3c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    .line 1022
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1023
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotHideStickersTab"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1024
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1025
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_76

    .line 1026
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1028
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1021
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_77
    const/16 v35, 0x0

    goto :goto_3c

    .line 1031
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_7b

    .line 1032
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1033
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    if-nez v35, :cond_7a

    const/16 v35, 0x1

    :goto_3d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    .line 1034
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1035
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideInstantCamera"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1036
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_79

    .line 1038
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1040
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1033
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7a
    const/16 v35, 0x0

    goto :goto_3d

    .line 1043
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_7e

    .line 1044
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1045
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    if-nez v35, :cond_7d

    const/16 v35, 0x1

    :goto_3e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    .line 1046
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1047
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "plusSwipeToReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1049
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_7c

    .line 1050
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1052
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1045
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7d
    const/16 v35, 0x0

    goto :goto_3e

    .line 1055
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_82

    .line 1056
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1057
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1058
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1059
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "verticalQuickBar"

    if-nez v4, :cond_7f

    const/16 v35, 0x1

    :goto_3f
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1060
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1061
    if-nez v4, :cond_80

    const/16 v35, 0x1

    :goto_40
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1062
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1063
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_81

    const/16 v35, 0x1

    :goto_41
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1059
    .restart local p2    # "view":Landroid/view/View;
    :cond_7f
    const/16 v35, 0x0

    goto :goto_3f

    .line 1061
    :cond_80
    const/16 v35, 0x0

    goto :goto_40

    .line 1063
    .end local p2    # "view":Landroid/view/View;
    :cond_81
    const/16 v35, 0x0

    goto :goto_41

    .line 1065
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_86

    .line 1066
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1067
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    .line 1068
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1069
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "alwaysBackToMain"

    if-nez v4, :cond_83

    const/16 v35, 0x1

    :goto_42
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1070
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1071
    if-nez v4, :cond_84

    const/16 v35, 0x1

    :goto_43
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    .line 1072
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1073
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_85

    const/16 v35, 0x1

    :goto_44
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1069
    .restart local p2    # "view":Landroid/view/View;
    :cond_83
    const/16 v35, 0x0

    goto :goto_42

    .line 1071
    :cond_84
    const/16 v35, 0x0

    goto :goto_43

    .line 1073
    .end local p2    # "view":Landroid/view/View;
    :cond_85
    const/16 v35, 0x0

    goto :goto_44

    .line 1075
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_8a

    .line 1076
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1077
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1078
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1079
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "doNotCloseQuickBar"

    if-nez v4, :cond_87

    const/16 v35, 0x1

    :goto_45
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1081
    if-nez v4, :cond_88

    const/16 v35, 0x1

    :goto_46
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1082
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1083
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_89

    const/16 v35, 0x1

    :goto_47
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1079
    .restart local p2    # "view":Landroid/view/View;
    :cond_87
    const/16 v35, 0x0

    goto :goto_45

    .line 1081
    :cond_88
    const/16 v35, 0x0

    goto :goto_46

    .line 1083
    .end local p2    # "view":Landroid/view/View;
    :cond_89
    const/16 v35, 0x0

    goto :goto_47

    .line 1085
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_8e

    .line 1086
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1087
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1088
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1089
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideQuickBarOnScroll"

    if-nez v4, :cond_8b

    const/16 v35, 0x1

    :goto_48
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1091
    if-nez v4, :cond_8c

    const/16 v35, 0x1

    :goto_49
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1092
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1093
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_8d

    const/16 v35, 0x1

    :goto_4a
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1089
    .restart local p2    # "view":Landroid/view/View;
    :cond_8b
    const/16 v35, 0x0

    goto :goto_48

    .line 1091
    :cond_8c
    const/16 v35, 0x0

    goto :goto_49

    .line 1093
    .end local p2    # "view":Landroid/view/View;
    :cond_8d
    const/16 v35, 0x0

    goto :goto_4a

    .line 1095
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_92

    .line 1096
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1097
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1098
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1099
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "centerQuickBarBtn"

    if-nez v4, :cond_8f

    const/16 v35, 0x1

    :goto_4b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1100
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1101
    if-nez v4, :cond_90

    const/16 v35, 0x1

    :goto_4c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1102
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1103
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_91

    const/16 v35, 0x1

    :goto_4d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1099
    .restart local p2    # "view":Landroid/view/View;
    :cond_8f
    const/16 v35, 0x0

    goto :goto_4b

    .line 1101
    :cond_90
    const/16 v35, 0x0

    goto :goto_4c

    .line 1103
    .end local p2    # "view":Landroid/view/View;
    :cond_91
    const/16 v35, 0x0

    goto :goto_4d

    .line 1105
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_96

    .line 1106
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1107
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    .line 1108
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1109
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "quickBarShowMembers"

    if-nez v4, :cond_93

    const/16 v35, 0x1

    :goto_4e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1110
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1111
    if-nez v4, :cond_94

    const/16 v35, 0x1

    :goto_4f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    .line 1112
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1113
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_95

    const/16 v35, 0x1

    :goto_50
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1109
    .restart local p2    # "view":Landroid/view/View;
    :cond_93
    const/16 v35, 0x0

    goto :goto_4e

    .line 1111
    :cond_94
    const/16 v35, 0x0

    goto :goto_4f

    .line 1113
    .end local p2    # "view":Landroid/view/View;
    :cond_95
    const/16 v35, 0x0

    goto :goto_50

    .line 1115
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_99

    .line 1116
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1117
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "searchOnTwitter"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1118
    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1119
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "searchOnTwitter"

    if-nez v12, :cond_97

    const/16 v35, 0x1

    :goto_51
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1120
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1121
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1122
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_98

    const/16 v35, 0x1

    :goto_52
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1119
    .restart local p2    # "view":Landroid/view/View;
    :cond_97
    const/16 v35, 0x0

    goto :goto_51

    .line 1122
    .end local p2    # "view":Landroid/view/View;
    :cond_98
    const/16 v35, 0x0

    goto :goto_52

    .line 1124
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_9b

    .line 1125
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1127
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-nez v35, :cond_9a

    const/16 v35, 0x1

    :goto_53
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    .line 1128
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1129
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showPhotoQualityBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1130
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1131
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1132
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1127
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9a
    const/16 v35, 0x0

    goto :goto_53

    .line 1134
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_9f

    .line 1135
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1136
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    .line 1137
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1138
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "saveToCloudQuote"

    if-nez v4, :cond_9c

    const/16 v35, 0x1

    :goto_54
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1139
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1140
    if-nez v4, :cond_9d

    const/16 v35, 0x1

    :goto_55
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    .line 1141
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1142
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_9e

    const/16 v35, 0x1

    :goto_56
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1138
    .restart local p2    # "view":Landroid/view/View;
    :cond_9c
    const/16 v35, 0x0

    goto :goto_54

    .line 1140
    :cond_9d
    const/16 v35, 0x0

    goto :goto_55

    .line 1142
    .end local p2    # "view":Landroid/view/View;
    :cond_9e
    const/16 v35, 0x0

    goto :goto_56

    .line 1144
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 1146
    .local v14, "li":Landroid/view/LayoutInflater;
    const v35, 0x7f030007

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1147
    .local v18, "promptsView":Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1148
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1149
    const v35, 0x7f0c002a

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    .line 1151
    .local v23, "userInput":Landroid/widget/EditText;
    const-string/jumbo v35, "EnterName"

    const v36, 0x7f07023a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1152
    const v35, -0x686869

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1153
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1154
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "themeColor"

    const v36, -0xab8a62

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1155
    .local v6, "defColor":I
    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v35

    const-string/jumbo v36, "dialogColor"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    sget-object v37, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1156
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1158
    const-string/jumbo v35, "SaveSettings"

    const v36, 0x7f07055b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1159
    const-string/jumbo v35, "OK"

    const v36, 0x7f070452

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$13;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$13;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/widget/EditText;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1185
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1187
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "defColor":I
    .end local v14    # "li":Landroid/view/LayoutInflater;
    .end local v18    # "promptsView":Landroid/view/View;
    .end local v22    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v23    # "userInput":Landroid/widget/EditText;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a1

    .line 1188
    new-instance v11, Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {v11}, Lorg/telegram/ui/DocumentSelectActivity;-><init>()V

    .line 1189
    .local v11, "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    const-string/jumbo v35, ".xml"

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    .line 1190
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, ".db"

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    .line 1191
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$14;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$14;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Lorg/telegram/ui/DocumentSelectActivity;->setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1201
    .end local v11    # "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a2

    .line 1202
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1203
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "AreYouSure"

    const v36, 0x7f070089

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1204
    const-string/jumbo v35, "ResetSettings"

    const v36, 0x7f070531

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1205
    const-string/jumbo v35, "OK"

    const v36, 0x7f070452

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$15;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$15;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1238
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1240
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a6

    .line 1241
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1242
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    .line 1243
    .local v7, "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1244
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showTypingToast"

    if-nez v7, :cond_a3

    const/16 v35, 0x1

    :goto_57
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1246
    if-nez v7, :cond_a4

    const/16 v35, 0x1

    :goto_58
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    .line 1247
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1248
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_a5

    const/16 v35, 0x1

    :goto_59
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1244
    .restart local p2    # "view":Landroid/view/View;
    :cond_a3
    const/16 v35, 0x0

    goto :goto_57

    .line 1246
    :cond_a4
    const/16 v35, 0x0

    goto :goto_58

    .line 1248
    .end local p2    # "view":Landroid/view/View;
    :cond_a5
    const/16 v35, 0x0

    goto :goto_59

    .line 1250
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_aa

    .line 1251
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1252
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    .line 1253
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1254
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOnlineToast"

    if-nez v7, :cond_a7

    const/16 v35, 0x1

    :goto_5a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1256
    if-nez v7, :cond_a8

    const/16 v35, 0x1

    :goto_5b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    .line 1257
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1258
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_a9

    const/16 v35, 0x1

    :goto_5c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1254
    .restart local p2    # "view":Landroid/view/View;
    :cond_a7
    const/16 v35, 0x0

    goto :goto_5a

    .line 1256
    :cond_a8
    const/16 v35, 0x0

    goto :goto_5b

    .line 1258
    .end local p2    # "view":Landroid/view/View;
    :cond_a9
    const/16 v35, 0x0

    goto :goto_5c

    .line 1260
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_ae

    .line 1261
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1262
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    .line 1263
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1264
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOnlyIfContactFav"

    if-nez v7, :cond_ab

    const/16 v35, 0x1

    :goto_5d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1265
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1266
    if-nez v7, :cond_ac

    const/16 v35, 0x1

    :goto_5e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    .line 1267
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1268
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_ad

    const/16 v35, 0x1

    :goto_5f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1264
    .restart local p2    # "view":Landroid/view/View;
    :cond_ab
    const/16 v35, 0x0

    goto :goto_5d

    .line 1266
    :cond_ac
    const/16 v35, 0x0

    goto :goto_5e

    .line 1268
    .end local p2    # "view":Landroid/view/View;
    :cond_ad
    const/16 v35, 0x0

    goto :goto_5f

    .line 1270
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b2

    .line 1271
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1272
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    .line 1273
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1274
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOfflineToast"

    if-nez v7, :cond_af

    const/16 v35, 0x1

    :goto_60
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1275
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1276
    if-nez v7, :cond_b0

    const/16 v35, 0x1

    :goto_61
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    .line 1277
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1278
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b1

    const/16 v35, 0x1

    :goto_62
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1274
    .restart local p2    # "view":Landroid/view/View;
    :cond_af
    const/16 v35, 0x0

    goto :goto_60

    .line 1276
    :cond_b0
    const/16 v35, 0x0

    goto :goto_61

    .line 1278
    .end local p2    # "view":Landroid/view/View;
    :cond_b1
    const/16 v35, 0x0

    goto :goto_62

    .line 1280
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b3

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1284
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationSize"

    const v36, 0x7f07063a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1286
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1287
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1288
    const/16 v35, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1289
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1290
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1291
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$16;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$16;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1307
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b4

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1311
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPadding"

    const v36, 0x7f070638

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1313
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1314
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1315
    const/16 v35, 0xc8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1316
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1317
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1318
    const-string/jumbo v35, "Done"

    const v36, 0x7f070207

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$17;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$17;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1334
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b9

    .line 1335
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1336
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    .line 1337
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1338
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "toastNotificationToBottom"

    if-nez v7, :cond_b6

    const/16 v35, 0x1

    :goto_63
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1339
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1340
    if-nez v7, :cond_b7

    const/16 v35, 0x1

    :goto_64
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    .line 1341
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_b5

    .line 1342
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b8

    const/16 v35, 0x1

    :goto_65
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1345
    :cond_b5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1338
    .restart local p2    # "view":Landroid/view/View;
    :cond_b6
    const/16 v35, 0x0

    goto :goto_63

    .line 1340
    :cond_b7
    const/16 v35, 0x0

    goto :goto_64

    .line 1342
    .end local p2    # "view":Landroid/view/View;
    :cond_b8
    const/16 v35, 0x0

    goto :goto_65

    .line 1346
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_ba

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1350
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1351
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPosition"

    const v36, 0x7f070639

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1352
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "Left"

    const v38, 0x7f070345

    .line 1353
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "Center"

    const v38, 0x7f0700f8

    .line 1354
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "Right"

    const v38, 0x7f07054a

    .line 1355
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$18;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$18;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 1352
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1371
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1373
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1374
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "Chats to load"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1376
    const/16 v24, 0x32

    .line 1377
    .local v24, "v0":I
    const/16 v25, 0x64

    .line 1378
    .local v25, "v1":I
    const/16 v27, 0xc8

    .line 1379
    .local v27, "v2":I
    const/16 v28, 0x12c

    .line 1380
    .local v28, "v3":I
    const/16 v29, 0x190

    .line 1381
    .local v29, "v4":I
    const/16 v30, 0x1f4

    .line 1382
    .local v30, "v5":I
    const/16 v31, 0x2ee

    .line 1383
    .local v31, "v6":I
    const/16 v32, 0x3e8

    .line 1384
    .local v32, "v7":I
    const/16 v33, 0x5dc

    .line 1385
    .local v33, "v8":I
    const/16 v34, 0x7d0

    .line 1386
    .local v34, "v9":I
    const v26, 0xf4240

    .line 1387
    .local v26, "v10":I
    const/16 v35, 0xb

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "50"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "100"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "200"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string/jumbo v37, "300"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string/jumbo v37, "400"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string/jumbo v37, "500"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string/jumbo v37, "750"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string/jumbo v37, "1000"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string/jumbo v37, "1500"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string/jumbo v37, "2000"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string/jumbo v37, "All"

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$19;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$19;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1426
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method

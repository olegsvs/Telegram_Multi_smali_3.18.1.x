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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-nez v35, :cond_1

    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

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

    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "EmojiPopupSize"

    const v36, 0x7f07021b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .local v16, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x3c

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

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

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_2
    const/16 v35, 0x3c

    goto :goto_1

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "PhotoQuality"

    const v36, 0x7f0704d6

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showAndroidEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, "enabled":Z
    const-string/jumbo v36, "showAndroidEmoji"

    if-nez v10, :cond_6

    const/16 v35, 0x1

    :goto_2
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-nez v10, :cond_7

    const/16 v35, 0x1

    :goto_3
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    sget-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-eqz v35, :cond_5

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-eqz v35, :cond_5

    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    const-string/jumbo v35, "drawSingleBigEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_8

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    const/16 v35, 0x0

    goto :goto_2

    :cond_7
    const/16 v35, 0x0

    goto :goto_3

    .end local p2    # "view":Landroid/view/View;
    :cond_8
    const/16 v35, 0x0

    goto :goto_4

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "useDeviceFont"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .restart local v10    # "enabled":Z
    const-string/jumbo v36, "useDeviceFont"

    if-nez v10, :cond_a

    const/16 v35, 0x1

    :goto_5
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v10, :cond_b

    const/16 v35, 0x1

    :goto_6
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->USE_DEVICE_FONT:Z

    const/16 v35, 0x1

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$3;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$3;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_c

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    const/16 v35, 0x0

    goto :goto_5

    :cond_b
    const/16 v35, 0x0

    goto :goto_6

    .end local p2    # "view":Landroid/view/View;
    :cond_c
    const/16 v35, 0x0

    goto :goto_7

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableAudioStop"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .local v20, "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableAudioStop"

    if-nez v20, :cond_e

    const/16 v35, 0x1

    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_f

    const/16 v35, 0x1

    :goto_9
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    const/16 v35, 0x0

    goto :goto_8

    .end local p2    # "view":Landroid/view/View;
    :cond_f
    const/16 v35, 0x0

    goto :goto_9

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableMessageClick"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableMessageClick"

    if-nez v20, :cond_11

    const/16 v35, 0x1

    :goto_a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_12

    const/16 v35, 0x1

    :goto_b
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/16 v35, 0x0

    goto :goto_a

    .end local p2    # "view":Landroid/view/View;
    :cond_12
    const/16 v35, 0x0

    goto :goto_b

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareReplies"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareReplies"

    if-nez v20, :cond_14

    const/16 v35, 0x1

    :goto_c
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_15

    const/16 v35, 0x1

    :goto_d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_14
    const/16 v35, 0x0

    goto :goto_c

    .end local p2    # "view":Landroid/view/View;
    :cond_15
    const/16 v35, 0x0

    goto :goto_d

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareToMenu"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareToMenu"

    if-nez v20, :cond_17

    const/16 v35, 0x1

    :goto_e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_18

    const/16 v35, 0x1

    :goto_f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    const/16 v35, 0x0

    goto :goto_e

    .end local p2    # "view":Landroid/view/View;
    :cond_18
    const/16 v35, 0x0

    goto :goto_f

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareFavsFirst"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareFavsFirst"

    if-nez v20, :cond_1a

    const/16 v35, 0x1

    :goto_10
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1b

    const/16 v35, 0x1

    :goto_11
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_1a
    const/16 v35, 0x0

    goto :goto_10

    .end local p2    # "view":Landroid/view/View;
    :cond_1b
    const/16 v35, 0x0

    goto :goto_11

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showEditedMark"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showEditedMark"

    if-nez v20, :cond_1d

    const/16 v35, 0x1

    :goto_12
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v20, :cond_1e

    const/16 v35, 0x1

    :goto_13
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowEditedMark:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1f

    const/16 v35, 0x1

    :goto_14
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_1d
    const/16 v35, 0x0

    goto :goto_12

    :cond_1e
    const/16 v35, 0x0

    goto :goto_13

    .end local p2    # "view":Landroid/view/View;
    :cond_1f
    const/16 v35, 0x0

    goto :goto_14

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showDateToast"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .local v21, "show":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showDateToast"

    if-nez v21, :cond_21

    const/16 v35, 0x1

    :goto_15
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v21, :cond_22

    const/16 v35, 0x1

    :goto_16
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    const/16 v35, 0x0

    goto :goto_15

    .end local p2    # "view":Landroid/view/View;
    :cond_22
    const/16 v35, 0x0

    goto :goto_16

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideLeftGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .local v12, "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_24

    const/16 v35, 0x1

    :goto_17
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideLeftGroup"

    if-nez v12, :cond_25

    const/16 v35, 0x1

    :goto_18
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_26

    const/16 v35, 0x1

    :goto_19
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_24
    const/16 v35, 0x0

    goto :goto_17

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_25
    const/16 v35, 0x0

    goto :goto_18

    .end local p2    # "view":Landroid/view/View;
    :cond_26
    const/16 v35, 0x0

    goto :goto_19

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideJoinedGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .restart local v12    # "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_28

    const/16 v35, 0x1

    :goto_1a
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideJoinedGroup:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideJoinedGroup"

    if-nez v12, :cond_29

    const/16 v35, 0x1

    :goto_1b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2a

    const/16 v35, 0x1

    :goto_1c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_28
    const/16 v35, 0x0

    goto :goto_1a

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_29
    const/16 v35, 0x0

    goto :goto_1b

    .end local p2    # "view":Landroid/view/View;
    :cond_2a
    const/16 v35, 0x0

    goto :goto_1c

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideBotKeyboard"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideBotKeyboard"

    if-nez v12, :cond_2c

    const/16 v35, 0x1

    :goto_1d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2d

    const/16 v35, 0x1

    :goto_1e
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_2c
    const/16 v35, 0x0

    goto :goto_1d

    .end local p2    # "view":Landroid/view/View;
    :cond_2d
    const/16 v35, 0x0

    goto :goto_1e

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v35, :cond_30

    const/16 v35, 0x1

    :goto_1f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabs"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

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

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_30
    const/16 v35, 0x0

    goto :goto_1f

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-nez v35, :cond_32

    const/16 v35, 0x1

    :goto_20
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .local v9, "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_32
    const/16 v35, 0x0

    goto :goto_20

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-nez v35, :cond_34

    const/16 v35, 0x1

    :goto_21
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsShouldExpand"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_34
    const/16 v35, 0x0

    goto :goto_21

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

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    if-nez v35, :cond_37

    const/16 v35, 0x1

    :goto_22
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotChangeHeaderTitle"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_36

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

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

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_37
    const/16 v35, 0x0

    goto :goto_22

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3a

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    if-nez v35, :cond_39

    const/16 v35, 0x1

    :goto_23
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsScrolling"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_39
    const/16 v35, 0x0

    goto :goto_23

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3c

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-nez v35, :cond_3b

    const/16 v35, 0x1

    :goto_24
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .restart local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3b
    const/16 v35, 0x0

    goto :goto_24

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

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    if-nez v35, :cond_3d

    const/16 v35, 0x1

    :goto_25
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideSelectedTabIndicator"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3d
    const/16 v35, 0x0

    goto :goto_25

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_40

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v35, :cond_3f

    const/16 v35, 0x1

    :goto_26
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsAnimation"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3f
    const/16 v35, 0x0

    goto :goto_26

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    if-nez v35, :cond_41

    const/16 v35, 0x1

    :goto_27
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "infiniteTabsSwipe"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_41
    const/16 v35, 0x0

    goto :goto_27

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    if-nez v35, :cond_43

    const/16 v35, 0x1

    :goto_28
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_43
    const/16 v35, 0x0

    goto :goto_28

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    if-nez v35, :cond_45

    const/16 v35, 0x1

    :goto_29
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "limitTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_45
    const/16 v35, 0x0

    goto :goto_29

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    if-nez v35, :cond_47

    const/16 v35, 0x1

    :goto_2a
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountChats"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_47
    const/16 v35, 0x0

    goto :goto_2a

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    if-nez v35, :cond_49

    const/16 v35, 0x1

    :goto_2b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountNotMuted"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_49
    const/16 v35, 0x0

    goto :goto_2b

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-nez v35, :cond_4c

    const/16 v35, 0x1

    :goto_2c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showUsername"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_4b

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

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

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4c
    const/16 v35, 0x0

    goto :goto_2c

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    if-nez v35, :cond_4e

    const/16 v35, 0x1

    :goto_2d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "profileEnableGoToMsg"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4e
    const/16 v35, 0x0

    goto :goto_2d

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-nez v35, :cond_51

    const/16 v35, 0x1

    :goto_2e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideMobile"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_50

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

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

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_51
    const/16 v35, 0x0

    goto :goto_2e

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "keepOriginalFilename"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .local v13, "keep":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "keepOriginalFilename"

    if-nez v13, :cond_53

    const/16 v35, 0x1

    :goto_2f
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v13, :cond_54

    const/16 v35, 0x1

    :goto_30
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v13, :cond_55

    const/16 v35, 0x1

    :goto_31
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_53
    const/16 v35, 0x0

    goto :goto_2f

    :cond_54
    const/16 v35, 0x0

    goto :goto_30

    .end local p2    # "view":Landroid/view/View;
    :cond_55
    const/16 v35, 0x0

    goto :goto_31

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnContactPic"

    const v36, 0x7f070181

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070550

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f0705dd

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f0705de

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$4;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$4;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnGroupPic"

    const v36, 0x7f070182

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070550

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f0705dd

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f0705de

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$5;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsTextSize"

    const v36, 0x7f070613

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0x12

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsHeight"

    const v36, 0x7f070612

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1e

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    new-instance v36, Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/ui/PlusManageTabsActivity;-><init>()V

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4200(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4400(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showMySettings"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "invertMessagesOrder"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .local v19, "scr":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "invertMessagesOrder"

    if-nez v19, :cond_61

    const/16 v35, 0x1

    :goto_32
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_60

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v19, :cond_62

    const/16 v35, 0x1

    :goto_33
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

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

    .restart local p2    # "view":Landroid/view/View;
    :cond_61
    const/16 v35, 0x0

    goto :goto_32

    .end local p2    # "view":Landroid/view/View;
    :cond_62
    const/16 v35, 0x0

    goto :goto_33

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    if-nez v35, :cond_64

    const/16 v35, 0x1

    :goto_34
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideNotificationsIfPlaying"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_64
    const/16 v35, 0x0

    goto :goto_34

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    if-nez v35, :cond_66

    const/16 v35, 0x1

    :goto_35
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableDirectReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_66
    const/16 v35, 0x0

    goto :goto_35

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .local v4, "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showQuickBar"

    if-nez v4, :cond_69

    const/16 v35, 0x1

    :goto_36
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_6a

    const/16 v35, 0x1

    :goto_37
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_68

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_6b

    const/16 v35, 0x1

    :goto_38
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_69
    const/16 v35, 0x0

    goto :goto_36

    :cond_6a
    const/16 v35, 0x0

    goto :goto_37

    .end local p2    # "view":Landroid/view/View;
    :cond_6b
    const/16 v35, 0x0

    goto :goto_38

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    if-nez v35, :cond_6e

    const/16 v35, 0x1

    :goto_39
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "photoViewerHideStatusBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_6d

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_6e
    const/16 v35, 0x0

    goto :goto_39

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

    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$12;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$12;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_71
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-nez v35, :cond_72

    const/16 v35, 0x1

    :goto_3a
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "drawSingleBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "mainconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .local v15, "mainEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "allowBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "mainEditor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_72
    const/16 v35, 0x0

    goto :goto_3a

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    if-nez v35, :cond_74

    const/16 v35, 0x1

    :goto_3b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableMarkdown"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_74
    const/16 v35, 0x0

    goto :goto_3b

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    if-nez v35, :cond_77

    const/16 v35, 0x1

    :goto_3c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotHideStickersTab"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_76

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_77
    const/16 v35, 0x0

    goto :goto_3c

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    if-nez v35, :cond_7a

    const/16 v35, 0x1

    :goto_3d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideInstantCamera"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_79

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7a
    const/16 v35, 0x0

    goto :goto_3d

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    if-nez v35, :cond_7d

    const/16 v35, 0x1

    :goto_3e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "plusSwipeToReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_7c

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7d
    const/16 v35, 0x0

    goto :goto_3e

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "verticalQuickBar"

    if-nez v4, :cond_7f

    const/16 v35, 0x1

    :goto_3f
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_80

    const/16 v35, 0x1

    :goto_40
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_81

    const/16 v35, 0x1

    :goto_41
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_7f
    const/16 v35, 0x0

    goto :goto_3f

    :cond_80
    const/16 v35, 0x0

    goto :goto_40

    .end local p2    # "view":Landroid/view/View;
    :cond_81
    const/16 v35, 0x0

    goto :goto_41

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "alwaysBackToMain"

    if-nez v4, :cond_83

    const/16 v35, 0x1

    :goto_42
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_84

    const/16 v35, 0x1

    :goto_43
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_85

    const/16 v35, 0x1

    :goto_44
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_83
    const/16 v35, 0x0

    goto :goto_42

    :cond_84
    const/16 v35, 0x0

    goto :goto_43

    .end local p2    # "view":Landroid/view/View;
    :cond_85
    const/16 v35, 0x0

    goto :goto_44

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "doNotCloseQuickBar"

    if-nez v4, :cond_87

    const/16 v35, 0x1

    :goto_45
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_88

    const/16 v35, 0x1

    :goto_46
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_89

    const/16 v35, 0x1

    :goto_47
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_87
    const/16 v35, 0x0

    goto :goto_45

    :cond_88
    const/16 v35, 0x0

    goto :goto_46

    .end local p2    # "view":Landroid/view/View;
    :cond_89
    const/16 v35, 0x0

    goto :goto_47

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideQuickBarOnScroll"

    if-nez v4, :cond_8b

    const/16 v35, 0x1

    :goto_48
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_8c

    const/16 v35, 0x1

    :goto_49
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_8d

    const/16 v35, 0x1

    :goto_4a
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_8b
    const/16 v35, 0x0

    goto :goto_48

    :cond_8c
    const/16 v35, 0x0

    goto :goto_49

    .end local p2    # "view":Landroid/view/View;
    :cond_8d
    const/16 v35, 0x0

    goto :goto_4a

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "centerQuickBarBtn"

    if-nez v4, :cond_8f

    const/16 v35, 0x1

    :goto_4b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_90

    const/16 v35, 0x1

    :goto_4c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_91

    const/16 v35, 0x1

    :goto_4d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_8f
    const/16 v35, 0x0

    goto :goto_4b

    :cond_90
    const/16 v35, 0x0

    goto :goto_4c

    .end local p2    # "view":Landroid/view/View;
    :cond_91
    const/16 v35, 0x0

    goto :goto_4d

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "quickBarShowMembers"

    if-nez v4, :cond_93

    const/16 v35, 0x1

    :goto_4e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_94

    const/16 v35, 0x1

    :goto_4f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_95

    const/16 v35, 0x1

    :goto_50
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_93
    const/16 v35, 0x0

    goto :goto_4e

    :cond_94
    const/16 v35, 0x0

    goto :goto_4f

    .end local p2    # "view":Landroid/view/View;
    :cond_95
    const/16 v35, 0x0

    goto :goto_50

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "searchOnTwitter"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "searchOnTwitter"

    if-nez v12, :cond_97

    const/16 v35, 0x1

    :goto_51
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_98

    const/16 v35, 0x1

    :goto_52
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_97
    const/16 v35, 0x0

    goto :goto_51

    .end local p2    # "view":Landroid/view/View;
    :cond_98
    const/16 v35, 0x0

    goto :goto_52

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-nez v35, :cond_9a

    const/16 v35, 0x1

    :goto_53
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showPhotoQualityBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9a
    const/16 v35, 0x0

    goto :goto_53

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "saveToCloudQuote"

    if-nez v4, :cond_9c

    const/16 v35, 0x1

    :goto_54
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_9d

    const/16 v35, 0x1

    :goto_55
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_9e

    const/16 v35, 0x1

    :goto_56
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_9c
    const/16 v35, 0x0

    goto :goto_54

    :cond_9d
    const/16 v35, 0x0

    goto :goto_55

    .end local p2    # "view":Landroid/view/View;
    :cond_9e
    const/16 v35, 0x0

    goto :goto_56

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .local v14, "li":Landroid/view/LayoutInflater;
    const v35, 0x7f030007

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .local v18, "promptsView":Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v35, 0x7f0c002a

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    .local v23, "userInput":Landroid/widget/EditText;
    const-string/jumbo v35, "EnterName"

    const v36, 0x7f07023a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v35, -0x686869

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "themeColor"

    const v36, -0xff6978

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

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

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    const-string/jumbo v35, "SaveSettings"

    const v36, 0x7f07055b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

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

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    new-instance v11, Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {v11}, Lorg/telegram/ui/DocumentSelectActivity;-><init>()V

    .local v11, "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    const-string/jumbo v35, ".xml"

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, ".db"

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$14;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$14;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Lorg/telegram/ui/DocumentSelectActivity;->setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

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

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "AreYouSure"

    const v36, 0x7f070089

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v35, "ResetSettings"

    const v36, 0x7f070531

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

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

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    .local v7, "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showTypingToast"

    if-nez v7, :cond_a3

    const/16 v35, 0x1

    :goto_57
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v7, :cond_a4

    const/16 v35, 0x1

    :goto_58
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_a5

    const/16 v35, 0x1

    :goto_59
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_a3
    const/16 v35, 0x0

    goto :goto_57

    :cond_a4
    const/16 v35, 0x0

    goto :goto_58

    .end local p2    # "view":Landroid/view/View;
    :cond_a5
    const/16 v35, 0x0

    goto :goto_59

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;

    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;

    if-nez v7, :cond_a7

    const/16 v35, 0x1

    :goto_5a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v7, :cond_a8

    const/16 v35, 0x1

    :goto_5b

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_a9

    const/16 v35, 0x1

    :goto_5c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_a7
    const/16 v35, 0x0

    goto :goto_5a

    :cond_a8
    const/16 v35, 0x0

    goto :goto_5b

    .end local p2    # "view":Landroid/view/View;
    :cond_a9
    const/16 v35, 0x0

    goto :goto_5c

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOnlyIfContactFav"

    if-nez v7, :cond_ab

    const/16 v35, 0x1

    :goto_5d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v7, :cond_ac

    const/16 v35, 0x1

    :goto_5e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_ad

    const/16 v35, 0x1

    :goto_5f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_ab
    const/16 v35, 0x0

    goto :goto_5d

    :cond_ac
    const/16 v35, 0x0

    goto :goto_5e

    .end local p2    # "view":Landroid/view/View;
    :cond_ad
    const/16 v35, 0x0

    goto :goto_5f

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;

    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;

    if-nez v7, :cond_af

    const/16 v35, 0x1

    :goto_60
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v7, :cond_b0

    const/16 v35, 0x1

    :goto_61

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b1

    const/16 v35, 0x1

    :goto_62
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p2    # "view":Landroid/view/View;
    :cond_af
    const/16 v35, 0x0

    goto :goto_60

    :cond_b0
    const/16 v35, 0x0

    goto :goto_61

    .end local p2    # "view":Landroid/view/View;
    :cond_b1
    const/16 v35, 0x0

    goto :goto_62

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationSize"

    const v36, 0x7f07063a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPadding"

    const v36, 0x7f070638

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v35, 0xc8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "toastNotificationToBottom"

    if-nez v7, :cond_b6

    const/16 v35, 0x1

    :goto_63
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v7, :cond_b7

    const/16 v35, 0x1

    :goto_64
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_b5

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b8

    const/16 v35, 0x1

    :goto_65
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

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

    .restart local p2    # "view":Landroid/view/View;
    :cond_b6
    const/16 v35, 0x0

    goto :goto_63

    :cond_b7
    const/16 v35, 0x0

    goto :goto_64

    .end local p2    # "view":Landroid/view/View;
    :cond_b8
    const/16 v35, 0x0

    goto :goto_65

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPosition"

    const v36, 0x7f070639

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "Left"

    const v38, 0x7f070345

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "Center"

    const v38, 0x7f0700f8

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "Right"

    const v38, 0x7f07054a

    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$18;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$18;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

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

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "Chats to load"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v24, 0x32

    .local v24, "v0":I
    const/16 v25, 0x64

    .local v25, "v1":I
    const/16 v27, 0xc8

    .local v27, "v2":I
    const/16 v28, 0x12c

    .local v28, "v3":I
    const/16 v29, 0x190

    .local v29, "v4":I
    const/16 v30, 0x1f4

    .local v30, "v5":I
    const/16 v31, 0x2ee

    .local v31, "v6":I
    const/16 v32, 0x3e8

    .local v32, "v7":I
    const/16 v33, 0x5dc

    .local v33, "v8":I
    const/16 v34, 0x7d0

    .local v34, "v9":I
    const v26, 0xf4240

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

    const-string/jumbo v35, "Cancel"

    const v36, 0x7f0700f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method

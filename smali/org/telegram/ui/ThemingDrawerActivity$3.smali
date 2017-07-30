.class Lorg/telegram/ui/ThemingDrawerActivity$3;
.super Ljava/lang/Object;
.source "ThemingDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingDrawerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingDrawerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
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
    .line 210
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 211
    .local v19, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, "key":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "themeColor"

    const v4, -0xab8a62

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 214
    .local v13, "defColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 588
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 211
    .end local v13    # "defColor":I
    .end local v15    # "key":Ljava/lang/String;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v15, ""

    goto :goto_0

    .line 218
    .restart local v13    # "defColor":I
    .restart local v15    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 219
    .local v16, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 220
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$1;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerHeaderColor"

    .line 227
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 228
    .local v2, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    .line 587
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    .end local p2    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2802(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 229
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 230
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v9, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 239
    .local v18, "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 240
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$2;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 252
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 257
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 258
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$3;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerHeaderGradientColor"

    .line 263
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 264
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 265
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 266
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    .line 267
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 268
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3

    .line 271
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_2

    .line 266
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 274
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 275
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    :goto_4
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    .line 276
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 277
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3

    .line 280
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_2

    .line 275
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 283
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 284
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_5
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    .line 285
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 286
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3

    .line 289
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_2

    .line 284
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 292
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 297
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 298
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$4;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerListColor"

    const/4 v6, -0x1

    .line 305
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 306
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 307
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 312
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 313
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$5;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerRowGradientColor"

    const/4 v6, -0x1

    .line 318
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 319
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 320
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_11

    .line 321
    const-string/jumbo v3, "drawerRowGradientListCheck"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 322
    .local v10, "b":Z
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 323
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "drawerRowGradientListCheck"

    if-nez v10, :cond_f

    const/4 v3, 0x1

    :goto_6
    invoke-interface {v14, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3

    .line 326
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_10

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_2

    .line 323
    .restart local p2    # "view":Landroid/view/View;
    :cond_f
    const/4 v3, 0x0

    goto :goto_6

    .line 326
    .end local p2    # "view":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    goto :goto_7

    .line 329
    .end local v10    # "b":Z
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_12

    .line 330
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .restart local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 339
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 340
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$6;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 352
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_13

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 357
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 358
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$7;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerListDividerColor"

    const v6, -0x262627

    .line 365
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 366
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 367
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_14

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 372
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 373
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$8;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerIconColor"

    const v6, -0x8c8c8d

    .line 382
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 383
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 384
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_15

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 389
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 390
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$9;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerOptionColor"

    const v6, -0xbbbbbc

    .line 398
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 399
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 400
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_16

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 405
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 406
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$10;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerVersionColor"

    const v6, -0x5c5c5d

    .line 412
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 413
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 414
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_17

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 419
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 420
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$11;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerAvatarColor"

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 426
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 427
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 428
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_18

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 433
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 434
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$12;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerNameColor"

    const/4 v6, -0x1

    .line 441
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 442
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 443
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 448
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 449
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingDrawerActivity$3$13;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V

    const-string/jumbo v5, "drawerPhoneColor"

    const-string/jumbo v6, "themeColor"

    const/16 v7, -0x40

    .line 456
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 458
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_2

    .line 459
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1a

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 463
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarRadius"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 465
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 466
    .local v17, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "drawerAvatarRadius"

    const/16 v4, 0x20

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 467
    .local v12, "currentValue":I
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 468
    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 469
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 470
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 471
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12}, Lorg/telegram/ui/ThemingDrawerActivity$3$14;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 480
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1b

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 484
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 485
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarSize"

    const v4, 0x7f0700bb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 486
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 488
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 489
    const/16 v3, 0x4b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 490
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->drawerAvatarSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 491
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 492
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemingDrawerActivity$3$15;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 502
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1c

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 506
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "OwnNameSize"

    const v4, 0x7f07046d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 508
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 509
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "drawerNameSize"

    const/16 v4, 0xf

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 510
    .restart local v12    # "currentValue":I
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 511
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 512
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 513
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 514
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12}, Lorg/telegram/ui/ThemingDrawerActivity$3$16;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 523
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1d

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 527
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "PhoneSize"

    const v4, 0x7f0705fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 529
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 530
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "drawerPhoneSize"

    const/16 v4, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 531
    .restart local v12    # "currentValue":I
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 532
    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 533
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 534
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 535
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12}, Lorg/telegram/ui/ThemingDrawerActivity$3$17;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 544
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1e

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 548
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "OptionSize"

    const v4, 0x7f070467

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 551
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "drawerOptionSize"

    const/16 v4, 0xf

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 552
    .restart local v12    # "currentValue":I
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 553
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 554
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 555
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 556
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12}, Lorg/telegram/ui/ThemingDrawerActivity$3$18;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 565
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 569
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "VersionSize"

    const v4, 0x7f07066f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 571
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 572
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "drawerVersionSize"

    const/16 v4, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 573
    .restart local v12    # "currentValue":I
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 574
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 575
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 576
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 577
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity$3$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12}, Lorg/telegram/ui/ThemingDrawerActivity$3$19;-><init>(Lorg/telegram/ui/ThemingDrawerActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingDrawerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2
.end method

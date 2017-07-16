.class Lorg/telegram/ui/ThemingChatActivity$3;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 308
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

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
    .line 312
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 316
    .local v19, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, "key":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1383
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 316
    .end local v15    # "key":Ljava/lang/String;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v15, ""

    goto :goto_0

    .line 322
    .restart local v15    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 323
    .local v16, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 324
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$1;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 332
    .local v2, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_1

    .line 333
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 338
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 339
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$2;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatHeaderGradientColor"

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 345
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 346
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 347
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 348
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 350
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v10, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 357
    .local v18, "simpleArray":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$3;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 370
    .end local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 371
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .restart local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 380
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 381
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$4;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 393
    .end local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 394
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .restart local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 403
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 404
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$5;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 416
    .end local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 417
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 419
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .restart local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 426
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 427
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$6;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 439
    .end local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 440
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 441
    .local v11, "b":Z
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 442
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v11, :cond_a

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 444
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_9

    .line 445
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v11, :cond_b

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1

    .line 442
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 445
    .end local p2    # "view":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 451
    .end local v11    # "b":Z
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 453
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-nez v3, :cond_e

    const/4 v3, 0x1

    :goto_4
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    .line 454
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 455
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    .line 458
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_d

    .line 459
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 461
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1

    .line 453
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    .line 464
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_12

    .line 465
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 466
    .restart local v11    # "b":Z
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    if-nez v3, :cond_11

    const/4 v3, 0x1

    :goto_5
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    .line 467
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 468
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_10

    .line 471
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 473
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1

    .line 466
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto :goto_5

    .line 476
    .end local v11    # "b":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_15

    .line 478
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    if-nez v3, :cond_14

    const/4 v3, 0x1

    :goto_6
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    .line 479
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 480
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 482
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_13

    .line 483
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 485
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1

    .line 478
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_14
    const/4 v3, 0x0

    goto :goto_6

    .line 488
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_17

    .line 490
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    if-nez v3, :cond_16

    const/4 v3, 0x1

    :goto_7
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    .line 491
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 492
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 495
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 490
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto :goto_7

    .line 498
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 500
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_8
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    .line 501
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 502
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 504
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 505
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 500
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_8

    .line 508
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1b

    .line 510
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    :goto_9
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    .line 511
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 512
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 515
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 510
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    .line 518
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1d

    .line 520
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_a
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    .line 521
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 522
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 525
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 520
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_a

    .line 527
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1f

    .line 529
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    :goto_b
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    .line 530
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 531
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 534
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 529
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_b

    .line 536
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_21

    .line 538
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    if-nez v3, :cond_20

    const/4 v3, 0x1

    :goto_c
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    .line 539
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 540
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 543
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 538
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto :goto_c

    .line 545
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_22

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 550
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 551
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$7;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatSolidBGColor"

    const/4 v6, -0x1

    .line 564
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 565
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 566
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_23

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 571
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 572
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$8;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatGradientBGColor"

    const/4 v6, -0x1

    .line 584
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 585
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 586
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_24

    .line 587
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .restart local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 596
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 597
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$9;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 616
    .end local v10    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_25

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 621
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 622
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$10;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 629
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 630
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_26

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 635
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 636
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$11;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatContactNameColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 643
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 644
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_27

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 649
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 650
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$12;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatForwardRColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 657
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 658
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_28

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 663
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 664
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$13;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatForwardLColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 672
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 673
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_29

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 678
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 679
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$14;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 685
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 686
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 687
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2a

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 692
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 693
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$15;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatRBubbleColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 703
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 704
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2b

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 709
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 710
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$16;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatLBubbleColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 718
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 719
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2c

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 724
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 725
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$17;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatRTextColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 733
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 734
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2d

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 739
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 740
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$18;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatLTextColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 747
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 748
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2e

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 753
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 754
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$19;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatSelectedMsgBGColor"

    const v6, 0x6626a69a

    .line 762
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 763
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 764
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2f

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 769
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 770
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$20;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatRLinkColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 777
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 778
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_30

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 783
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 784
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$21;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatLLinkColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 791
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 792
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_31

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 797
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 798
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$22;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$22;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatRTimeColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 805
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 806
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_32

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 811
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 812
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$23;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$23;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatLTimeColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 819
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 820
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_33

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 825
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 826
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$24;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatDateBubbleColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 835
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 836
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_34

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 841
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 842
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$25;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 849
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 850
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_35

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 855
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 856
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$26;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$26;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatNameColor"

    const/4 v6, -0x1

    .line 862
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 864
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 865
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_36

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 872
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 874
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$27;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatSendIconColor"

    const-string/jumbo v6, "chatEditTextIconsColor"

    .line 880
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getIntColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 882
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 883
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_37

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 890
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 892
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$28;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEditTextColor"

    const/high16 v6, -0x1000000

    .line 898
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 900
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 901
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_38

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 906
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 907
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$29;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEditTextBGColor"

    const/4 v6, -0x1

    .line 913
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 914
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 915
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_39

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 920
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 921
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$30;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEditTextBGGradientColor"

    const/4 v6, -0x1

    .line 927
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 928
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 929
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3a

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 934
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 935
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$31;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatAttachBGColor"

    const/4 v6, -0x1

    .line 941
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 942
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 943
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3b

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 948
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 949
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$32;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatAttachBGGradientColor"

    const/4 v6, -0x1

    .line 955
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 956
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 957
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3c

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 962
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 963
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$33;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatAttachTextColor"

    const v6, -0x8a8a8b

    .line 969
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 970
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 971
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3d

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 976
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 977
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatActivity$3$34;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatEditTextIconsColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 984
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 985
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3e

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 990
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 991
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$35;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$35;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEmojiViewBGColor"

    const v6, -0xa0909

    .line 997
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 998
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 999
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3f

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1004
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1005
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$36;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEmojiViewBGGradientColor"

    const v6, -0xa0909

    .line 1010
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1011
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1012
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_40

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1017
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1018
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$37;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEmojiViewTabIconColor"

    const v6, -0x575758

    .line 1023
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1024
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1025
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_41

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1030
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1031
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$38;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatEmojiViewTabColor"

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 1036
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1038
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1039
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_42

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1044
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1045
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$39;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$39;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1054
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1055
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_43

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1060
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1061
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$40;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatOnlineColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1068
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1069
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_44

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1074
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1075
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$41;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatTypingColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1082
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1083
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_45

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1088
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1089
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$42;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$42;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    const-string/jumbo v5, "chatCommandColor"

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 1095
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1096
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1097
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_46

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1102
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1103
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$43;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$43;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatDateColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1110
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1111
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_47

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1116
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1117
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$44;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$44;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatChecksColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1125
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1126
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_48

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1130
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1131
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarRadius"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1132
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1133
    .local v17, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1134
    .local v13, "currentValue":I
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1135
    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1136
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1137
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1138
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$45;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v13, v15}, Lorg/telegram/ui/ThemingChatActivity$3$45;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1147
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4a

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1151
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1152
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarRadius"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1153
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1155
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1156
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v3, 0x23

    :goto_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1157
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarRadius:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1158
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1159
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$46;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatActivity$3$46;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1156
    :cond_49
    const/16 v3, 0x20

    goto :goto_d

    .line 1169
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4b

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1173
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1174
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarSize"

    const v4, 0x7f0700bb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1175
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1177
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1178
    const/16 v3, 0x38

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1179
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1180
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1181
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$47;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatActivity$3$47;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1191
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4c

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1195
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarMarginLeft"

    const v4, 0x7f0700b9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1197
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1199
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1200
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1201
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarMarginLeft:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1202
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1203
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$48;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatActivity$3$48;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1213
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4d

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1217
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "NameSize"

    const v4, 0x7f0703b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1219
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1220
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "chatNameSize"

    const/16 v4, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1221
    .restart local v13    # "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1222
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1223
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1224
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1225
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$49;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v13}, Lorg/telegram/ui/ThemingChatActivity$3$49;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1233
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1234
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4e

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1238
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1239
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "StatusSize"

    const v4, 0x7f0705fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1240
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1241
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1242
    const/16 v3, 0x16

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1243
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatStatusSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1244
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1245
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$50;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemingChatActivity$3$50;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1255
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4f

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1259
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1260
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TextSize"

    const v4, 0x7f070620

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1261
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1262
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "chatTextSize"

    const/16 v4, 0x10

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1263
    .restart local v13    # "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1264
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1265
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1266
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1267
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$51;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v13}, Lorg/telegram/ui/ThemingChatActivity$3$51;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1281
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_50

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1285
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1286
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TimeSize"

    const v4, 0x7f07062a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1287
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1289
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1290
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1291
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatTimeSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1292
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1293
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$52;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemingChatActivity$3$52;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1303
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_51

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1307
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1308
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "DateSize"

    const v4, 0x7f0701c7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1309
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1311
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1312
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1313
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatDateSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1314
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1315
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$53;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemingChatActivity$3$53;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1325
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_52

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1329
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1330
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "EditTextSize"

    const v4, 0x7f070214

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1331
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1332
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v3, "chatEditTextSize"

    const/16 v4, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1333
    .restart local v13    # "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1334
    const/16 v3, 0x1c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1335
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1336
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1337
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$54;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v13}, Lorg/telegram/ui/ThemingChatActivity$3$54;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v12, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1346
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_53

    .line 1347
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1348
    .local v9, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "array_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    new-instance v4, Lorg/telegram/ui/ImageListActivity;

    invoke-direct {v4, v9}, Lorg/telegram/ui/ImageListActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 1350
    .end local v9    # "args":Landroid/os/Bundle;
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_54

    .line 1351
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1352
    .restart local v9    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "array_id"

    const/4 v4, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    new-instance v4, Lorg/telegram/ui/ImageListActivity;

    invoke-direct {v4, v9}, Lorg/telegram/ui/ImageListActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 1354
    .end local v9    # "args":Landroid/os/Bundle;
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_55

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1359
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1360
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$55;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$55;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1367
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1368
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1373
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1374
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3$56;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatActivity$3$56;-><init>(Lorg/telegram/ui/ThemingChatActivity$3;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1381
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1
.end method

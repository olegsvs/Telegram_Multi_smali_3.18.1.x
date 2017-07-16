.class Lorg/telegram/ui/ThemingProfileActivity$3;
.super Ljava/lang/Object;
.source "ThemingProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingProfileActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
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
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "key":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v10    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, ""

    goto :goto_0

    .restart local v10    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .local v11, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$1;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$1;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .local v1, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .local v13, "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v8, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemingProfileActivity$3$2;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "simpleArray":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .restart local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .restart local v13    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v8, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemingProfileActivity$3$3;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "simpleArray":[Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$4;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$4;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$5;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$5;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarIconsColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$6;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$6;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$7;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$7;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowCreatorStarColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$8;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$8;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowAdminStarColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$9;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$9;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$10;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$10;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "NameSize"

    const v3, 0x7f0703b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .local v12, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x1e

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$11;

    invoke-direct {v3, p0, v12, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$11;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "StatusSize"

    const v3, 0x7f0705fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x16

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$12;

    invoke-direct {v3, p0, v12, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$12;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$13;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$13;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$14;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$14;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$15;

    invoke-direct {v3, p0, v12}, Lorg/telegram/ui/ThemingProfileActivity$3$15;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileRowAvatarRadius:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$16;

    invoke-direct {v3, p0, v12}, Lorg/telegram/ui/ThemingProfileActivity$3$16;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$17;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$17;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$18;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$18;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$19;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$19;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V


    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1
.end method

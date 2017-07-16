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
    .line 188
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
    .line 193
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "key":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 196
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 193
    .end local v10    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, ""

    goto :goto_0

    .line 199
    .restart local v10    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 200
    .local v11, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
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

    .line 210
    .local v1, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_1

    .line 211
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 212
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v8, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 221
    .local v13, "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    invoke-interface {v8, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemingProfileActivity$3$2;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 234
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "simpleArray":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 235
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 244
    .restart local v13    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 245
    invoke-interface {v8, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemingProfileActivity$3$3;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 266
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "simpleArray":[Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 271
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 272
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

    .line 280
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 281
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 282
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 286
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 287
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

    .line 294
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 295
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 300
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 301
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

    .line 308
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 309
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 310
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 314
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 315
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

    .line 322
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 323
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    .line 324
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 328
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 329
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

    .line 336
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 337
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 338
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 342
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 343
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

    .line 350
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 351
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 356
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 357
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

    .line 366
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 367
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    .line 368
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "NameSize"

    const v3, 0x7f0703b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 375
    .local v12, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 376
    const/16 v2, 0x1e

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 377
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 378
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 379
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$11;

    invoke-direct {v3, p0, v12, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$11;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 389
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    .line 390
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "StatusSize"

    const v3, 0x7f0705fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 397
    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 398
    const/16 v2, 0x16

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 399
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 400
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 401
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$12;

    invoke-direct {v3, p0, v12, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$12;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 411
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 412
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 416
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 417
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

    .line 425
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 426
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    .line 427
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 431
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 432
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

    .line 440
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 441
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    .line 442
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 447
    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 449
    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 450
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 451
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 452
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 453
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$15;

    invoke-direct {v3, p0, v12}, Lorg/telegram/ui/ThemingProfileActivity$3$15;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 463
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    .line 464
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 467
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .restart local v9    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 469
    new-instance v12, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 471
    .restart local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 472
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 473
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->profileRowAvatarRadius:I

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 474
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 475
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$16;

    invoke-direct {v3, p0, v12}, Lorg/telegram/ui/ThemingProfileActivity$3$16;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 485
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    .line 486
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 490
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 491
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

    .line 498
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 499
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 504
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 505
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

    .line 512
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 513
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v11    # "li":Landroid/view/LayoutInflater;
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 518
    .restart local v11    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 519
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v2, p0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingProfileActivity$3$19;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/ThemingProfileActivity$3$19;-><init>(Lorg/telegram/ui/ThemingProfileActivity$3;Ljava/lang/String;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowOnlineColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 526
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1
.end method

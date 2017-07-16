.class Lorg/telegram/ui/ThemingChatsActivity$3;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
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
    .line 260
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 263
    .local v19, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, "key":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1109
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 263
    .end local v15    # "key":Ljava/lang/String;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v15, ""

    goto :goto_0

    .line 269
    .restart local v15    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 270
    .local v16, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 271
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$1;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 279
    .local v2, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_1

    .line 280
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 285
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 286
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$2;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradientColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 294
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 295
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 300
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 301
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$3;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 308
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 309
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 310
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 315
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 316
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$4;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    .line 323
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 324
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 325
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 330
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 331
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$5;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 342
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 343
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 348
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 349
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$6;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 357
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 358
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 363
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 364
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$7;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 372
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 373
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 378
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 379
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$8;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 387
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 388
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 393
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 394
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$9;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSilentBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 402
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 403
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 408
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 409
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$10;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 418
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 419
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 424
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 425
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$11;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 434
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 435
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 440
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 441
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$12;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsFavIndicatorColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 449
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 450
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 455
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 456
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$13;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradientColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 465
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 466
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_13

    .line 467
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 468
    .local v10, "b":Z
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 469
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v10, :cond_11

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_10

    .line 472
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_12

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 476
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 469
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto :goto_2

    .line 472
    .end local p2    # "view":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto :goto_3

    .line 477
    .end local v10    # "b":Z
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_14

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 482
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 483
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$14;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x232324

    .line 489
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 490
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 499
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_18

    .line 500
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "HeaderTitle"

    const v4, 0x7f0702c3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v21

    .line 503
    .local v21, "user_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v20

    .line 504
    .local v20, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v9, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "AppName"

    const v4, 0x7f070078

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    const-string/jumbo v3, "ShortAppName"

    const v4, 0x7f07073a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    const-string/jumbo v22, ""

    .line 508
    .local v22, "usr":Ljava/lang/String;
    if-eqz v20, :cond_16

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v3, :cond_15

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 509
    :cond_15
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 510
    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_16
    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 514
    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_17
    const-string/jumbo v3, ""

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 518
    .local v18, "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 519
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$15;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 532
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "user_id":I
    .end local v22    # "usr":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 533
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 535
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .restart local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 542
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 543
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$16;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 558
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1a

    .line 559
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f07054d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .restart local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070550

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070554

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070551

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070553

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f07054e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 568
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 569
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$17;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 585
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1b

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 590
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 591
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$18;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 598
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 599
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1c

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 604
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 605
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$19;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    .line 611
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 613
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 614
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1d

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 619
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 620
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$20;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    .line 626
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 628
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 629
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1e

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 634
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 635
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$21;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const-string/jumbo v5, "chatsGroupNameColor"

    const/high16 v6, -0x1000000

    .line 641
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 642
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 643
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1f

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 648
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 649
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$22;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$22;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x575758

    .line 655
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 656
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 657
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_20

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 662
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 663
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$23;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$23;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 670
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 671
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 672
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_21

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 677
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 678
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$24;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x7f7f80

    .line 684
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 685
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 686
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_22

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 691
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 692
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$25;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    .line 698
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 699
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 700
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_23

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 705
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 706
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$26;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$26;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 713
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 715
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 716
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_24

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 721
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 722
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$27;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    const-string/jumbo v5, "chatsMediaColor"

    const-string/jumbo v6, "chatsMemberColor"

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 729
    move-object/from16 v0, v19

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 731
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 732
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_25

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 737
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 738
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$28;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 744
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 746
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 747
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_26

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 752
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 753
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$29;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x666667

    .line 759
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 760
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 761
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_27

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 766
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 767
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$30;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 773
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 774
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 775
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_28

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 780
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 781
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$31;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 788
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 789
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 790
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_29

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 795
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 796
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$32;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const-string/jumbo v5, "chatsCountBGColor"

    const v6, -0x464647

    .line 803
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 804
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 805
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2a

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 809
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 810
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarRadius"

    const v4, 0x7f0700ba

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 811
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 813
    .local v17, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 814
    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 815
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 816
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 818
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$33;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$33;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 829
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2b

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 833
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TabsTextSize"

    const v4, 0x7f070613

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 835
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 836
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 837
    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 838
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 839
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 840
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$34;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$34;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 854
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2c

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 858
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 859
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "CountSize"

    const v4, 0x7f0701ac

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 860
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 862
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 863
    const/16 v3, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 864
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 865
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 866
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$35;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$35;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 877
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2d

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 881
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 882
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarSize"

    const v4, 0x7f0700bb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 883
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 885
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 886
    const/16 v3, 0x48

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 887
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 888
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 889
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$36;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$36;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 899
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2e

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 903
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarMarginLeft"

    const v4, 0x7f0700b9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 905
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 907
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 908
    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 909
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarMarginLeft:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 910
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 912
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$37;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$37;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 923
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2f

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 927
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 928
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "NameSize"

    const v4, 0x7f0703b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 929
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 931
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 932
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 933
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 934
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 935
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$38;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$38;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 943
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 950
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_30

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 954
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 955
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "GroupNameSize"

    const v4, 0x7f0702ac

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 956
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 957
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 958
    .local v12, "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 959
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 960
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 961
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 962
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$39;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$39;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 969
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 972
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_31

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 976
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 977
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "MessageSize"

    const v4, 0x7f07038e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 978
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 979
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x10

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 980
    .restart local v12    # "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 981
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 982
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 983
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 984
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$40;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$40;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 993
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_32

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 997
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 998
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TimeDateSize"

    const v4, 0x7f070629

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 999
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1000
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1001
    .restart local v12    # "currentValue":I
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1002
    const/16 v3, 0x19

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1003
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1004
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1005
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$41;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$41;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1014
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_33

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1018
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1019
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "CountSize"

    const v4, 0x7f0701ac

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1020
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1022
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1023
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1024
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsCountSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1025
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1026
    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$42;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$42;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1036
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_34

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1041
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1042
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$43;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$43;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 1049
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1050
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1051
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_35

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1056
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1057
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$44;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$44;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 1064
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1065
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1066
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_37

    .line 1068
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    if-nez v3, :cond_36

    const/4 v3, 0x1

    :goto_4
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    .line 1069
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1070
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1071
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1073
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1068
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_36
    const/4 v3, 0x0

    goto :goto_4

    .line 1075
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_39

    .line 1076
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    if-nez v3, :cond_38

    const/4 v3, 0x1

    :goto_5
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    .line 1077
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1078
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1079
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1080
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1081
    .local v14, "editorPlus":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "tabsToBottom"

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1082
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1084
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1085
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1076
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_38
    const/4 v3, 0x0

    goto :goto_5

    .line 1087
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3b

    .line 1088
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    if-nez v3, :cond_3a

    const/4 v3, 0x1

    :goto_6
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    .line 1089
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1090
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1092
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1093
    .restart local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "tabTitlesMode"

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1094
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1095
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1096
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1097
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1088
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3a
    const/4 v3, 0x0

    goto :goto_6

    .line 1099
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 1100
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    if-nez v3, :cond_3d

    const/4 v3, 0x1

    :goto_7
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    .line 1101
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1102
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1103
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1104
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3c

    .line 1105
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1107
    :cond_3c
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1100
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3d
    const/4 v3, 0x0

    goto :goto_7
.end method

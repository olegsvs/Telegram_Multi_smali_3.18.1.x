.class Lorg/telegram/ui/ThemingContactsActivity$3;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
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
    .line 182
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 184
    .local v16, "themePrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 439
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 190
    .local v13, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$1;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsHeaderColor"

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 197
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 198
    .local v1, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_0

    .line 199
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 204
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 205
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$2;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsHeaderGradientColor"

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 211
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 212
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 213
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 218
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 219
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$3;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsHeaderTitleColor"

    const/4 v5, -0x1

    .line 224
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 225
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 226
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 231
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 232
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$4;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsHeaderIconsColor"

    const/4 v5, -0x1

    .line 237
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 238
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 244
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 245
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$5;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsIconsColor"

    const v5, -0x8c8c8d

    .line 250
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 251
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 252
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 257
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 258
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$6;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsRowColor"

    const/4 v5, -0x1

    .line 264
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 265
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 266
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 271
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 272
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$7;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsRowGradientColor"

    const/4 v5, -0x1

    .line 277
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 278
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 279
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 280
    const-string/jumbo v2, "contactsRowGradientListCheck"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 281
    .local v9, "b":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 282
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "contactsRowGradientListCheck"

    if-nez v9, :cond_9

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v12, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_0

    .line 285
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v9, :cond_a

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 282
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 285
    .end local p2    # "view":Landroid/view/View;
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 288
    .end local v9    # "b":Z
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 289
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v8, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    .line 298
    .local v15, "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    invoke-interface {v8, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$8;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 311
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v15    # "simpleArray":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    .line 312
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f07054d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 314
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070550

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070554

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070551

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070553

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f07054e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    .line 321
    .restart local v15    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 322
    invoke-interface {v8, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$9;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 334
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v15    # "simpleArray":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 339
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 340
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$10;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsNameColor"

    const/high16 v5, -0x1000000

    .line 346
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 347
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 348
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 353
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 354
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$11;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsStatusColor"

    const v5, -0x575758

    .line 360
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 361
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 362
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 367
    .restart local v13    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 368
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$12;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsOnlineColor"

    const-string/jumbo v5, "themeColor"

    const/16 v6, 0x15

    .line 373
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 374
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 375
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v13    # "li":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 379
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v14, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 382
    .local v14, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v2, "contactsAvatarRadius"

    const/16 v3, 0x20

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 383
    .local v11, "currentValue":I
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 384
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 385
    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 386
    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 387
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v11}, Lorg/telegram/ui/ThemingContactsActivity$3$13;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 396
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v11    # "currentValue":I
    .end local v14    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 400
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "NameSize"

    const v3, 0x7f0703b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    new-instance v14, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 403
    .restart local v14    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v2, "contactsNameSize"

    const/16 v3, 0x11

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 404
    .restart local v11    # "currentValue":I
    const/16 v2, 0xc

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 405
    const/16 v2, 0x1e

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 406
    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 407
    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 408
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v11}, Lorg/telegram/ui/ThemingContactsActivity$3$14;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 417
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v11    # "currentValue":I
    .end local v14    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "StatusSize"

    const v3, 0x7f0705fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    new-instance v14, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v14    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const-string/jumbo v2, "contactsStatusSize"

    const/16 v3, 0xe

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 425
    .restart local v11    # "currentValue":I
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 426
    const/16 v2, 0x14

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 427
    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 428
    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 429
    const-string/jumbo v2, "Done"

    const v3, 0x7f070207

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v11}, Lorg/telegram/ui/ThemingContactsActivity$3$15;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method

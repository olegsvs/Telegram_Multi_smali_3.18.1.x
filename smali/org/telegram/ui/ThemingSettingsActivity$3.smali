.class Lorg/telegram/ui/ThemingSettingsActivity$3;
.super Ljava/lang/Object;
.source "ThemingSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 175
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_2

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 180
    .local v8, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$1;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 188
    .local v0, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_0

    .line 189
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_3

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 194
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$2;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 202
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_0

    .line 203
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_4

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 208
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 209
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$3;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarStatusColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 216
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 217
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_5

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 222
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$4;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 230
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 231
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_6

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 236
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 237
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$5;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 244
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 245
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AvatarRadius"

    const v2, 0x7f0700ba

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v9, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 253
    .local v9, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 254
    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 255
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 256
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    const-string/jumbo v1, "Done"

    const v2, 0x7f070207

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$6;

    invoke-direct {v2, p0, v9}, Lorg/telegram/ui/ThemingSettingsActivity$3$6;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ThemingSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 267
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_8

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .restart local v7    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AvatarSize"

    const v2, 0x7f0700bb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 273
    new-instance v9, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 275
    .restart local v9    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 276
    const/16 v1, 0x30

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 277
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 278
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 279
    const-string/jumbo v1, "Done"

    const v2, 0x7f070207

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$7;

    invoke-direct {v2, p0, v9}, Lorg/telegram/ui/ThemingSettingsActivity$3$7;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ThemingSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 290
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_9

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 295
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 296
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$8;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 303
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 304
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_a

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 309
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 310
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$9;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 317
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 318
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_b

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 323
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 324
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$10;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 331
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 332
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_c

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 337
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 338
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$11;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 345
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 346
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_d

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 351
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 352
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$12;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 359
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 360
    .end local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v8    # "li":Landroid/view/LayoutInflater;
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 365
    .restart local v8    # "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 366
    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemingSettingsActivity$3$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3$13;-><init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 373
    .restart local v0    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0
.end method

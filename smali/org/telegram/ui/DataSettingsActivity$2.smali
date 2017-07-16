.class Lorg/telegram/ui/DataSettingsActivity$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DataSettingsActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_13

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const/4 v3, 0x6

    new-array v0, v3, [Z

    move-object/from16 v16, v0

    .line 131
    .local v16, "maskValues":[Z
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v10, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v15, 0x0

    .line 134
    .local v15, "mask":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 135
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 142
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 143
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 144
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    const/4 v3, 0x6

    if-ge v9, v3, :cond_12

    .line 147
    const/16 v17, 0x0

    .line 148
    .local v17, "name":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 149
    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    aput-boolean v3, v16, v9

    .line 150
    const-string/jumbo v3, "LocalPhotoCache"

    const v4, 0x7f07035f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 167
    :cond_4
    :goto_4
    new-instance v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v12, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 168
    .local v12, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 169
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const-string/jumbo v3, ""

    aget-boolean v4, v16, v9

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    const-string/jumbo v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 173
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/DataSettingsActivity$2$1;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[Z)V

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 136
    .end local v9    # "a":I
    .end local v12    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v17    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 137
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto/16 :goto_1

    .line 138
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto/16 :goto_1

    .line 149
    .restart local v9    # "a":I
    .restart local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 151
    :cond_8
    const/4 v3, 0x1

    if-ne v9, v3, :cond_a

    .line 152
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    aput-boolean v3, v16, v9

    .line 153
    const-string/jumbo v3, "LocalAudioCache"

    const v4, 0x7f070357

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 152
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 154
    :cond_a
    const/4 v3, 0x2

    if-ne v9, v3, :cond_c

    .line 155
    and-int/lit8 v3, v15, 0x4

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_6
    aput-boolean v3, v16, v9

    .line 156
    const-string/jumbo v3, "LocalVideoCache"

    const v4, 0x7f070360

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 155
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .line 157
    :cond_c
    const/4 v3, 0x3

    if-ne v9, v3, :cond_e

    .line 158
    and-int/lit8 v3, v15, 0x8

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_7
    aput-boolean v3, v16, v9

    .line 159
    const-string/jumbo v3, "FilesDataUsage"

    const v4, 0x7f07024a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 158
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 160
    :cond_e
    const/4 v3, 0x4

    if-ne v9, v3, :cond_10

    .line 161
    and-int/lit8 v3, v15, 0x10

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_8
    aput-boolean v3, v16, v9

    .line 162
    const-string/jumbo v3, "AttachMusic"

    const v4, 0x7f0700a9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 161
    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 163
    :cond_10
    const/4 v3, 0x5

    if-ne v9, v3, :cond_4

    .line 164
    and-int/lit8 v3, v15, 0x20

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_9
    aput-boolean v3, v16, v9

    .line 165
    const-string/jumbo v3, "LocalGifCache"

    const v4, 0x7f07035d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 164
    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    .line 183
    .end local v17    # "name":Ljava/lang/String;
    :cond_12
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 184
    .local v11, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const-string/jumbo v3, "Save"

    const v4, 0x7f070559

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 186
    const-string/jumbo v3, "dialogTextBlue2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 187
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$2;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v10, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 235
    .end local v9    # "a":I
    .end local v10    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v11    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v15    # "mask":I
    .end local v16    # "maskValues":[Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v4}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 237
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_15

    .line 238
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 239
    .local v18, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "UseLessDataNever"

    const v8, 0x7f070657

    .line 240
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "UseLessDataOnMobile"

    const v8, 0x7f070658

    .line 241
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "UseLessDataAlways"

    const v8, 0x7f070656

    .line 242
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string/jumbo v6, "VoipUseLessData"

    const v7, 0x7f070698

    .line 243
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VoipDataSaving"

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Lorg/telegram/ui/DataSettingsActivity$2$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$3;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;Landroid/content/SharedPreferences;I)V

    .line 239
    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v13

    .line 266
    .local v13, "dlg":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/DataSettingsActivity;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 267
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 268
    .end local v13    # "dlg":Landroid/app/Dialog;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_16

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 270
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_17

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 272
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

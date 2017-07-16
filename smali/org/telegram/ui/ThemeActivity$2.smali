.class Lorg/telegram/ui/ThemeActivity$2;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemeActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 92
    if-nez p2, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 97
    .local v10, "editText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v9, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "NewTheme"

    const v2, 0x7f0703c9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 101
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 102
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemeActivity$2$1;-><init>(Lorg/telegram/ui/ThemeActivity$2;)V

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 109
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    invoke-virtual {v9, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 113
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v13, "message":Landroid/widget/TextView;
    const-string/jumbo v1, "EnterThemeName"

    const v2, 0x7f07023d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v10, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 121
    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 124
    const/16 v1, 0x4001

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    const/16 v1, 0x33

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 127
    const/4 v1, 0x6

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 128
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 129
    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 130
    const/4 v1, -0x1

    const/16 v2, 0x24

    const/16 v3, 0x33

    const/16 v4, 0x18

    const/4 v5, 0x6

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v1, Lorg/telegram/ui/ThemeActivity$2$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ThemeActivity$2$2;-><init>(Lorg/telegram/ui/ThemeActivity$2;)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v8

    .line 139
    .local v8, "alertDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v1, Lorg/telegram/ui/ThemeActivity$2$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/ThemeActivity$2$3;-><init>(Lorg/telegram/ui/ThemeActivity$2;Landroid/widget/EditText;)V

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ThemeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 152
    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$2$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v8}, Lorg/telegram/ui/ThemeActivity$2$4;-><init>(Lorg/telegram/ui/ThemeActivity$2;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 183
    .end local v8    # "alertDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .end local v9    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v10    # "editText":Landroid/widget/EditText;
    .end local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v13    # "message":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 p2, p2, -0x2

    .line 184
    if-ltz p2, :cond_0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 185
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 187
    .local v14, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_3

    .line 188
    const/4 v1, 0x0

    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    .line 189
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 190
    .local v15, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 191
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "usePlusTheme"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    const-string/jumbo v1, "ThemeActivty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " themeInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->access$100(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->access$200(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 205
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->finishFragment()V

    goto/16 :goto_0
.end method

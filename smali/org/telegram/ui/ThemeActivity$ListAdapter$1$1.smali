.class Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

.field final synthetic val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    .prologue
    .line 268
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x1

    .line 271
    if-nez p2, :cond_8

    .line 273
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 276
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "default_theme.attheme"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v1, "currentFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 281
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    if-eqz v8, :cond_1

    .line 288
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v7, v8

    .line 299
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    .local v4, "finalFile":Ljava/io/File;
    :try_start_3
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v9

    if-nez v9, :cond_7

    .line 340
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v4    # "finalFile":Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 290
    .restart local v1    # "currentFile":Ljava/io/File;
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessage"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 293
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 284
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    if-eqz v7, :cond_2

    .line 288
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 290
    :catch_2
    move-exception v2

    .line 291
    const-string/jumbo v9, "tmessage"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 286
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 287
    :goto_4
    if-eqz v7, :cond_4

    .line 288
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 292
    :cond_4
    :goto_5
    throw v9

    .line 290
    :catch_3
    move-exception v2

    .line 291
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessage"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 294
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 295
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .restart local v1    # "currentFile":Ljava/io/File;
    goto :goto_1

    .line 297
    .end local v1    # "currentFile":Ljava/io/File;
    :cond_6
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "currentFile":Ljava/io/File;
    goto :goto_1

    .line 304
    .restart local v4    # "finalFile":Ljava/io/File;
    :cond_7
    :try_start_7
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.SEND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "text/xml"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v9, "android.intent.extra.STREAM"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    const-string/jumbo v10, "ShareFile"

    const v11, 0x7f0705bd

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    const/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 308
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v2

    .line 309
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 311
    .end local v1    # "currentFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "finalFile":Ljava/io/File;
    :cond_8
    if-ne p2, v10, :cond_9

    .line 312
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$300(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 313
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 314
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$400(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 315
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->access$500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 316
    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {v9}, Lorg/telegram/ui/Components/ThemeEditorView;-><init>()V

    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v10, v10, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->val$themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 319
    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 322
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v9, "DeleteThemeAlert"

    const v10, 0x7f0701ee

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 324
    const-string/jumbo v9, "AppName"

    const v10, 0x7f070078

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 325
    const-string/jumbo v9, "Delete"

    const v10, 0x7f0701d9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1$1;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;)V

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 337
    const-string/jumbo v9, "Cancel"

    const v10, 0x7f0700f0

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 338
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$1$1;->this$2:Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ThemeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 286
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v1    # "currentFile":Ljava/io/File;
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 283
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

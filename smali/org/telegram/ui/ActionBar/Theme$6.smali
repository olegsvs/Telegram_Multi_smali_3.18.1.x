.class final Lorg/telegram/ui/ActionBar/Theme$6;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3605
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$200()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 3606
    :try_start_0
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "mainconfig"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 3607
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "overrideThemeWallpaper"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 3608
    .local v7, "overrideTheme":Z
    if-nez v7, :cond_0

    .line 3609
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Ljava/util/HashMap;

    move-result-object v14

    const-string/jumbo v16, "chat_wallpaper"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3610
    .local v2, "backgroundColor":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 3611
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3612
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    .line 3643
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    if-nez v14, :cond_3

    .line 3644
    const/4 v10, 0x0

    .line 3646
    .local v10, "selectedColor":I
    :try_start_1
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "mainconfig"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 3647
    const-string/jumbo v14, "selectedBackground"

    const v16, 0xf4241

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 3648
    .local v9, "selectedBackground":I
    const-string/jumbo v14, "selectedColor"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 3649
    if-nez v10, :cond_1

    .line 3650
    const v14, 0xf4241

    if-ne v9, v14, :cond_9

    .line 3651
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020023

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3652
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3667
    .end local v9    # "selectedBackground":I
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_3

    .line 3668
    if-nez v10, :cond_2

    .line 3669
    const v10, -0x291b11

    .line 3671
    :cond_2
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v14, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3674
    .end local v10    # "selectedColor":I
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/ui/ActionBar/Theme;->access$900(Landroid/graphics/drawable/Drawable;I)V

    .line 3675
    new-instance v14, Lorg/telegram/ui/ActionBar/Theme$6$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/Theme$6$1;-><init>(Lorg/telegram/ui/ActionBar/Theme$6;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3682
    monitor-exit v15

    .line 3683
    return-void

    .line 3613
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v14

    if-lez v14, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v14, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_0

    .line 3614
    :cond_5
    const/4 v11, 0x0

    .line 3616
    .local v11, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3618
    .local v4, "currentPosition":I
    :try_start_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 3619
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 3623
    .local v6, "file":Ljava/io/File;
    :goto_2
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3624
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v12, "stream":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3625
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3626
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 3627
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$802(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3628
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3634
    :cond_6
    if-eqz v12, :cond_0

    .line 3635
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3637
    :catch_0
    move-exception v5

    .line 3638
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3682
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "overrideTheme":Z
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v14

    .line 3621
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v7    # "overrideTheme":Z
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :cond_7
    :try_start_7
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local v6    # "file":Ljava/io/File;
    goto :goto_2

    .line 3630
    .end local v6    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 3631
    .local v5, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_8
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3634
    if-eqz v11, :cond_0

    .line 3635
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 3637
    :catch_2
    move-exception v5

    .line 3638
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 3633
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    .line 3634
    :goto_4
    if-eqz v11, :cond_8

    .line 3635
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3639
    :cond_8
    :goto_5
    :try_start_c
    throw v14

    .line 3637
    :catch_3
    move-exception v5

    .line 3638
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 3654
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "selectedBackground":I
    .restart local v10    # "selectedColor":I
    :cond_9
    :try_start_d
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "wallpaper.jpg"

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    .local v13, "toFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3656
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3657
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    goto/16 :goto_1

    .line 3664
    .end local v9    # "selectedBackground":I
    .end local v13    # "toFile":Ljava/io/File;
    :catch_4
    move-exception v14

    goto/16 :goto_1

    .line 3659
    .restart local v9    # "selectedBackground":I
    .restart local v13    # "toFile":Ljava/io/File;
    :cond_a
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020023

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3660
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 3633
    .end local v9    # "selectedBackground":I
    .end local v10    # "selectedColor":I
    .end local v13    # "toFile":Ljava/io/File;
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 3630
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

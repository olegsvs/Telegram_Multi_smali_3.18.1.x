.class Lorg/telegram/ui/WallpapersActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 20
    .param p1, "id"    # I

    .prologue
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .local v15, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    if-eqz v15, :cond_4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    move/from16 v17, v0

    const v18, 0xf4241

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    instance-of v0, v15, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    .local v16, "width":I
    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Point;->y:I

    .local v9, "height":I
    move/from16 v0, v16

    if-le v0, v9, :cond_2

    move/from16 v12, v16

    .local v12, "temp":I
    move/from16 v16, v9

    move v9, v12

    .end local v12    # "temp":I
    :cond_2
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v6, "f":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "wallpaper.jpg"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v14, "toFile":Ljava/io/File;
    :try_start_0
    invoke-static {v6, v14}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "height":I
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v14    # "toFile":Ljava/io/File;
    .end local v16    # "width":I
    .local v2, "done":Z
    :goto_1
    if-eqz v2, :cond_3

    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "mainconfig"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .local v10, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "selectedBackground"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v17, "selectedColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/WallpapersActivity;->access$200(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v18, "overrideThemeWallpaper"

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "theme"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .local v13, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "chatSolidBGColorCheck"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v17, 0x0

    sput-boolean v17, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    .end local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    goto/16 :goto_0

    .end local v2    # "done":Z
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v9    # "height":I
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v14    # "toFile":Ljava/io/File;
    .restart local v16    # "width":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "done":Z
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v2    # "done":Z
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "height":I
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v14    # "toFile":Ljava/io/File;
    .end local v16    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/WallpaperUpdater;->getCurrentWallpaperPath()Ljava/io/File;

    move-result-object v8

    .local v8, "fromFile":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "wallpaper.jpg"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v14    # "toFile":Ljava/io/File;
    :try_start_1
    invoke-static {v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .restart local v2    # "done":Z
    goto/16 :goto_1

    .end local v2    # "done":Z
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "done":Z
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v2    # "done":Z
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "fromFile":Ljava/io/File;
    .end local v14    # "toFile":Ljava/io/File;
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "done":Z
    goto/16 :goto_1

    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

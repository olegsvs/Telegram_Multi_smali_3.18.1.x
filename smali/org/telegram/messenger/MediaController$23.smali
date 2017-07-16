.class final Lorg/telegram/messenger/MediaController$23;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$guid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lorg/telegram/messenger/MediaController$23;->val$guid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "albumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .local v37, "videoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .local v20, "albums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    const/16 v22, 0x0

    .local v22, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/16 v30, 0x0

    .local v30, "cameraFolder":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "Camera/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    :goto_0
    const/16 v28, 0x0

    .local v28, "cameraAlbumId":Ljava/lang/Integer;
    const/16 v29, 0x0

    .local v29, "cameraAlbumVideoId":Ljava/lang/Integer;
    const/16 v31, 0x0

    .local v31, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_c

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$5800()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-static/range {v2 .. v7}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    if-eqz v31, :cond_c

    const-string/jumbo v2, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .local v35, "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .local v27, "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .local v32, "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .local v33, "dateColumn":I
    const-string/jumbo v2, "orientation"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v36

    .local v36, "orientationColumn":I
    move-object/from16 v23, v22

    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v23, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .local v5, "imageId":I
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .local v4, "bucketId":I
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .local v26, "bucketName":Ljava/lang/String;
    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "dateTaken":J
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, "orientation":I
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    const-string/jumbo v10, "*"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .local v3, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v23, :cond_13

    new-instance v22, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v2, 0x0

    const-string/jumbo v10, "AllPhotos"

    const v11, 0x7f07005e

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v10, v3, v11}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .local v19, "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v19, :cond_4

    new-instance v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v28, :cond_5

    if-eqz v30, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    :cond_4
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v23, v22

    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_1

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v28    # "cameraAlbumId":Ljava/lang/Integer;
    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .end local v31    # "cursor":Landroid/database/Cursor;
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v36    # "orientationColumn":I
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v26    # "bucketName":Ljava/lang/String;
    .restart local v27    # "bucketNameColumn":I
    .restart local v28    # "cameraAlbumId":Ljava/lang/Integer;
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v31    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v36    # "orientationColumn":I
    :cond_5
    :try_start_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v36    # "orientationColumn":I
    :catch_1
    move-exception v34

    .local v34, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v31, :cond_6

    :try_start_6
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v34    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    :try_start_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_10

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    const/16 v24, 0x0

    .local v24, "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$5900()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "datetaken DESC"

    invoke-static/range {v10 .. v15}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    if-eqz v31, :cond_10

    const-string/jumbo v2, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .restart local v35    # "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .restart local v27    # "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .restart local v32    # "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .restart local v33    # "dateColumn":I
    :cond_8
    :goto_6
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .restart local v5    # "imageId":I
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .restart local v4    # "bucketId":I
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "bucketName":Ljava/lang/String;
    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .restart local v6    # "dateTaken":J
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-wide v14, v6

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v24, :cond_9

    new-instance v24, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    const-string/jumbo v10, "AllVideo"

    const v11, 0x7f07005f

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v10, v3, v11}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .restart local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_9
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v19, :cond_f

    new-instance v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v29, :cond_e

    if-eqz v30, :cond_e

    if-eqz v8, :cond_e

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v14

    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .local v14, "cameraAlbumVideoId":Ljava/lang/Integer;
    :goto_7
    :try_start_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v29, v14

    .end local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    goto/16 :goto_6

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v26    # "bucketName":Ljava/lang/String;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v36    # "orientationColumn":I
    :cond_b
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v36    # "orientationColumn":I
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_c
    if-eqz v31, :cond_6

    :try_start_9
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .local v34, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v34    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v31, :cond_d

    :try_start_a
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_d
    :goto_9
    throw v2

    :catch_4
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v26    # "bucketName":Ljava/lang/String;
    .restart local v27    # "bucketNameColumn":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    :cond_e
    :try_start_b
    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_f
    move-object/from16 v14, v29

    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    goto :goto_7

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v14, v29

    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    if-eqz v31, :cond_11

    :try_start_c
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController$23;->val$guid:I

    const/16 v16, 0x0

    move-object/from16 v11, v21

    move-object/from16 v12, v28

    move-object/from16 v13, v37

    move-object/from16 v15, v22

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->access$6000(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void

    :catch_5
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .end local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    :catch_6
    move-exception v34

    move-object/from16 v14, v29

    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .local v34, "e":Ljava/lang/Throwable;
    :goto_b
    :try_start_d
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v31, :cond_11

    :try_start_e
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_a

    :catch_7
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .end local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    move-object/from16 v14, v29

    .end local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    :goto_c
    if-eqz v31, :cond_12

    :try_start_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :cond_12
    :goto_d
    throw v2

    :catch_8
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .end local v34    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    goto :goto_c

    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v26    # "bucketName":Ljava/lang/String;
    .restart local v27    # "bucketNameColumn":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    :catch_9
    move-exception v34

    goto :goto_b

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v14    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v26    # "bucketName":Ljava/lang/String;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v29    # "cameraAlbumVideoId":Ljava/lang/Integer;
    .restart local v36    # "orientationColumn":I
    :catchall_3
    move-exception v2

    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto :goto_8

    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_a
    move-exception v34

    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_4

    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v26    # "bucketName":Ljava/lang/String;
    :cond_13
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_2
.end method

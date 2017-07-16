.class Lorg/telegram/messenger/ImageLoader$HttpFileTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fileSize:I

.field private lastProgressTime:J

.field private tempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "tempFile"    # Ljava/io/File;
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    .line 107
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    .line 109
    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    return-object v0
.end method

.method private reportProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, "currentTime":J
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 115
    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    .line 116
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ImageLoader$HttpFileTask$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpFileTask;F)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 21
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 132
    const/4 v10, 0x0

    .line 133
    .local v10, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 135
    .local v5, "done":Z
    const/4 v9, 0x0

    .line 137
    .local v9, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 139
    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v18, "Referer"

    const-string/jumbo v19, "google.com"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 142
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 143
    instance-of v0, v9, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 144
    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v11, v0

    .line 145
    .local v11, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 146
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 147
    .local v15, "status":I
    const/16 v18, 0x12e

    move/from16 v0, v18

    if-eq v15, v0, :cond_0

    const/16 v18, 0x12d

    move/from16 v0, v18

    if-eq v15, v0, :cond_0

    const/16 v18, 0x12f

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 148
    :cond_0
    const-string/jumbo v18, "Location"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, "newUrl":Ljava/lang/String;
    const-string/jumbo v18, "Set-Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "cookies":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    .end local v6    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v6, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v6    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 152
    const-string/jumbo v18, "Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v18, "Referer"

    const-string/jumbo v19, "google.com"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v11    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v15    # "status":I
    :cond_1
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 158
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 160
    new-instance v18, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "rws"

    invoke-direct/range {v18 .. v20}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v6    # "downloadUrl":Ljava/net/URL;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 180
    if-eqz v9, :cond_2

    :try_start_1
    instance-of v0, v9, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 181
    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 182
    .local v2, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    const/16 v18, 0xca

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    const/16 v18, 0x130

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    .line 183
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .end local v2    # "code":I
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 191
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 192
    .local v8, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_3

    .line 193
    const-string/jumbo v18, "content-Length"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 194
    .local v17, "values":Ljava/util/List;
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 195
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 196
    .local v12, "length":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 197
    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    .end local v8    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "length":Ljava/lang/String;
    .end local v17    # "values":Ljava/util/List;
    :cond_3
    :goto_2
    if-eqz v10, :cond_5

    .line 208
    const v18, 0x8000

    :try_start_3
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 209
    .local v4, "data":[B
    const/16 v16, 0x0

    .line 211
    .local v16, "totalLoaded":I
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v18

    if-eqz v18, :cond_c

    .line 242
    .end local v4    # "data":[B
    .end local v16    # "totalLoaded":I
    :cond_5
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    .line 244
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 251
    :cond_6
    :goto_5
    if-eqz v10, :cond_7

    .line 252
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 259
    :cond_7
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    return-object v18

    .line 161
    :catch_0
    move-exception v7

    .line 162
    .local v7, "e":Ljava/lang/Throwable;
    instance-of v0, v7, Ljava/net/SocketTimeoutException;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 163
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 164
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    .line 175
    :cond_8
    :goto_7
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 166
    :cond_9
    instance-of v0, v7, Ljava/net/UnknownHostException;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 167
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_7

    .line 168
    :cond_a
    instance-of v0, v7, Ljava/net/SocketException;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 169
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ECONNRESET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 170
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_7

    .line 172
    :cond_b
    instance-of v0, v7, Ljava/io/FileNotFoundException;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 173
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    goto :goto_7

    .line 186
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 187
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 201
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 202
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 215
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "data":[B
    .restart local v16    # "totalLoaded":I
    :cond_c
    :try_start_6
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 216
    .local v14, "read":I
    if-lez v14, :cond_d

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v14}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 218
    add-int v16, v16, v14

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 220
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 231
    .end local v14    # "read":I
    :catch_3
    move-exception v7

    .line 232
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 236
    .end local v4    # "data":[B
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "totalLoaded":I
    :catch_4
    move-exception v7

    .line 237
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 222
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v4    # "data":[B
    .restart local v14    # "read":I
    .restart local v16    # "totalLoaded":I
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_5

    .line 223
    const/4 v5, 0x1

    .line 224
    :try_start_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 225
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_4

    .line 246
    .end local v4    # "data":[B
    .end local v14    # "read":I
    .end local v16    # "totalLoaded":I
    :catch_5
    move-exception v7

    .line 247
    .restart local v7    # "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 254
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v7

    .line 255
    .restart local v7    # "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 270
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 264
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

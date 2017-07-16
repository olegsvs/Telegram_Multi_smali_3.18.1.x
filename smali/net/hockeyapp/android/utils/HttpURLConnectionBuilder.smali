.class public Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
.super Ljava/lang/Object;
.source "HttpURLConnectionBuilder.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_TIMEOUT:I = 0x1d4c0


# instance fields
.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

.field private mRequestBody:Ljava/lang/String;

.field private mRequestMethod:Ljava/lang/String;

.field private mTimeout:I

.field private final mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const v0, 0x1d4c0

    iput v0, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mTimeout:I

    .line 46
    iput-object p1, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mUrlString:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mHeaders:Ljava/util/Map;

    .line 48
    iget-object v0, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mHeaders:Ljava/util/Map;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "HockeySDK/Android 4.1.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private static getFormString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "protoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "value":Ljava/lang/String;
    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "&"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public build()Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mUrlString:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 126
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mTimeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    iget v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mTimeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-gt v5, v6, :cond_0

    .line 130
    const-string/jumbo v5, "Connection"

    const-string/jumbo v6, "close"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestMethod:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestMethod:Ljava/lang/String;

    const-string/jumbo v6, "POST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestMethod:Ljava/lang/String;

    const-string/jumbo v6, "PUT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    :cond_2
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mHeaders:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 145
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 146
    .local v2, "outputStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 147
    .local v4, "writer":Ljava/io/BufferedWriter;
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 149
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 152
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    if-eqz v5, :cond_5

    .line 153
    const-string/jumbo v5, "Content-Length"

    iget-object v6, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-virtual {v6}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .local v2, "outputStream":Ljava/io/BufferedOutputStream;
    iget-object v5, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-virtual {v5}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 157
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 160
    .end local v2    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_5
    return-object v0
.end method

.method public setBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    .line 114
    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "authString":Ljava/lang/String;
    const-string/jumbo v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    .line 118
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object p0
.end method

.method public setRequestBody(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 0
    .param p1, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestBody:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mRequestMethod:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public setTimeout(I)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 101
    if-gez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout has to be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput p1, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mTimeout:I

    .line 105
    return-object p0
.end method

.method public writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {p1, v2}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->getFormString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "formString":Ljava/lang/String;
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, v3}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    .line 65
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestBody(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object p0

    .line 66
    .end local v1    # "formString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeMultipartData(Ljava/util/Map;Landroid/content/Context;Ljava/util/List;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    new-instance v7, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-direct {v7}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;-><init>()V

    iput-object v7, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    .line 75
    iget-object v7, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-virtual {v7}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 78
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v5, v7}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 82
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 83
    .local v0, "attachmentUri":Landroid/net/Uri;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_1

    const/4 v6, 0x1

    .line 85
    .local v6, "lastFile":Z
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 86
    .local v4, "input":Ljava/io/InputStream;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "filename":Ljava/lang/String;
    iget-object v7, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "attachment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2, v4, v6}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "lastFile":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 89
    .end local v0    # "attachmentUri":Landroid/net/Uri;
    :cond_2
    iget-object v7, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-virtual {v7}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 91
    const-string/jumbo v7, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "multipart/form-data; boundary="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->mMultipartEntity:Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-virtual {v9}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    return-object p0
.end method

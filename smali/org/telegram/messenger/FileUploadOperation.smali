.class public Lorg/telegram/messenger/FileUploadOperation;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;,
        Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    }
.end annotation


# instance fields
.field private cachedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileId:J

.field private currentPartNum:I

.field private currentType:I

.field private currentUploadRequetsCount:I

.field private delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

.field private estimatedSize:I

.field private fileKey:Ljava/lang/String;

.field private fingerprint:I

.field private freeRequestIvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private isBigFile:Z

.field private isEncrypted:Z

.field private isLastPart:Z

.field private iv:[B

.field private ivChange:[B

.field private key:[B

.field private lastSavedPartNum:I

.field private final maxRequestsCount:I

.field private mdEnc:Ljava/security/MessageDigest;

.field private preferences:Landroid/content/SharedPreferences;

.field private readBuffer:[B

.field private readBytesCount:J

.field private requestNum:I

.field private requestTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private saveInfoTimes:I

.field private started:Z

.field private state:I

.field private stream:Ljava/io/FileInputStream;

.field private totalFileSize:J

.field private totalPartsCount:I

.field private uploadChunkSize:I

.field private uploadStartTime:I

.field private uploadedBytesCount:J

.field private uploadingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "estimated"    # I
    .param p4, "type"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 37
    const/16 v0, 0x8

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    .line 38
    const/high16 v0, 0x20000

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    .line 79
    iput-boolean p2, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 80
    iput p3, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    .line 81
    iput p4, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileUploadOperation;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return p1
.end method

.method static synthetic access$2508(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2608(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method static synthetic access$810(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    return v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 122
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "uploadinfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_ivc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startUploadRequest()V
    .locals 44

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1c

    .line 186
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_2

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    .line 188
    const/4 v14, 0x0

    .local v14, "a":I
    :goto_1
    const/16 v4, 0x8

    if-ge v14, v4, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/16 v5, 0x20

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 192
    .end local v14    # "a":I
    :cond_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v18, "cacheFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    .line 194
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 199
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v40, 0xa00000

    cmp-long v4, v4, v40

    if-lez v4, :cond_4

    .line 200
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 209
    :goto_3
    const-wide/16 v4, 0x80

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x2ee000

    add-long v40, v40, v42

    const-wide/16 v42, 0x1

    sub-long v40, v40, v42

    const-wide/32 v42, 0x2ee000

    div-long v40, v40, v42

    move-wide/from16 v0, v40

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 210
    const/16 v4, 0x400

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 211
    const/16 v19, 0x40

    .line 212
    .local v19, "chunkSize":I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v19

    if-le v4, v0, :cond_5

    .line 213
    mul-int/lit8 v19, v19, 0x2

    goto :goto_4

    .line 197
    .end local v19    # "chunkSize":I
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 393
    .end local v18    # "cacheFile":Ljava/io/File;
    :catch_0
    move-exception v23

    .line 394
    .local v23, "e":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 396
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto/16 :goto_0

    .line 203
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v18    # "cacheFile":Ljava/io/File;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 204
    :catch_1
    move-exception v23

    .line 205
    .local v23, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 215
    .end local v23    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v19    # "chunkSize":I
    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 218
    .end local v19    # "chunkSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 219
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v40, v0

    add-long v4, v4, v40

    const-wide/16 v40, 0x1

    sub-long v4, v4, v40

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    .line 220
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "enc"

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 224
    .local v24, "fileSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v40, 0x3e8

    div-long v4, v4, v40

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 225
    const/16 v33, 0x0

    .line 226
    .local v33, "rewrite":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v4, v24, v4

    if-nez v4, :cond_1a

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 229
    .local v21, "date":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_uploaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v40, 0x0

    move-wide/from16 v0, v40

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v38

    .line 230
    .local v38, "uploadedSize":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_iv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 232
    .local v27, "ivString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 233
    .local v29, "keyString":Ljava/lang/String;
    if-eqz v27, :cond_e

    if-eqz v29, :cond_e

    .line 234
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 235
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    .line 237
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v10, 0x0

    const/16 v40, 0x20

    move/from16 v0, v40

    invoke-static {v4, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    .end local v27    # "ivString":Ljava/lang/String;
    .end local v29    # "keyString":Ljava/lang/String;
    :cond_7
    :goto_6
    if-nez v33, :cond_19

    if-eqz v21, :cond_19

    .line 247
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v5, 0x15180

    sub-int/2addr v4, v5

    move/from16 v0, v21

    if-ge v0, v4, :cond_f

    .line 248
    const/16 v21, 0x0

    .line 252
    :cond_8
    :goto_7
    if-eqz v21, :cond_14

    .line 253
    const-wide/16 v4, 0x0

    cmp-long v4, v38, v4

    if-lez v4, :cond_18

    .line 254
    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 255
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v4

    div-long v4, v38, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 256
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_12

    .line 257
    const/16 v16, 0x0

    .local v16, "b":I
    :goto_8
    move/from16 v0, v16

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v42, v0

    div-long v40, v40, v42

    cmp-long v4, v4, v40

    if-gez v4, :cond_14

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .line 259
    .local v17, "bytesRead":I
    const/16 v35, 0x0

    .line 260
    .local v35, "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_9

    rem-int/lit8 v4, v17, 0x10

    if-eqz v4, :cond_9

    .line 261
    rem-int/lit8 v4, v17, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v35, v35, v4

    .line 263
    :cond_9
    new-instance v34, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v17, v35

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 264
    .local v34, "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_b

    .line 265
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 267
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 268
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_11

    .line 269
    const/4 v14, 0x0

    .restart local v14    # "a":I
    :goto_9
    move/from16 v0, v35

    if-ge v14, v0, :cond_10

    .line 270
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 269
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 222
    .end local v14    # "a":I
    .end local v16    # "b":I
    .end local v17    # "bytesRead":I
    .end local v21    # "date":I
    .end local v24    # "fileSize":J
    .end local v33    # "rewrite":Z
    .end local v34    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v35    # "toAdd":I
    .end local v38    # "uploadedSize":J
    :cond_c
    const-string/jumbo v4, ""

    goto/16 :goto_5

    .line 240
    .restart local v21    # "date":I
    .restart local v24    # "fileSize":J
    .restart local v27    # "ivString":Ljava/lang/String;
    .restart local v29    # "keyString":Ljava/lang/String;
    .restart local v33    # "rewrite":Z
    .restart local v38    # "uploadedSize":J
    :cond_d
    const/16 v33, 0x1

    goto/16 :goto_6

    .line 243
    :cond_e
    const/16 v33, 0x1

    goto/16 :goto_6

    .line 249
    .end local v27    # "ivString":Ljava/lang/String;
    .end local v29    # "keyString":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_8

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v5, v5

    const v6, 0x45a8c000    # 5400.0f

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    .line 250
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 272
    .restart local v14    # "a":I
    .restart local v16    # "b":I
    .restart local v17    # "bytesRead":I
    .restart local v34    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v35    # "toAdd":I
    :cond_10
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v17, v35

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 274
    .end local v14    # "a":I
    :cond_11
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v34

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 276
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 257
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 279
    .end local v16    # "b":I
    .end local v17    # "bytesRead":I
    .end local v34    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v35    # "toAdd":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_14

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_ivc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 282
    .local v28, "ivcString":Ljava/lang/String;
    if-eqz v28, :cond_17

    .line 283
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_14

    .line 285
    :cond_13
    const/16 v33, 0x1

    .line 286
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 287
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 306
    .end local v21    # "date":I
    .end local v28    # "ivcString":Ljava/lang/String;
    .end local v38    # "uploadedSize":J
    :cond_14
    :goto_a
    if-eqz v33, :cond_16

    .line 307
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_15

    .line 308
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 309
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 310
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 311
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 312
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v10, 0x0

    const/16 v40, 0x20

    move/from16 v0, v40

    invoke-static {v4, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :cond_15
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 316
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_16

    .line 317
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    .line 321
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_1b

    .line 323
    :try_start_3
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v30

    .line 324
    .local v30, "md":Ljava/security/MessageDigest;
    const/16 v4, 0x40

    new-array v15, v4, [B

    .line 325
    .local v15, "arr":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v5, v15, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v10, 0x20

    invoke-static {v4, v5, v15, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    .line 328
    .local v22, "digest":[B
    const/4 v14, 0x0

    .restart local v14    # "a":I
    :goto_b
    const/4 v4, 0x4

    if-ge v14, v4, :cond_1b

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v5, v22, v14

    add-int/lit8 v6, v14, 0x4

    aget-byte v6, v22, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v14, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 290
    .end local v14    # "a":I
    .end local v15    # "arr":[B
    .end local v22    # "digest":[B
    .end local v30    # "md":Ljava/security/MessageDigest;
    .restart local v21    # "date":I
    .restart local v28    # "ivcString":Ljava/lang/String;
    .restart local v38    # "uploadedSize":J
    :cond_17
    const/16 v33, 0x1

    .line 291
    const-wide/16 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 292
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto/16 :goto_a

    .line 297
    .end local v28    # "ivcString":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x1

    goto/16 :goto_a

    .line 301
    :cond_19
    const/16 v33, 0x1

    goto/16 :goto_a

    .line 304
    .end local v21    # "date":I
    .end local v38    # "uploadedSize":J
    :cond_1a
    const/16 v33, 0x1

    goto/16 :goto_a

    .line 331
    :catch_2
    move-exception v23

    .line 332
    .local v23, "e":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 335
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 336
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 339
    .end local v18    # "cacheFile":Ljava/io/File;
    .end local v24    # "fileSize":J
    .end local v33    # "rewrite":Z
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_1d

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v36

    .line 341
    .local v36, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v40, v0

    add-long v4, v4, v40

    cmp-long v4, v4, v36

    if-gtz v4, :cond_0

    .line 346
    .end local v36    # "size":J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v20

    .line 347
    .local v20, "currentRequestBytes":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 350
    const/16 v35, 0x0

    .line 351
    .restart local v35    # "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_1e

    rem-int/lit8 v4, v20, 0x10

    if-eqz v4, :cond_1e

    .line 352
    rem-int/lit8 v4, v20, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v35, v35, v4

    .line 354
    :cond_1e
    new-instance v34, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v20, v35

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 355
    .restart local v34    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v20

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_20

    .line 356
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 358
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_23

    .line 360
    const/4 v14, 0x0

    .restart local v14    # "a":I
    :goto_c
    move/from16 v0, v35

    if-ge v14, v0, :cond_21

    .line 361
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 360
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 363
    :cond_21
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v20, v35

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 365
    .local v8, "currentRequestIv":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v5, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    .end local v14    # "a":I
    :goto_d
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_22

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v34

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 374
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_25

    .line 375
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    .line 376
    .local v31, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    .line 377
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v31

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    .line 378
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_24

    .line 379
    const/4 v4, -0x1

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    .line 383
    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 384
    move-object/from16 v26, v31

    .line 392
    .end local v31    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    .local v26, "finalRequest":Lorg/telegram/tgnet/TLObject;
    :goto_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v4, v4, v40

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 399
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 400
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    .line 401
    .local v9, "requestNumFinal":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 402
    .local v12, "currentRequestBytesOffset":J
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 403
    .local v11, "currentRequestPartNum":I
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 404
    .local v7, "requestSize":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v40

    new-instance v5, Lorg/telegram/messenger/FileUploadOperation$3;

    move-object/from16 v6, p0

    move/from16 v10, v20

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/FileUploadOperation$3;-><init>(Lorg/telegram/messenger/FileUploadOperation;I[BIIIJ)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_26

    const/4 v4, 0x4

    :goto_10
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5, v6, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I

    move-result v32

    .line 508
    .local v32, "requestToken":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 368
    .end local v7    # "requestSize":I
    .end local v8    # "currentRequestIv":[B
    .end local v9    # "requestNumFinal":I
    .end local v11    # "currentRequestPartNum":I
    .end local v12    # "currentRequestBytesOffset":J
    .end local v26    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    .end local v32    # "requestToken":I
    :cond_23
    const/4 v8, 0x0

    .restart local v8    # "currentRequestIv":[B
    goto/16 :goto_d

    .line 381
    .restart local v31    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_24
    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto :goto_e

    .line 386
    .end local v31    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_25
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    .line 387
    .local v31, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    .line 388
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v31

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    .line 389
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 390
    move-object/from16 v26, v31

    .restart local v26    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_f

    .line 404
    .end local v31    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;
    .restart local v7    # "requestSize":I
    .restart local v9    # "requestNumFinal":I
    .restart local v11    # "currentRequestPartNum":I
    .restart local v12    # "currentRequestBytesOffset":J
    :cond_26
    const v4, 0x10004

    goto :goto_10
.end method

.method private storeFileUploadInfo()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 109
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 113
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "num":Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_1

    .line 116
    .end local v0    # "num":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 117
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_0
.end method

.method protected checkNewDataAvailable(J)V
    .locals 3
    .param p1, "finalSize"    # J

    .prologue
    .line 142
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileUploadOperation$2;-><init>(Lorg/telegram/messenger/FileUploadOperation;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V
    .locals 0
    .param p1, "fileUploadOperationDelegate"    # Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    .line 90
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 97
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

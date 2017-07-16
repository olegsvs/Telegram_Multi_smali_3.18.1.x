.class public Lnet/hockeyapp/android/objects/CrashDetails;
.super Ljava/lang/Object;
.source "CrashDetails.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final FIELD_APP_CRASH_DATE:Ljava/lang/String; = "Date"

.field private static final FIELD_APP_PACKAGE:Ljava/lang/String; = "Package"

.field private static final FIELD_APP_START_DATE:Ljava/lang/String; = "Start Date"

.field private static final FIELD_APP_VERSION_CODE:Ljava/lang/String; = "Version Code"

.field private static final FIELD_APP_VERSION_NAME:Ljava/lang/String; = "Version Name"

.field private static final FIELD_CRASH_REPORTER_KEY:Ljava/lang/String; = "CrashReporter Key"

.field private static final FIELD_DEVICE_MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field private static final FIELD_DEVICE_MODEL:Ljava/lang/String; = "Model"

.field private static final FIELD_FORMAT:Ljava/lang/String; = "Format"

.field private static final FIELD_FORMAT_VALUE:Ljava/lang/String; = "Xamarin"

.field private static final FIELD_OS_BUILD:Ljava/lang/String; = "Android Build"

.field private static final FIELD_OS_VERSION:Ljava/lang/String; = "Android"

.field private static final FIELD_THREAD_NAME:Ljava/lang/String; = "Thread"

.field private static final FIELD_XAMARIN_CAUSED_BY:Ljava/lang/String; = "Xamarin caused by: "


# instance fields
.field private appCrashDate:Ljava/util/Date;

.field private appPackage:Ljava/lang/String;

.field private appStartDate:Ljava/util/Date;

.field private appVersionCode:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private final crashIdentifier:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private isXamarinException:Ljava/lang/Boolean;

.field private osBuild:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private reporterKey:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashIdentifier"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "crashIdentifier"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    .line 66
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 67
    .local v1, "stackTraceResult":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "crashIdentifier"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "managedExceptionString"    # Ljava/lang/String;
    .param p4, "isManagedException"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    .local v1, "stackTraceResult":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 78
    .local v0, "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    .line 83
    const-string/jumbo v2, "Xamarin"

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/objects/CrashDetails;->setFormat(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string/jumbo v2, "Xamarin caused by: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    .line 109
    return-void

    .line 94
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 99
    const-string/jumbo v2, "Xamarin caused by: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public static fromFile(Ljava/io/File;)Lnet/hockeyapp/android/objects/CrashDetails;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".stacktrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "crashIdentifier":Ljava/lang/String;
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->fromReader(Ljava/lang/String;Ljava/io/Reader;)Lnet/hockeyapp/android/objects/CrashDetails;

    move-result-object v1

    return-object v1
.end method

.method public static fromReader(Ljava/lang/String;Ljava/io/Reader;)Lnet/hockeyapp/android/objects/CrashDetails;
    .locals 11
    .param p0, "crashIdentifier"    # Ljava/lang/String;
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v7, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {v7, p0}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "result":Lnet/hockeyapp/android/objects/CrashDetails;
    const/4 v5, 0x0

    .line 124
    .local v5, "headersProcessed":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v8, "stackTraceBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "readLine":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 126
    if-nez v5, :cond_e

    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    const/4 v5, 0x1

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "colonIndex":I
    if-gez v1, :cond_2

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Malformed header line when parsing crash details: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    .line 139
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "headerName":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "headerValue":Ljava/lang/String;
    const-string/jumbo v9, "CrashReporter Key"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string/jumbo v9, "Start Date"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    :try_start_0
    sget-object v9, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/text/ParseException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 150
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_4
    const-string/jumbo v9, "Date"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 152
    :try_start_1
    sget-object v9, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/text/ParseException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 156
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_5
    const-string/jumbo v9, "Android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 157
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_6
    const-string/jumbo v9, "Android Build"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 159
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_7
    const-string/jumbo v9, "Manufacturer"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 161
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_8
    const-string/jumbo v9, "Model"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 163
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string/jumbo v9, "Package"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 165
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_a
    const-string/jumbo v9, "Version Name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 167
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_b
    const-string/jumbo v9, "Version Code"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 169
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_c
    const-string/jumbo v9, "Thread"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 171
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_d
    const-string/jumbo v9, "Format"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 173
    invoke-virtual {v7, v4}, Lnet/hockeyapp/android/objects/CrashDetails;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v1    # "colonIndex":I
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "headerValue":Ljava/lang/String;
    :cond_e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 180
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnet/hockeyapp/android/objects/CrashDetails;->setThrowableStackTrace(Ljava/lang/String;)V

    .line 182
    return-object v7
.end method

.method private writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    return-void
.end method


# virtual methods
.method public getAppCrashDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getIsXamarinException()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReporterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCrashDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "appCrashDate"    # Ljava/util/Date;

    .prologue
    .line 260
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    .line 261
    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setAppStartDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "appStartDate"    # Ljava/util/Date;

    .prologue
    .line 252
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    .line 253
    return-void
.end method

.method public setAppVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionCode"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceManufacturer"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->format:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setIsXamarinException(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isXamarinException"    # Ljava/lang/Boolean;

    .prologue
    .line 340
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    .line 341
    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "osBuild"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setReporterKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "reporterKey"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setThrowableStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "throwableStackTrace"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public writeCrashReport()V
    .locals 8

    .prologue
    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".stacktrace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Writing unhandled exception to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 189
    const/4 v3, 0x0

    .line 192
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    const-string/jumbo v5, "Package"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v5, "Version Code"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v5, "Version Name"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v5, "Android"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v5, "Android Build"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v5, "Manufacturer"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v5, "Model"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v5, "Thread"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v5, "CrashReporter Key"

    iget-object v6, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v5, "Start Date"

    sget-object v6, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v5, "Date"

    sget-object v6, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    const-string/jumbo v5, "Format"

    const-string/jumbo v6, "Xamarin"

    invoke-direct {p0, v4, v5, v6}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    if-eqz v4, :cond_1

    .line 221
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 229
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 223
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v5, "Error saving crash report!"

    invoke-static {v5, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 226
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 216
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string/jumbo v5, "Error saving crash report!"

    invoke-static {v5, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    if-eqz v3, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 223
    :catch_2
    move-exception v1

    .line 224
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v5, "Error saving crash report!"

    invoke-static {v5, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 220
    :goto_2
    if-eqz v3, :cond_3

    .line 221
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 225
    :cond_3
    :goto_3
    throw v5

    .line 223
    :catch_3
    move-exception v1

    .line 224
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v6, "Error saving crash report!"

    invoke-static {v6, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 219
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 216
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

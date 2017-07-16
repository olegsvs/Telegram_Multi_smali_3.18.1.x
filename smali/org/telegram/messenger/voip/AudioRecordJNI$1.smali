.class Lorg/telegram/messenger/voip/AudioRecordJNI$1;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioRecordJNI;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x780

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 154
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    const-string/jumbo v1, "tg-voip"

    const-string/jumbo v2, "audiotrack thread exits"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-static {v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

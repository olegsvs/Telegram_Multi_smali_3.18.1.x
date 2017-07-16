.class Lorg/telegram/messenger/MediaController$19;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

.field final synthetic val$recordingAudioFileToSend:Ljava/io/File;

.field final synthetic val$send:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2718
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$19;->val$recordingAudioFileToSend:Ljava/io/File;

    iput p4, p0, Lorg/telegram/messenger/MediaController$19;->val$send:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5600(Lorg/telegram/messenger/MediaController;)V

    .line 2722
    new-instance v0, Lorg/telegram/messenger/MediaController$19$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$19$1;-><init>(Lorg/telegram/messenger/MediaController$19;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2746
    return-void
.end method

.class public final Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;
.super Landroid/os/HandlerThread;
.source "PriorityHandlerThread.java"


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;->priority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method

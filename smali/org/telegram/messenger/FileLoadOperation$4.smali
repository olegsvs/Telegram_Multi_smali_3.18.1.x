.class Lorg/telegram/messenger/FileLoadOperation$4;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation$4;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1100(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$4;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation$4;->val$reason:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    return-void
.end method

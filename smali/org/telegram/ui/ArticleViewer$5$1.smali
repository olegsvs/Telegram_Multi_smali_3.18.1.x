.class Lorg/telegram/ui/ArticleViewer$5$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$5;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$5;

.field final synthetic val$pageId:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$5;J)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$5;

    .prologue
    .line 1342
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iput-wide p2, p0, Lorg/telegram/ui/ArticleViewer$5$1;->val$pageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1345
    new-instance v0, Lorg/telegram/ui/ArticleViewer$5$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$5$1$1;-><init>(Lorg/telegram/ui/ArticleViewer$5$1;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1363
    return-void
.end method

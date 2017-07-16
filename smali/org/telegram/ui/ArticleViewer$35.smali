.class Lorg/telegram/ui/ArticleViewer$35;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 5809
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$35;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$35;->val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5812
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$35;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$11602(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 5813
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$35;->val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5814
    return-void
.end method

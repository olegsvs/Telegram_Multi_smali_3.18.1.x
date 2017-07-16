.class Lorg/telegram/ui/PhotoViewer$38$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$38;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$38;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$38;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$38;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearRecentHashtags()V

    return-void
.end method

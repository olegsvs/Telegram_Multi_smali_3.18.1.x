.class Lorg/telegram/ui/SecretPhotoViewer$2;
.super Ljava/lang/Object;
.source "SecretPhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretPhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretPhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretPhotoViewer;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer$2;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$2;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretPhotoViewer;->access$200(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

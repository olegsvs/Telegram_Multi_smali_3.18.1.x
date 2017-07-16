.class Lorg/telegram/ui/VoIPActivity$28$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$28;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$28;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$28;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$28$1;->this$1:Lorg/telegram/ui/VoIPActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$28$1;->this$1:Lorg/telegram/ui/VoIPActivity$28;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$4600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$28$1;->this$1:Lorg/telegram/ui/VoIPActivity$28;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$4400(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$28$1;->this$1:Lorg/telegram/ui/VoIPActivity$28;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$4700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$28$1;->this$1:Lorg/telegram/ui/VoIPActivity$28;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$4500(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

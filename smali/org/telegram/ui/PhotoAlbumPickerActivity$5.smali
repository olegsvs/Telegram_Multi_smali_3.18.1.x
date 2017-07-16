.class Lorg/telegram/ui/PhotoAlbumPickerActivity$5;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->finishFragment()V

    .line 279
    return-void
.end method

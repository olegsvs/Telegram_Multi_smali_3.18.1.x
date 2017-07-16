.class public Lorg/telegram/ui/Adapters/UserItemsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/UserItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field imgViewCurrent:Landroid/widget/ImageView;

.field imgViewPhoto:Landroid/widget/ImageView;

.field txtViewName:Landroid/widget/TextView;

.field txtViewPhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

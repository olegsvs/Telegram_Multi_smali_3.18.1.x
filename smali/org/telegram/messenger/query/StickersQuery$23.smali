.class final Lorg/telegram/messenger/query/StickersQuery$23;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2200()[Z

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2300()[Z

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

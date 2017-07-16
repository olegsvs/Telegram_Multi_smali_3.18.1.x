.class Lcom/google/firebase/iid/zzf$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzf$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private final zzclq:Landroid/os/ConditionVariable;

.field private zzclr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->zzclq:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzf$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/iid/zzf$zza;->zzclr:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->zzclq:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public zzK(Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/iid/zzf$zza;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->zzclq:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public zzabS()Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->zzclq:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "InstanceID/Rpc"

    const-string/jumbo v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->zzclr:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/firebase/iid/zzf$zza;->zzclr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzf$zza;->intent:Landroid/content/Intent;

    return-object v0
.end method

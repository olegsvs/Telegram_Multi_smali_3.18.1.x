.class Lcom/google/android/gms/internal/zzaua;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaua$zza;,
        Lcom/google/android/gms/internal/zzaua$zzb;,
        Lcom/google/android/gms/internal/zzaua$zzc;
    }
.end annotation


# static fields
.field static final zzbtb:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzagD:Landroid/content/SharedPreferences;

.field public final zzbtc:Lcom/google/android/gms/internal/zzaua$zzc;

.field public final zzbtd:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbte:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbtf:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbtg:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbth:Lcom/google/android/gms/internal/zzaua$zzb;

.field private zzbti:Ljava/lang/String;

.field private zzbtj:Z

.field private zzbtk:J

.field private zzbtl:Ljava/lang/String;

.field private zzbtm:J

.field private final zzbtn:Ljava/lang/Object;

.field private zzbto:Ljava/security/SecureRandom;

.field public final zzbtp:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbtq:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbtr:Lcom/google/android/gms/internal/zzaua$zza;

.field public final zzbts:Lcom/google/android/gms/internal/zzaua$zzb;

.field public final zzbtt:Lcom/google/android/gms/internal/zzaua$zzb;

.field public zzbtu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaua$zzc;

    const-string/jumbo v3, "health_monitor"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKm()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzpz()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaua$zzc;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;JLcom/google/android/gms/internal/zzaua$1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "last_upload"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtd:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "last_upload_attempt"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbte:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "backoff"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtf:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "last_delete_stale"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtg:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "time_before_start"

    const-wide/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtp:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "session_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtq:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zza;

    const-string/jumbo v1, "start_new_session"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzaua$zza;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "last_pause_time"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbts:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "time_active"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtt:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzaua$zzb;

    const-string/jumbo v1, "midnight_offset"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbth:Lcom/google/android/gms/internal/zzaua$zzb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtn:Ljava/lang/Object;

    return-void
.end method

.method private zzMf()Ljava/security/SecureRandom;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbto:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbto:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbto:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private zzMi()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzagD:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzagD:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaua;)Ljava/security/SecureRandom;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMf()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method setMeasurementEnabled(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string/jumbo v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method zzKp()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/zzc;->zzabK()Lcom/google/firebase/iid/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzc;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string/jumbo v1, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzMg()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v6, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMf()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzMh()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbth:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMf()Ljava/security/SecureRandom;

    move-result-object v0

    const v1, 0x5265c00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbth:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_0
    return-wide v0
.end method

.method zzMj()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzMk()Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbtn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaua;->zzbtm:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtl:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzMl()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method zzMm()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string/jumbo v2, "Clearing collection preferences."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "measurement_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaua;->zzaL(Z)Z

    move-result v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaua;->setMeasurementEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected zzMn()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKb()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl;->zzLR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "previous_os_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method zzaK(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string/jumbo v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method zzaL(Z)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method zzfG(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbtk:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbtj:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKm()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzati;->zzfm(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtk:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtj:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbtj:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string/jumbo v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbti:Ljava/lang/String;

    goto :goto_1
.end method

.method zzfH(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaua;->zzfG(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaut;->zzch(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%032X"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method zzfI(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua;->zzMi()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method zzfJ(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua;->zzbtn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua;->zzbtl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaua;->zzbtm:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzmS()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaua;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzagD:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzagD:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtu:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaua;->zzbtu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua;->zzagD:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "has_been_opened"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

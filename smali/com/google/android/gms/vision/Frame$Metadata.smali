.class public Lcom/google/android/gms/vision/Frame$Metadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private format:I

.field private mId:I

.field private zzMA:I

.field private zzbdJ:J

.field private zzrC:I

.field private zzrD:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->format:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/Frame$Metadata;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->format:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrC:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrD:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzbdJ:J

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzMA:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrC:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzbdJ:J

    return-wide p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrD:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->format:I

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzMA:I

    return p1
.end method


# virtual methods
.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->format:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrD:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzMA:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzbdJ:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrC:I

    return v0
.end method

.method public zzTN()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzMA:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrC:I

    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrD:I

    iput v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrC:I

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzrD:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzMA:I

    return-void
.end method

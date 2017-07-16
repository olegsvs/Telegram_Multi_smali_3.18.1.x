.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final FLAG_SIDELOADED:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private final encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 69
    const-string/jumbo v0, "seig"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .line 148
    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .line 156
    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "sideloadedTrack"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .param p3, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 167
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 168
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .line 169
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 170
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 171
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 172
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 173
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 176
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 177
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 178
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .locals 12
    .param p1, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .prologue
    const/4 v10, 0x0

    .line 1073
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 1074
    .local v7, "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-object v3, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1075
    .local v3, "sampleEncryptionData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1076
    .local v2, "sampleDescriptionIndex":I
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v9, :cond_0

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1079
    .local v0, "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :goto_0
    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 1080
    .local v8, "vectorSize":I
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v11, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v6, v9, v11

    .line 1084
    .local v6, "subsampleEncryption":Z
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v6, :cond_1

    const/16 v9, 0x80

    :goto_1
    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v11, v10

    .line 1085
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1086
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 1087
    .local v1, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1089
    invoke-interface {v1, v3, v8}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1091
    if-nez v6, :cond_2

    .line 1092
    add-int/lit8 v9, v8, 0x1

    .line 1099
    :goto_2
    return v9

    .line 1076
    .end local v0    # "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .end local v1    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v6    # "subsampleEncryption":Z
    .end local v8    # "vectorSize":I
    :cond_0
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v9, v2

    goto :goto_0

    .restart local v0    # "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .restart local v6    # "subsampleEncryption":Z
    .restart local v8    # "vectorSize":I
    :cond_1
    move v9, v10

    .line 1084
    goto :goto_1

    .line 1095
    .restart local v1    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1096
    .local v4, "subsampleCount":I
    const/4 v9, -0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1097
    mul-int/lit8 v9, v4, 0x6

    add-int/lit8 v5, v9, 0x2

    .line 1098
    .local v5, "subsampleDataLength":I
    invoke-interface {v1, v3, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1099
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_2
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 237
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 238
    return-void
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 1106
    .local v4, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1107
    .local v2, "leafChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1109
    .local v0, "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v6, v7, :cond_1

    .line 1110
    if-nez v4, :cond_0

    .line 1111
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .restart local v4    # "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_0
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1114
    .local v3, "psshData":[B
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1115
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_2

    .line 1116
    const-string/jumbo v6, "FragmentedMp4Extractor"

    const-string/jumbo v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    .end local v3    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1118
    .restart local v3    # "psshData":[B
    .restart local v5    # "uuid":Ljava/util/UUID;
    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1122
    .end local v0    # "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v3    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3
    if-nez v4, :cond_4

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :cond_4
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v1, 0x0

    .line 1046
    .local v1, "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 1048
    .local v2, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1049
    .local v5, "trackBundlesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 1050
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1051
    .local v4, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v9, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v8, v9, :cond_1

    .line 1049
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v6, v8, v9

    .line 1055
    .local v6, "trunOffset":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 1056
    move-object v1, v4

    .line 1057
    move-wide v2, v6

    goto :goto_1

    .line 1061
    .end local v4    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "trunOffset":J
    :cond_2
    return-object v1
.end method

.method private onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .param p1, "container"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 342
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    .line 343
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 345
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 4
    .param p1, "leaf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    move-result-object v0

    .line 336
    .local v0, "segmentIndex":Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 6
    .param p1, "moof"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 407
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v0

    .line 408
    .local v0, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_0

    .line 409
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 410
    .local v2, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 411
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    .end local v2    # "trackCount":I
    :cond_0
    return-void
.end method

.method private onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 24
    .param p1, "moov"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string/jumbo v9, "Unexpected moov box."

    invoke-static {v5, v9}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 354
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v8

    .line 357
    .local v8, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v13

    .line 358
    .local v13, "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 359
    .local v10, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 360
    .local v6, "duration":J
    iget-object v5, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .line 361
    .local v14, "mvexChildrenSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_3

    .line 362
    iget-object v5, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 363
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-ne v5, v9, :cond_2

    .line 364
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v18

    .line 365
    .local v18, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    .end local v18    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 352
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v6    # "duration":J
    .end local v8    # "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .end local v10    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .end local v11    # "i":I
    .end local v13    # "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v14    # "mvexChildrenSize":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 366
    .restart local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v6    # "duration":J
    .restart local v8    # "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .restart local v10    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .restart local v11    # "i":I
    .restart local v13    # "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .restart local v14    # "mvexChildrenSize":I
    :cond_2
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne v5, v9, :cond_0

    .line 367
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    goto :goto_2

    .line 372
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_3
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 373
    .local v17, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 374
    .local v12, "moovContainerChildrenSize":I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    .line 375
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 376
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-ne v5, v9, :cond_4

    .line 377
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v15

    .line 379
    .local v15, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    if-eqz v15, :cond_4

    .line 380
    iget v5, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 385
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 386
    .local v16, "trackCount":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 388
    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    .line 389
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 390
    .restart local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    new-instance v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    move-wide/from16 v20, v0

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 388
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 393
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 399
    :goto_5
    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    .line 400
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 401
    .restart local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v5, v15, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 399
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 395
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v16

    if-ne v5, v0, :cond_8

    const/4 v5, 0x1

    :goto_7
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    .line 403
    :cond_9
    return-void
.end method

.method private static parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mehd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 435
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 436
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 437
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 438
    .local v1, "version":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .param p0, "moof"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 444
    .local v2, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 445
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 447
    .local v0, "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    .line 448
    invoke-static {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_1
    return-void
.end method

.method private static parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 580
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 581
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 582
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 583
    .local v1, "flags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_0

    .line 584
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 587
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 588
    .local v0, "entryCount":I
    if-eq v0, v5, :cond_1

    .line 590
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 593
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 594
    .local v3, "version":I
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_2

    .line 595
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 596
    return-void

    .line 595
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "encryptionBox"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 543
    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 544
    .local v9, "vectorSize":I
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 545
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 546
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 547
    .local v1, "flags":I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 548
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 550
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 552
    .local v0, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 553
    .local v4, "sampleCount":I
    iget v10, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v4, v10, :cond_1

    .line 554
    new-instance v10, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 557
    :cond_1
    const/4 v8, 0x0

    .line 558
    .local v8, "totalSize":I
    if-nez v0, :cond_3

    .line 559
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 560
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 561
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 562
    .local v6, "sampleInfoSize":I
    add-int/2addr v8, v6

    .line 563
    if-le v6, v9, :cond_2

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v5, v3

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 566
    .end local v3    # "i":I
    .end local v5    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v6    # "sampleInfoSize":I
    :cond_3
    if-le v0, v9, :cond_5

    const/4 v7, 0x1

    .line 567
    .local v7, "subsampleEncryption":Z
    :goto_2
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    .line 568
    iget-object v10, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 570
    .end local v7    # "subsampleEncryption":Z
    :cond_4
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 571
    return-void

    .line 566
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 7
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 764
    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 765
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 766
    .local v1, "fullAtom":I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 768
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 770
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 773
    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 774
    .local v3, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 775
    .local v2, "sampleCount":I
    iget v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v2, v5, :cond_2

    .line 776
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "sampleCount":I
    .end local v3    # "subsampleEncryption":Z
    :cond_1
    move v3, v4

    .line 773
    goto :goto_0

    .line 779
    .restart local v2    # "sampleCount":I
    .restart local v3    # "subsampleEncryption":Z
    :cond_2
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 780
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 781
    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 782
    return-void
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 760
    return-void
.end method

.method private static parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "sbgp"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "sgpd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 786
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 787
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 788
    .local v3, "sbgpFullAtom":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v8, v9, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 793
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 795
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v6, :cond_3

    .line 796
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 799
    :cond_3
    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 800
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 801
    .local v4, "sgpdFullAtom":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-ne v8, v9, :cond_0

    .line 805
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 806
    .local v5, "sgpdVersion":I
    if-ne v5, v6, :cond_4

    .line 807
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 808
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 810
    :cond_4
    if-lt v5, v12, :cond_5

    .line 811
    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 813
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 814
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 817
    :cond_6
    invoke-virtual {p1, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 818
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-ne v8, v6, :cond_7

    move v1, v6

    .line 819
    .local v1, "isProtected":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 823
    .local v0, "initVectorSize":I
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 824
    .local v2, "keyId":[B
    array-length v8, v2

    invoke-virtual {p1, v2, v7, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 825
    iput-boolean v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 826
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    iput-object v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    .end local v0    # "initVectorSize":I
    .end local v1    # "isProtected":Z
    .end local v2    # "keyId":[B
    :cond_7
    move v1, v7

    .line 818
    goto :goto_1
.end method

.method private static parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
    .locals 29
    .param p0, "atom"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 834
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 836
    .local v14, "fullAtom":I
    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v27

    .line 838
    .local v27, "version":I
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 841
    .local v8, "timescale":J
    move-wide/from16 v16, p1

    .line 842
    .local v16, "offset":J
    if-nez v27, :cond_0

    .line 843
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 844
    .local v12, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v16, v16, v6

    .line 850
    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 853
    .local v19, "referenceCount":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 854
    .local v22, "sizes":[I
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 855
    .local v18, "offsets":[J
    move/from16 v0, v19

    new-array v10, v0, [J

    .line 856
    .local v10, "durationsUs":[J
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 858
    .local v23, "timesUs":[J
    move-wide v4, v12

    .line 859
    .local v4, "time":J
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 860
    .local v24, "timeUs":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 861
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 863
    .local v11, "firstInt":I
    const/high16 v6, -0x80000000

    and-int v26, v6, v11

    .line 864
    .local v26, "type":I
    if-eqz v26, :cond_1

    .line 865
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 846
    .end local v4    # "time":J
    .end local v10    # "durationsUs":[J
    .end local v11    # "firstInt":I
    .end local v12    # "earliestPresentationTime":J
    .end local v15    # "i":I
    .end local v18    # "offsets":[J
    .end local v19    # "referenceCount":I
    .end local v22    # "sizes":[I
    .end local v23    # "timesUs":[J
    .end local v24    # "timeUs":J
    .end local v26    # "type":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    .line 847
    .restart local v12    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_0

    .line 867
    .restart local v4    # "time":J
    .restart local v10    # "durationsUs":[J
    .restart local v11    # "firstInt":I
    .restart local v15    # "i":I
    .restart local v18    # "offsets":[J
    .restart local v19    # "referenceCount":I
    .restart local v22    # "sizes":[I
    .restart local v23    # "timesUs":[J
    .restart local v24    # "timeUs":J
    .restart local v26    # "type":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    .line 869
    .local v20, "referenceDuration":J
    const v6, 0x7fffffff

    and-int/2addr v6, v11

    aput v6, v22, v15

    .line 870
    aput-wide v16, v18, v15

    .line 874
    aput-wide v24, v23, v15

    .line 875
    add-long v4, v4, v20

    .line 876
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 877
    aget-wide v6, v23, v15

    sub-long v6, v24, v6

    aput-wide v6, v10, v15

    .line 879
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 880
    aget v6, v22, v15

    int-to-long v6, v6

    add-long v16, v16, v6

    .line 860
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 883
    .end local v11    # "firstInt":I
    .end local v20    # "referenceDuration":J
    .end local v26    # "type":I
    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v10, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6
.end method

.method private static parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 646
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 647
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 648
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 649
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 13
    .param p0, "tfhd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 611
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 612
    .local v8, "fullAtom":I
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 613
    .local v0, "atomFlags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 614
    .local v10, "trackId":I
    and-int/lit8 v11, p2, 0x4

    if-nez v11, :cond_0

    .end local v10    # "trackId":I
    :goto_0
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 615
    .local v9, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v9, :cond_1

    .line 616
    const/4 v9, 0x0

    .line 636
    .end local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_1
    return-object v9

    .line 614
    .restart local v10    # "trackId":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 618
    .end local v10    # "trackId":I
    .restart local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_2

    .line 619
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 620
    .local v2, "baseDataPosition":J
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 621
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 624
    .end local v2    # "baseDataPosition":J
    :cond_2
    iget-object v7, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 625
    .local v7, "defaultSampleValues":Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_3

    .line 627
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 628
    .local v1, "defaultSampleDescriptionIndex":I
    :goto_2
    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_4

    .line 629
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 630
    .local v4, "defaultSampleDuration":I
    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_5

    .line 631
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 632
    .local v6, "defaultSampleSize":I
    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_6

    .line 633
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 634
    .local v5, "defaultSampleFlags":I
    :goto_5
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v1, v4, v6, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    goto :goto_1

    .line 627
    .end local v1    # "defaultSampleDescriptionIndex":I
    .end local v4    # "defaultSampleDuration":I
    .end local v5    # "defaultSampleFlags":I
    .end local v6    # "defaultSampleSize":I
    :cond_3
    iget v1, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_2

    .line 629
    .restart local v1    # "defaultSampleDescriptionIndex":I
    :cond_4
    iget v4, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_3

    .line 631
    .restart local v4    # "defaultSampleDuration":I
    :cond_5
    iget v6, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_4

    .line 633
    .restart local v6    # "defaultSampleSize":I
    :cond_6
    iget v5, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_5
.end method

.method private static parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 21
    .param p0, "traf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    .line 459
    .local v16, "tfhd":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v17

    .line 460
    .local v17, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v17, :cond_1

    .line 505
    :cond_0
    return-void

    .line 464
    :cond_1
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 465
    .local v5, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 466
    .local v6, "decodeTime":J
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 468
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 469
    .local v15, "tfdtAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v15, :cond_2

    and-int/lit8 v19, p2, 0x2

    if-nez v19, :cond_2

    .line 470
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 473
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-static {v0, v1, v6, v7, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 475
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 476
    .local v11, "saiz":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_3

    .line 477
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v19, v0

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v20, v0

    aget-object v18, v19, v20

    .line 479
    .local v18, "trackEncryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 482
    .end local v18    # "trackEncryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :cond_3
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 483
    .local v10, "saio":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v10, :cond_4

    .line 484
    iget-object v0, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 487
    :cond_4
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 488
    .local v13, "senc":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_5

    .line 489
    iget-object v0, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 492
    :cond_5
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 493
    .local v12, "sbgp":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 494
    .local v14, "sgpd":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_6

    if-eqz v14, :cond_6

    .line 495
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 498
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 499
    .local v9, "leafChildrenSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 501
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v19, v0

    sget v20, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 502
    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V

    .line 499
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "trex"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 421
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 422
    .local v4, "trackId":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 423
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 424
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 425
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 427
    .local v2, "defaultSampleFlags":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 36
    .param p0, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "index"    # I
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I
    .param p5, "trun"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p6, "trackRunStart"    # I

    .prologue
    .line 665
    const/16 v4, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 666
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 667
    .local v15, "fullAtom":I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v8

    .line 669
    .local v8, "atomFlags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v29, v0

    .line 670
    .local v29, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 671
    .local v14, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-object v9, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 673
    .local v9, "defaultSampleValues":Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v4, p1

    .line 674
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    move-wide/from16 v32, v0

    aput-wide v32, v4, p1

    .line 675
    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_0

    .line 676
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v32, v4, p1

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    aput-wide v32, v4, p1

    .line 679
    :cond_0
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    .line 680
    .local v13, "firstSampleFlagsPresent":Z
    :goto_0
    iget v12, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 681
    .local v12, "firstSampleFlags":I
    if-eqz v13, :cond_1

    .line 682
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 685
    :cond_1
    and-int/lit16 v4, v8, 0x100

    if-eqz v4, :cond_5

    const/16 v21, 0x1

    .line 686
    .local v21, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_6

    const/16 v28, 0x1

    .line 687
    .local v28, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_7

    const/16 v23, 0x1

    .line 688
    .local v23, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    .line 693
    .local v18, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v10, 0x0

    .line 697
    .local v10, "edtsOffset":J
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-nez v4, :cond_2

    .line 699
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v29

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 702
    :cond_2
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v27, v0

    .line 703
    .local v27, "sampleSizeTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v17, v0

    .line 704
    .local v17, "sampleCompositionTimeOffsetTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v19, v0

    .line 705
    .local v19, "sampleDecodingTimeTable":[J
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v24, v0

    .line 707
    .local v24, "sampleIsSyncFrameTable":[Z
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9

    const/16 v31, 0x1

    .line 710
    .local v31, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v4, v4, p1

    add-int v30, p6, v4

    .line 711
    .local v30, "trackRunEnd":I
    move-object/from16 v0, v29

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 712
    .local v6, "timescale":J
    if-lez p1, :cond_a

    iget-wide v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 713
    .local v2, "cumulativeTime":J
    :goto_6
    move/from16 v16, p6

    .local v16, "i":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 715
    if-eqz v21, :cond_b

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 717
    .local v20, "sampleDuration":I
    :goto_8
    if-eqz v28, :cond_c

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 718
    .local v26, "sampleSize":I
    :goto_9
    if-nez v16, :cond_d

    if-eqz v13, :cond_d

    move/from16 v22, v12

    .line 720
    .local v22, "sampleFlags":I
    :goto_a
    if-eqz v18, :cond_f

    .line 726
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v25

    .line 727
    .local v25, "sampleOffset":I
    move/from16 v0, v25

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v17, v16

    .line 731
    .end local v25    # "sampleOffset":I
    :goto_b
    const-wide/16 v4, 0x3e8

    .line 732
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v19, v16

    .line 733
    aput v26, v27, v16

    .line 734
    shr-int/lit8 v4, v22, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_10

    if-eqz v31, :cond_3

    if-nez v16, :cond_10

    :cond_3
    const/4 v4, 0x1

    :goto_c
    aput-boolean v4, v24, v16

    .line 736
    move/from16 v0, v20

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 713
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 679
    .end local v2    # "cumulativeTime":J
    .end local v6    # "timescale":J
    .end local v10    # "edtsOffset":J
    .end local v12    # "firstSampleFlags":I
    .end local v13    # "firstSampleFlagsPresent":Z
    .end local v16    # "i":I
    .end local v17    # "sampleCompositionTimeOffsetTable":[I
    .end local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .end local v19    # "sampleDecodingTimeTable":[J
    .end local v20    # "sampleDuration":I
    .end local v21    # "sampleDurationsPresent":Z
    .end local v22    # "sampleFlags":I
    .end local v23    # "sampleFlagsPresent":Z
    .end local v24    # "sampleIsSyncFrameTable":[Z
    .end local v26    # "sampleSize":I
    .end local v27    # "sampleSizeTable":[I
    .end local v28    # "sampleSizesPresent":Z
    .end local v30    # "trackRunEnd":I
    .end local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 685
    .restart local v12    # "firstSampleFlags":I
    .restart local v13    # "firstSampleFlagsPresent":Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 686
    .restart local v21    # "sampleDurationsPresent":Z
    :cond_6
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 687
    .restart local v28    # "sampleSizesPresent":Z
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 688
    .restart local v23    # "sampleFlagsPresent":Z
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 707
    .restart local v10    # "edtsOffset":J
    .restart local v17    # "sampleCompositionTimeOffsetTable":[I
    .restart local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v19    # "sampleDecodingTimeTable":[J
    .restart local v24    # "sampleIsSyncFrameTable":[Z
    .restart local v27    # "sampleSizeTable":[I
    :cond_9
    const/16 v31, 0x0

    goto :goto_5

    .restart local v6    # "timescale":J
    .restart local v30    # "trackRunEnd":I
    .restart local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_a
    move-wide/from16 v2, p2

    .line 712
    goto :goto_6

    .line 715
    .restart local v2    # "cumulativeTime":J
    .restart local v16    # "i":I
    :cond_b
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v20, v0

    goto :goto_8

    .line 717
    .restart local v20    # "sampleDuration":I
    :cond_c
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v26, v0

    goto :goto_9

    .line 718
    .restart local v26    # "sampleSize":I
    :cond_d
    if-eqz v23, :cond_e

    .line 719
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v22

    goto :goto_a

    :cond_e
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v22, v0

    goto :goto_a

    .line 729
    .restart local v22    # "sampleFlags":I
    :cond_f
    const/4 v4, 0x0

    aput v4, v17, v16

    goto :goto_b

    .line 734
    :cond_10
    const/4 v4, 0x0

    goto :goto_c

    .line 738
    .end local v20    # "sampleDuration":I
    .end local v22    # "sampleFlags":I
    .end local v26    # "sampleSize":I
    :cond_11
    iput-wide v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 739
    return v30
.end method

.method private static parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 20
    .param p0, "traf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I

    .prologue
    .line 509
    const/4 v15, 0x0

    .line 510
    .local v15, "trunCount":I
    const/4 v13, 0x0

    .line 511
    .local v13, "totalSampleCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 512
    .local v11, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 513
    .local v12, "leafChildrenSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    .line 514
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 515
    .local v9, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v2, v4, :cond_0

    .line 516
    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v16, v0

    .line 517
    .local v16, "trunData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 518
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 519
    .local v18, "trunSampleCount":I
    if-lez v18, :cond_0

    .line 520
    add-int v13, v13, v18

    .line 521
    add-int/lit8 v15, v15, 0x1

    .line 513
    .end local v16    # "trunData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .end local v18    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 525
    .end local v9    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 526
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 527
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 528
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v15, v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    .line 530
    const/4 v3, 0x0

    .line 531
    .local v3, "trunIndex":I
    const/4 v8, 0x0

    .line 532
    .local v8, "trunStartPosition":I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    .line 533
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 534
    .local v14, "trun":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v2, v4, :cond_2

    .line 535
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "trunIndex":I
    .local v17, "trunIndex":I
    iget-object v7, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v8

    move/from16 v3, v17

    .line 532
    .end local v17    # "trunIndex":I
    .restart local v3    # "trunIndex":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 539
    .end local v14    # "trun":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_3
    return-void
.end method

.method private static parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 744
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 748
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private processAtomEnded(J)V
    .locals 3
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 325
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 329
    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 13
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 241
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v8, :cond_1

    .line 243
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 244
    const/4 v8, 0x0

    .line 310
    :goto_0
    return v8

    .line 246
    :cond_0
    const/16 v8, 0x8

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 247
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 248
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 249
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 252
    :cond_1
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 254
    const/16 v5, 0x8

    .line 255
    .local v5, "headerBytesRemaining":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {p1, v8, v9, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 256
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 257
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 260
    .end local v5    # "headerBytesRemaining":I
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 261
    .local v0, "atomPosition":J
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v8, v9, :cond_3

    .line 263
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 264
    .local v7, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 265
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 266
    .local v4, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    .line 267
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 268
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 264
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 272
    .end local v4    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .end local v6    # "i":I
    .end local v7    # "trackCount":I
    :cond_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v8, v9, :cond_5

    .line 273
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 274
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 275
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v8, :cond_4

    .line 276
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 277
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 279
    :cond_4
    const/4 v8, 0x2

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 280
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 283
    :cond_5
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 284
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    sub-long v2, v8, v10

    .line 285
    .local v2, "endPosition":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v9, v10, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 286
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 287
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 310
    .end local v2    # "endPosition":J
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 290
    .restart local v2    # "endPosition":J
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 292
    .end local v2    # "endPosition":J
    :cond_7
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 293
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 294
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 296
    :cond_8
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 297
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 299
    :cond_9
    new-instance v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v9, v10

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 300
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 303
    :cond_a
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    .line 304
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 306
    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 307
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 314
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v2

    .line 315
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 317
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    .line 321
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 322
    return-void

    .line 319
    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 887
    const/4 v4, 0x0

    .line 888
    .local v4, "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 889
    .local v2, "nextDataOffset":J
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 890
    .local v5, "trackBundlesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 891
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 892
    .local v6, "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-boolean v7, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    .line 894
    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 895
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 890
    .restart local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v6    # "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    :cond_1
    if-nez v4, :cond_2

    .line 899
    const/4 v7, 0x3

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 908
    :goto_1
    return-void

    .line 902
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v0, v8

    .line 903
    .local v0, "bytesToSkip":I
    if-gez v0, :cond_3

    .line 904
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v8, "Offset to encryption data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 906
    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 907
    iget-object v7, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 26
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 926
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_3

    .line 927
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v10

    .line 928
    .local v10, "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v10, :cond_1

    .line 931
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    move-wide/from16 v22, v0

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 932
    .local v2, "bytesToSkip":I
    if-gez v2, :cond_0

    .line 933
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v8, "Offset to end of mdat was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 935
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 936
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 937
    const/4 v7, 0x0

    .line 1037
    .end local v2    # "bytesToSkip":I
    .end local v10    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_0
    return v7

    .line 940
    .restart local v10    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    iget-object v7, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v8, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v16, v7, v8

    .line 943
    .local v16, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v22

    sub-long v22, v16, v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 944
    .restart local v2    # "bytesToSkip":I
    if-gez v2, :cond_2

    .line 945
    iget-object v7, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-wide v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    move-wide/from16 v22, v0

    cmp-long v7, v16, v22

    if-nez v7, :cond_6

    .line 947
    const-string/jumbo v7, "FragmentedMp4Extractor"

    const-string/jumbo v8, "Offset to sample data was missing."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v2, 0x0

    .line 953
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 954
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 956
    .end local v2    # "bytesToSkip":I
    .end local v10    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v16    # "nextDataPosition":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v7, v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 958
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_7

    .line 959
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 960
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 964
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 965
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/lit8 v7, v7, -0x8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 966
    const/16 v7, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 968
    :cond_4
    const/4 v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 969
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 972
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v11, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 973
    .local v11, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v19, v0

    .line 974
    .local v19, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v3, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 975
    .local v3, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move/from16 v18, v0

    .line 976
    .local v18, "sampleIndex":I
    move-object/from16 v0, v19

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v7, :cond_9

    .line 979
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v12, v7, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 980
    .local v12, "nalLengthData":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v12, v7

    .line 981
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v12, v7

    .line 982
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v12, v7

    .line 983
    move-object/from16 v0, v19

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 984
    .local v13, "nalUnitLengthFieldLength":I
    move-object/from16 v0, v19

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v14, v7, 0x4

    .line 988
    .local v14, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_a

    .line 989
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v7, :cond_8

    .line 991
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v14, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 992
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 995
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 997
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 998
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v7, v14

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    .line 950
    .end local v3    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v11    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .end local v12    # "nalLengthData":[B
    .end local v13    # "nalUnitLengthFieldLength":I
    .end local v14    # "nalUnitLengthFieldLengthDiff":I
    .end local v18    # "sampleIndex":I
    .end local v19    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .restart local v2    # "bytesToSkip":I
    .restart local v10    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .restart local v16    # "nextDataPosition":J
    :cond_6
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v8, "Offset to sample data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 962
    .end local v2    # "bytesToSkip":I
    .end local v10    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v16    # "nextDataPosition":J
    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_1

    .line 1001
    .restart local v3    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .restart local v11    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .restart local v12    # "nalLengthData":[B
    .restart local v13    # "nalUnitLengthFieldLength":I
    .restart local v14    # "nalUnitLengthFieldLengthDiff":I
    .restart local v18    # "sampleIndex":I
    .restart local v19    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v20

    .line 1002
    .local v20, "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v20

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1003
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v7, v7, v20

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto/16 :goto_2

    .line 1007
    .end local v12    # "nalLengthData":[B
    .end local v13    # "nalUnitLengthFieldLength":I
    .end local v14    # "nalUnitLengthFieldLengthDiff":I
    .end local v20    # "writtenBytes":I
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_a

    .line 1008
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v20

    .line 1009
    .restart local v20    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v20

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    .line 1013
    .end local v20    # "writtenBytes":I
    :cond_a
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v4, v22, v24

    .line 1014
    .local v4, "sampleTimeUs":J
    iget-boolean v7, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_e

    const/high16 v7, 0x40000000    # 2.0f

    :goto_4
    iget-object v8, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v8, v8, v18

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_5
    or-int v6, v7, v8

    .line 1016
    .local v6, "sampleFlags":I
    iget-object v7, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v15, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1017
    .local v15, "sampleDescriptionIndex":I
    const/4 v9, 0x0

    .line 1018
    .local v9, "encryptionKey":[B
    iget-boolean v7, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_b

    .line 1019
    iget-object v7, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v7, :cond_10

    iget-object v7, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 1023
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    if-eqz v7, :cond_c

    .line 1024
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v7, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v4

    .line 1026
    :cond_c
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1029
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v8, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    move/from16 v21, v0

    aget v8, v8, v21

    if-ne v7, v8, :cond_d

    .line 1032
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1033
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v8, 0x0

    iput v8, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1034
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1036
    :cond_d
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1037
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v6    # "sampleFlags":I
    .end local v9    # "encryptionKey":[B
    .end local v15    # "sampleDescriptionIndex":I
    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    goto :goto_5

    .line 1019
    .restart local v6    # "sampleFlags":I
    .restart local v9    # "encryptionKey":[B
    .restart local v15    # "sampleDescriptionIndex":I
    :cond_10
    move-object/from16 v0, v19

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v7, v7, v15

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    goto :goto_6
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 1138
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 1127
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    const/4 v3, 0x0

    .line 187
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 188
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 190
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 191
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 194
    .end local v0    # "bundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 228
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 217
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, -0x1

    goto :goto_1

    .line 222
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 198
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 199
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 200
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 203
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 204
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

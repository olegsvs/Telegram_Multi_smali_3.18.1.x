.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final LANGUAGE_UNDEFINED:Ljava/lang/String; = "und"

.field private static final SHORT_TYPE_ALBUM:I

.field private static final SHORT_TYPE_ARTIST:I

.field private static final SHORT_TYPE_COMMENT:I

.field private static final SHORT_TYPE_COMPOSER_1:I

.field private static final SHORT_TYPE_COMPOSER_2:I

.field private static final SHORT_TYPE_ENCODER:I

.field private static final SHORT_TYPE_GENRE:I

.field private static final SHORT_TYPE_LYRICS:I

.field private static final SHORT_TYPE_NAME_1:I

.field private static final SHORT_TYPE_NAME_2:I

.field private static final SHORT_TYPE_YEAR:I

.field private static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I

.field private static final TYPE_COMPILATION:I

.field private static final TYPE_COVER_ART:I

.field private static final TYPE_DISK_NUMBER:I

.field private static final TYPE_GAPLESS_ALBUM:I

.field private static final TYPE_GENRE:I

.field private static final TYPE_GROUPING:I

.field private static final TYPE_INTERNAL:I

.field private static final TYPE_RATING:I

.field private static final TYPE_SORT_ALBUM:I

.field private static final TYPE_SORT_ALBUM_ARTIST:I

.field private static final TYPE_SORT_ARTIST:I

.field private static final TYPE_SORT_COMPOSER:I

.field private static final TYPE_SORT_TRACK_NAME:I

.field private static final TYPE_TEMPO:I

.field private static final TYPE_TRACK_NUMBER:I

.field private static final TYPE_TV_SHOW:I

.field private static final TYPE_TV_SORT_SHOW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string/jumbo v0, "nam"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    const-string/jumbo v0, "trk"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    const-string/jumbo v0, "cmt"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    const-string/jumbo v0, "day"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    const-string/jumbo v0, "ART"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    const-string/jumbo v0, "too"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    const-string/jumbo v0, "alb"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    const-string/jumbo v0, "com"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    const-string/jumbo v0, "wrt"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    const-string/jumbo v0, "lyr"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    const-string/jumbo v0, "gen"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    const-string/jumbo v0, "covr"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    const-string/jumbo v0, "gnre"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    const-string/jumbo v0, "grp"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    const-string/jumbo v0, "disk"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    const-string/jumbo v0, "trkn"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    const-string/jumbo v0, "tmpo"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    const-string/jumbo v0, "cpil"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    const-string/jumbo v0, "aART"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    const-string/jumbo v0, "sonm"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    const-string/jumbo v0, "soal"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    const-string/jumbo v0, "soar"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    const-string/jumbo v0, "soaa"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    const-string/jumbo v0, "soco"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    const-string/jumbo v0, "rtng"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    const-string/jumbo v0, "pgap"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    const-string/jumbo v0, "sosn"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    const-string/jumbo v0, "tvsh"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    const-string/jumbo v0, "----"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Blues"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Classic Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .local v0, "atomSize":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .local v1, "atomType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v3, v0, -0x10

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    const-string/jumbo v4, "und"

    invoke-direct {v3, v4, v2, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, "MetadataUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse comment attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static parseCoverArt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    .locals 10
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .local v0, "atomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .local v1, "atomType":I
    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v7, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .local v3, "fullVersionInt":I
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    .local v2, "flags":I
    const/16 v7, 0xd

    if-ne v2, v7, :cond_0

    const-string/jumbo v4, "image/jpeg"

    .local v4, "mimeType":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_2

    const-string/jumbo v7, "MetadataUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized cover art flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "flags":I
    .end local v3    # "fullVersionInt":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_1
    return-object v6

    .restart local v2    # "flags":I
    .restart local v3    # "fullVersionInt":I
    :cond_0
    const/16 v7, 0xe

    if-ne v2, v7, :cond_1

    const-string/jumbo v4, "image/png"

    goto :goto_0

    :cond_1
    move-object v4, v6

    goto :goto_0

    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v0, -0x10

    new-array v5, v7, [B

    .local v5, "pictureData":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {p0, v5, v7, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v7, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v6, v8, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v6, v7

    goto :goto_1

    .end local v2    # "flags":I
    .end local v3    # "fullVersionInt":I
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "pictureData":[B
    :cond_3
    const-string/jumbo v7, "MetadataUtil"

    const-string/jumbo v8, "Failed to parse cover art attribute"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static parseIlstElement(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    .locals 8
    .param p0, "ilst"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .local v1, "position":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int v0, v1, v5

    .local v0, "endPosition":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .local v3, "type":I
    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v4, v5, 0xff

    .local v4, "typeTopByte":I
    const/16 v5, 0xa9

    if-eq v4, v5, :cond_0

    const v5, 0xfffd

    if-ne v4, v5, :cond_c

    :cond_0
    const v5, 0xffffff

    and-int v2, v3, v5

    .local v2, "shortType":I
    :try_start_0
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    if-ne v2, v5, :cond_1

    invoke-static {v3, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .end local v2    # "shortType":I
    :goto_0
    return-object v5

    .restart local v2    # "shortType":I
    :cond_1
    :try_start_1
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    if-eq v2, v5, :cond_2

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    if-ne v2, v5, :cond_3

    :cond_2
    const-string/jumbo v5, "TIT2"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_3
    :try_start_2
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    if-eq v2, v5, :cond_4

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    if-ne v2, v5, :cond_5

    :cond_4
    const-string/jumbo v5, "TCOM"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_5
    :try_start_3
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    if-ne v2, v5, :cond_6

    const-string/jumbo v5, "TDRC"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_6
    :try_start_4
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    if-ne v2, v5, :cond_7

    const-string/jumbo v5, "TPE1"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_7
    :try_start_5
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    if-ne v2, v5, :cond_8

    const-string/jumbo v5, "TSSE"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_8
    :try_start_6
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    if-ne v2, v5, :cond_9

    const-string/jumbo v5, "TALB"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_9
    :try_start_7
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    if-ne v2, v5, :cond_a

    const-string/jumbo v5, "USLT"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_a
    :try_start_8
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    if-ne v2, v5, :cond_b

    const-string/jumbo v5, "TCON"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_b
    :try_start_9
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    if-ne v2, v5, :cond_1d

    const-string/jumbo v5, "TIT1"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    .end local v2    # "shortType":I
    :cond_c
    :try_start_a
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    if-ne v3, v5, :cond_d

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_d
    :try_start_b
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    if-ne v3, v5, :cond_e

    const-string/jumbo v5, "TPOS"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_e
    :try_start_c
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    if-ne v3, v5, :cond_f

    const-string/jumbo v5, "TRCK"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_f
    :try_start_d
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    if-ne v3, v5, :cond_10

    const-string/jumbo v5, "TBPM"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v5, p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZZ)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_10
    :try_start_e
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    if-ne v3, v5, :cond_11

    const-string/jumbo v5, "TCMP"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v3, v5, p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZZ)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_11
    :try_start_f
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    if-ne v3, v5, :cond_12

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_12
    :try_start_10
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    if-ne v3, v5, :cond_13

    const-string/jumbo v5, "TPE2"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_13
    :try_start_11
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    if-ne v3, v5, :cond_14

    const-string/jumbo v5, "TSOT"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_14
    :try_start_12
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    if-ne v3, v5, :cond_15

    const-string/jumbo v5, "TSO2"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_15
    :try_start_13
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    if-ne v3, v5, :cond_16

    const-string/jumbo v5, "TSOA"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_16
    :try_start_14
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    if-ne v3, v5, :cond_17

    const-string/jumbo v5, "TSOP"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_17
    :try_start_15
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    if-ne v3, v5, :cond_18

    const-string/jumbo v5, "TSOC"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_18
    :try_start_16
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    if-ne v3, v5, :cond_19

    const-string/jumbo v5, "ITUNESADVISORY"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZZ)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_19
    :try_start_17
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    if-ne v3, v5, :cond_1a

    const-string/jumbo v5, "ITUNESGAPLESS"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZZ)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_1a
    :try_start_18
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    if-ne v3, v5, :cond_1b

    const-string/jumbo v5, "TVSHOWSORT"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_1b
    :try_start_19
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    if-ne v3, v5, :cond_1c

    const-string/jumbo v5, "TVSHOW"

    invoke-static {v3, v5, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_1c
    :try_start_1a
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    if-ne v3, v5, :cond_1d

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_1d
    :try_start_1b
    const-string/jumbo v5, "MetadataUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipped unknown metadata entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v5, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v5
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 8
    .param p0, "type"    # I
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .local v0, "atomSize":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .local v1, "atomType":I
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v5, :cond_1

    const/16 v5, 0x16

    if-lt v0, v5, :cond_1

    const/16 v5, 0xa

    invoke-virtual {p2, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .local v4, "index":I
    if-lez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "description":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "count":I
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "index":I
    :goto_0
    return-object v5

    :cond_1
    const-string/jumbo v5, "MetadataUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse index/count attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static parseInternalAttribute(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 10
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "endPosition"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "domain":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "name":Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, "dataAtomPosition":I
    const/4 v4, -0x1

    .local v4, "dataAtomSize":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-ge v8, p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .local v1, "atomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .local v2, "atomType":I
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v2, v8, :cond_0

    add-int/lit8 v8, v1, -0xc

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    if-ne v2, v8, :cond_1

    add-int/lit8 v8, v1, -0xc

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v2, v8, :cond_2

    move v3, v0

    move v4, v1

    :cond_2
    add-int/lit8 v8, v1, -0xc

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    :cond_3
    const-string/jumbo v8, "com.apple.iTunes"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "iTunSMPB"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, -0x1

    if-ne v3, v8, :cond_5

    :cond_4
    const/4 v8, 0x0

    :goto_1
    return-object v8

    :cond_5
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v8, 0x10

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v4, -0x10

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    const-string/jumbo v9, "und"

    invoke-direct {v8, v9, v6, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static parseStandardGenreAttribute(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 5
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .local v0, "genreCode":I
    if-lez v0, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v3, v3

    if-gt v0, v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v3, v4

    .local v1, "genreString":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    const-string/jumbo v3, "TCON"

    invoke-direct {v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    .end local v1    # "genreString":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    goto :goto_0

    .restart local v1    # "genreString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "MetadataUtil"

    const-string/jumbo v4, "Failed to parse standard genre code"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .local v0, "atomSize":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .local v1, "atomType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v3, v0, -0x10

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v3, p1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, "MetadataUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse text attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZZ)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 4
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p3, "isTextInformationFrame"    # Z
    .param p4, "isBoolean"    # Z

    .prologue
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .local v0, "value":I
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    const-string/jumbo v2, "und"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "MetadataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to parse uint8 attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseUint8AttributeValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 3
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .local v0, "atomType":I
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "MetadataUtil"

    const-string/jumbo v2, "Failed to parse uint8 attribute value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

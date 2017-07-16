.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static defaultExtractorClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    monitor-enter v2

    .line 49
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    if-nez v1, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v0, "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :try_start_1
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.mkv.MatroskaExtractor"

    .line 57
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    :try_start_2
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.mp4.FragmentedMp4Extractor"

    .line 64
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_1
    :try_start_3
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.mp4.Mp4Extractor"

    .line 71
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :goto_2
    :try_start_4
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.mp3.Mp3Extractor"

    .line 78
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :goto_3
    :try_start_5
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.ts.AdtsExtractor"

    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :goto_4
    :try_start_6
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.ts.Ac3Extractor"

    .line 92
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :goto_5
    :try_start_7
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.ts.TsExtractor"

    .line 99
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 105
    :goto_6
    :try_start_8
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.flv.FlvExtractor"

    .line 106
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 112
    :goto_7
    :try_start_9
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.ogg.OggExtractor"

    .line 113
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 119
    :goto_8
    :try_start_a
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.ts.PsExtractor"

    .line 120
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 126
    :goto_9
    :try_start_b
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.extractor.wav.WavExtractor"

    .line 127
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 133
    :goto_a
    :try_start_c
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.flac.FlacExtractor"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 139
    :goto_b
    :try_start_d
    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    .line 141
    .end local v0    # "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :cond_0
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v1

    .line 136
    .restart local v0    # "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :catch_0
    move-exception v1

    goto :goto_b

    .line 129
    :catch_1
    move-exception v1

    goto :goto_a

    .line 122
    :catch_2
    move-exception v1

    goto :goto_9

    .line 115
    :catch_3
    move-exception v1

    goto :goto_8

    .line 108
    :catch_4
    move-exception v1

    goto :goto_7

    .line 101
    :catch_5
    move-exception v1

    goto :goto_6

    .line 94
    :catch_6
    move-exception v1

    goto :goto_5

    .line 87
    :catch_7
    move-exception v1

    goto/16 :goto_4

    .line 80
    :catch_8
    move-exception v1

    goto/16 :goto_3

    .line 73
    :catch_9
    move-exception v1

    goto/16 :goto_2

    .line 66
    :catch_a
    move-exception v1

    goto/16 :goto_1

    .line 59
    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public createExtractors()[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .locals 5

    .prologue
    .line 146
    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 147
    .local v1, "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 149
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected error creating default extractor"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method
